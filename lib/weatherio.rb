require "httparty"
require "json"
require_relative "services/single_city.rb"
require_relative "services/multiple_cities.rb"
require_relative "services/post_code.rb"
require_relative "services/cities_in_cycle.rb"
require "dotenv"

class Weatherio

Dotenv.load ".env"

  def single_city
    SingleCity.new
  end

  def multiple_cities
    MultipleCities.new
  end

  def post_code
    PostCode.new
  end

  def cities_in_cycle
    CitiesInCycle.new
  end

  def isFloatOrIntiger(result)
       result.is_a? Float
       # when more time is available, add this functionality incase number is Integer
       # result.is_a? Float || result.is_a? Integer
  end

end # class
