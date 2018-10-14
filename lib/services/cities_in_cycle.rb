require "httparty"
require "json"

class CitiesInCycle
  include HTTParty # all methods from httparty are now available
  attr_accessor :results

  def get_results(lat, lon, cnt)
    @api_key = ENV["WEATHER_API_KEY"]
    @results = JSON.parse(self.class.get("http://api.openweathermap.org/data/2.5/find?lat=#{lat}&lon=#{lon}5&cnt=#{cnt}&APPID=#{@api_key}").body)
  end


end # class
