import requests
import json

GEOCODING_KEY="AIzaSyBjS9_-orNS7CrEdNzJLLV-mrGsNsqVasQ"
GEOCODING_BASE_URL="https://maps.googleapis.com/maps/api/geocode/json?"
def checkAddress(self):
    # self.cities = self.frame.City[self.frame.City.isnull() == False].unique().tolist()
    for c in self.frame.iloc[self.start:self.end].address.unique():
        if c != "" and "KNOWN" not in c:
            self.q.put(c)


def getLongLat(address):
    resultdict = {}
    resultdict['address'] = address
    payload = {'address': address, 'key': GEOCODING_KEY}
    jsonstring = requests.get(GEOCODING_BASE_URL, payload).text

    jsondict = json.loads(jsonstring)

    if jsondict['status'] == 'OK':
        resultdict['Lat'] = jsondict['results'][0]['geometry']['location']['lat']
        resultdict['Long'] = jsondict['results'][0]['geometry']['location']['lng']
        resultdict['Formatted_address'] = jsondict['results'][0]['formatted_address']

    return resultdict
