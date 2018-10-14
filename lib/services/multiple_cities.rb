require "httparty"
require "json"

class MultipleCities
  include HTTParty # all methods from httparty are now available
  attr_accessor :results

  def get_results(cities)
    @api_key = ENV["WEATHER_API_KEY"]
    @results = JSON.parse(self.class.post("http://api.openweathermap.org/data/2.5/box/city?bbox=#{cities}&APPID=#{@api_key}", :body => {"cities": cities}).body)

  end

end # class
