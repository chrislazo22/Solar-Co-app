module ProductsPage
  class SolarPanelsController < ApplicationController
    def index      
      @solar_panels = SolarPanel.all
    end

    def show
      @solar_panel = SolarPanel.find(params[:id])
    end
  end
end
