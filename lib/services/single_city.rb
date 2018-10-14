require "httparty"
require "json"

class SingleCity
  include HTTParty # all methods from httparty are now available
  attr_accessor :results

  def get_results(cityname)
    @api_key = ENV["WEATHER_API_KEY"]
    @results = JSON.parse(self.class.get("http://api.openweathermap.org/data/2.5/weather?q=#{cityname}&APPID=#{@api_key}").body)
  end



end # class
