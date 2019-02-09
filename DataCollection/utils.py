''' Created by Manobhav Jain 1/29/2019 '''

import pandas as pd
from selenium import webdriver
from selenium.webdriver.support.ui import Select
from selenium.common.exceptions import NoSuchElementException
from .models import PoliceStation, Fir
import requests
from PIL import Image
import pytesseract
from wand import image
from .constants import *
import datetime
import logging
from django.db import IntegrityError

logger=logging.getLogger(__name__)

def extractPsId(firlink):
    return firlink.split('=')[1][0:13]

class SetId:

    def __init__(self):
        try:
            self.driver = webdriver.Firefox()
            self.driver.get(WEBSITE_ID)
            self.selectDistrict = Select(self.driver.find_element_by_id(DISTRICT_ELEMENT_ID))
            self.selectStation = Select(self.driver.find_element_by_id(PS_ELEMENT_ID))
            self.firInput = self.driver.find_element_by_id(FIRINPUT_ELEMENT_ID)
        except Exception as e:
            logger.error(str(e))
            raise e


    def getSelectedOption(self,id):
        select = Select(self.driver.find_element_by_id(id))
        selected_option = select.first_selected_option
        return selected_option.text

    def setPsId(self, district_name,countPS):
        for j in range(1, countPS):
            self.selectStation.select_by_index(j)
            ps_name = self.getSelectedOption(PS_ELEMENT_ID)
            ps=PoliceStation(name=ps_name, district=district_name)


            for element in FIR_ARRAY:
                self.firInput.send_keys(element)  # search for FIR
                self.driver.find_element_by_id(SEARCH_BUTTON).click()
                self.driver.implicitly_wait(2)
                try:
                    firlink = self.driver.find_element_by_id(FIRLINK_ELEMENT_ID).get_attribute('href')
                    ps.last_fir_id=extractPsId(firlink)
                    ps.save()
                    logger.debug(firlink)
                    break
                except IntegrityError as e:
                    logger.debug("Police station exists")
                    break
                except NoSuchElementException:
                    logger.debug("Fir not found")
                    self.firInput.clear()
            self.firInput.clear()



    def setDistrictId(self):
        for i in range(1, len(self.selectDistrict.options)):
            try:
                self.selectDistrict.select_by_index(i)
                district_name = self.getSelectedOption(DISTRICT_ELEMENT_ID)
                countPS = len(self.selectStation.options)
                if countPS > 1:
                    try:
                        self.setPsId(district_name,countPS)
                    except Exception as e:
                        logger.error(str(e))
            except Exception as e:
                logger.error(str(e))


def cleanData(key, value):
    if key in ['date', 'time', 'section','psdate','pstime']:
        value=value.replace(" ", "")\
            .replace("l", "/")\
            .replace("hrs", "")\
            .replace("N", "A/")\
            .replace("Z","2")
    if key=='address':
        value=value.replace("(", "C")\
            .replace("|","I")

    if key in ['date', 'psdate']:
        try:
            value = datetime.datetime.strptime(value, "%d/%m/%Y")
        except Exception as e:
            print(str(e))
    return value



def getAllCharge(section_string):
    off_ref = pd.read_csv(OFFENCE_DIRECTORY_PATH)
    off_ref = off_ref[~off_ref.Offence.isnull()]
    off_ref.Section = off_ref.Section.astype('str')
    charges = set()

    sections = section_string.split("/")
    for section in sections:
        section = section.replace("(", "").replace(")", "").replace("O", "0")

        if len(off_ref[off_ref.Section == section]) > 0:
            charges.add(off_ref[off_ref.Section == section].loc[:, "Offence"].values[0])
    if len(charges)==0:
        charges.add("Section not detected")

    return sorted(charges)

def getFinalCharge(sorted_charges):
    final_charge = ("-").join(sorted_charges)
    for charge in SERIOUS_CHARGES:
        if charge in sorted_charges:
            final_charge = charge
    return final_charge


def getCharge(section_string):

    sorted_charges=getAllCharge(section_string)

    return ("-").join(sorted_charges), getFinalCharge(sorted_charges)

def extractValue(img, key, val):
    img2 = img.crop(val)
    extracted_val = pytesseract.image_to_string(img2)
    cleaned_val = cleanData(key, extracted_val)
    print(cleaned_val)
    return cleaned_val


def getFirKey(img, key, val):
    value=extractValue(img, key, val)
    if "Distance" in value:
        return FIR_KEY2, PSDATE2, PSTIME2
    return FIR_KEY, PSDATE, PSTIME



def extractFirData(current_fir_id):

    img = Image.open('temp.jpg')
    datum={}
    datum['link']=makeUrl(current_fir_id)
    datum['firno']= current_fir_id

    fir_key,ps_date, ps_time=getFirKey(img,"address", ADDRESS_KEY)
    for (key, val) in fir_key.items():
        datum[key] = extractValue(img,key, val)
        if key=='section':
            datum['all_charge'], datum['final_charge'] = getCharge(datum[key])
            print(datum['final_charge'])

    if datum['date']=='':
        datum['date']=extractValue(img,'psdate',ps_date)
    if datum['time']=='':
        datum['time']=extractValue(img,'pstime',ps_time)

    return datum



def makeUrl(current_fir_id):
    return FIR_URL+str(current_fir_id)



def saveTempFir(response):
    if response.content.__len__() < 20:
        return False

    with open("temp.pdf", 'wb') as f2:
        f2.write(response.content)

    with image.Image(
            filename="temp.pdf" + "[0]",
            resolution=500) as img:
        img.save(filename="temp.jpg")
    print("temp saved")
    return True

def downloadFir(current_fir_id):
    print(current_fir_id)
    url = makeUrl(current_fir_id)
    response = requests.get(url)
    return saveTempFir(response)


def downloadFirs():
    for ps in PoliceStation.objects.all():
        print(ps.name)
        c=0
        while (c < 3):
            if downloadFir(ps.last_fir_id):
                data = extractFirData(ps.last_fir_id)
                Fir.objects.create(**data, police_station=ps)
                ps.last_fir_id = str(int(ps.last_fir_id)+ 1)
                ps.save()
            else:
                c= c + 1












