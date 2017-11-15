require 'httparty'

class PagesController < ApplicationController
  def home
    url = "http://api.openweathermap.org/data/2.5/weather?q=Miami+Beach,FL&appid=c38d29204353577f04f9a8b861e3c70e"
    response = HTTParty.get(url)
    @weather = JSON.parse(response.body)
    @farenheit = ((@weather["main"]["temp"] * 9) / 5 - 459.67).round(2)
  end
end
