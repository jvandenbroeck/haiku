require 'cobravsmongoose'
require 'open-uri'

class IndexController < ApplicationController

def index
response = open("http://www.randomhaiku.com/haiku.xml").read
@haiku = CobraVsMongoose.xml_to_hash(response)
end

end
