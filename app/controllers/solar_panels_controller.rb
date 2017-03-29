class SolarPanelsController < ApplicationController
  def index
  end

  def new
    @solar_panel = SolarPanel.new
  end
end
