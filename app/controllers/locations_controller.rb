class LocationsController < ApplicationController
  def index
    @locations = Location.all
  end

  def list
    puts "hello"
    binding.pry
  end

  def show

  end
end
