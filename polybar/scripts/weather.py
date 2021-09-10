#    3-simple-weather  Copyright (C) 2020  BrutalWizard (https://github.com/bru74lw1z4rd).
#    This program comes with ABSOLUTELY NO WARRANTY;
#    This is free software, and you are welcome to redistribute it
#    under certain conditions;

# More info about wether at - https://openweathermap.org/weather-conditions
# To show icons from this script you will need to buy "Font Awesome Pro" font - https://fontawesome.com/
# Also you can change icon in arrays to yours icons

# lindely edit:
#
# Create a weather_settings.py file and define your API key therein:
#   weather_api_key = "YOUR_API_KEY"

import requests
import json
import weather_settings

# Settings
city = "Vriezenveen" # Your town
api_key = weather_settings.weather_api_key
units = "metric" # Unit system {imperial or metric}
temperature_unit = "C" # Units of measurement. That will be showed in UI. Does not affect on API.

# lindely: icons changed to Nerd Font
icons_list = {
    "01d": "", # Clear sky day.
    "01n": "", # Clear sky night.
    "02d": "", # Few clouds day.
    "02n": "", # Few clouds night.
    "03d": "", # Scattered clouds day.
    "03n": "", # Scattered clouds night.
    "04d": "", # Broken clouds day.
    "04n": "", # Broken clouds night.
    "09d": "", # Shower rain day.
    "09n": "", # Shower rain night.
    "10d": "", # Rain day.
    "10n": "", # Rain night
    "11d": "", # Thunderstorm day.
    "11n": "", # Thunderstorm night
    "13d": "", # Snow day. Snowflake alternative: 
    "13n": "", # Snow night. Snowflake alternative: 
    "50d": "", # Mist day.
    "50n": "" # Mist night.
}

atmophere_icons_list = {
    701: "", # Mist
    711: "", # Smoke
    721: "", # Haze
    731: "", # Dust (Sand / dust whirls)
    741: "", # Fog
    751: "", # Sand
    761: "", # Dust
    762: "", # Ash
    771: "", # Squalls
    781: ""  # Tornado
}

def main():
    try:
        # Get data from openweather
        url = ('http://api.openweathermap.org/data/2.5/weather?q={}&units={}&appid={}').format(city, units, api_key)
        result = requests.get(url)

        # If result was received
        if(result.status_code == requests.codes['ok']):
                # Read json
                weather = result.json()

                # Get info from array
                id = int(weather['weather'][0]['id'])
                group = weather['weather'][0]['main'].capitalize()
                icon = weather['weather'][0]['icon'].capitalize()
                temp = int(float(weather['main']['temp']))

                # Load another icons for Atmosphere group
                if(group == "Atmosphere"):
                    return atmophere_icons_list[id] + ' {}°{}'.format(temp, temperature_unit)

                # lindely: add additional spaces (for my own fonts)
                return icons_list[icon] + ' %{F${foreground}' + '  {}°{}'.format(temp, temperature_unit) + '%{F-}'
        else:
            return "" # Return reload icon
    except:
        return "" # Return reload icon

if __name__ == "__main__":
	print(main())
