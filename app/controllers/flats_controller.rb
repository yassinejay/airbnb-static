require 'open-uri'
class FlatsController < ApplicationController
  def index
    url = open('https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json')
    json = JSON.parse(url.read)
    @flats = json
  end

  def show
     url = open('https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json')
    json = JSON.parse(url.read)
     # binding.pry
    @flats = json
    @flat = @flats.find { |flat| flat['id'] == params[:id].to_i}
  end
end
