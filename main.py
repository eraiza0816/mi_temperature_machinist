from lywsd02 import Lywsd02Client

#home
home_macaddr = 'a4:c1:38:a1:81:ca'
client = Lywsd02Client(home_macaddr, notification_timeout=30.0)
with client.connect():
    data = client.data
    print(data.temperature)
#    print(data.humidity)
#    print(client.battery)
