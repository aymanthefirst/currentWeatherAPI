require "httparty"
require "json"

class PostCode
  include HTTParty # all methods from httparty are now available
  attr_accessor :results

  def get_results(postCode)
    @api_key = ENV["WEATHER_API_KEY"]
    @results = JSON.parse(self.class.get("http://api.openweathermap.org/data/2.5/weather?zip=#{postCode}&APPID=#{@api_key}").body)
  end

end # class
