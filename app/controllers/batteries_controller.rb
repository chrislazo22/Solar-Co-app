class BatteriesController < ApplicationController
  def index
  end

  def new
    @battery = Battery.new
  end
end
