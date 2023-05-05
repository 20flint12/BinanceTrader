import requests

# # url = "https://api.privatbank.ua/p24api/pubinfo?json&exchange&coursid=5"      # for branches
# url = "https://api.privatbank.ua/p24api/pubinfo?exchange&json&coursid=11"       # for cards
#
# response = requests.get(url)
#
# if response.status_code == 200:
#     data = response.json()
#     print(data)
#     for item in data:
#         print(f"{item['ccy']}/{item['base_ccy']}: buy - {item['buy']}, sell - {item['sale']}")
# else:
#     print(f"Error fetching exchange rates: {response.status_code}")



import requests

url = "https://api.otpbank.com.ua/ExchangeRates.json"
response = requests.get(url)

if response.status_code == 200:
    data = response.json()
    for item in data['ExchangeRates']:
        if item['FromCurrencyCode'] in ['USD', 'EUR']:
            print(f"{item['FromCurrencyCode']}/{item['ToCurrencyCode']}: buy - {item['Buy']}, sell - {item['Sell']}")
else:
    print(f"Error fetching exchange rates: {response.status_code}")


