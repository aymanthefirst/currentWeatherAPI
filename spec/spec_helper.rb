require 'rspec'
require_relative '../lib/weatherio'
require "dotenv"
require "httparty"

RSpec.configure do |config|
  config.color = true
  config.formatter = :documentation
end
