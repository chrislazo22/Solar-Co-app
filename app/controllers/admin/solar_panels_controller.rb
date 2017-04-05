class SolarPanelsController < ApplicationController
  before_action :set_solar_panel, only: [:show, :edit, :update, :destroy]

  def index
    @solar_panels = SolarPanel.all
  end

  def new
    @solar_panel = SolarPanel.new
  end

  def create 
    @solar_panel = SolarPanel.create(solar_panel_params)
    redirect_to @solar_panel
  end

  def show
    @solar_panel = SolarPanel.find(params[:id])
  end

  def destroy
    @solar_panel.destroy 
    respond_to do |format|
      format.html { redirect_to solar_panels_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def edit
  end

  private

  def set_solar_panel
    @solar_panel = SolarPanel.find(params[:id])
  end

  def solar_panel_params
    params.require(:solar_panel).permit(:cell_type, :wattage, :voltage, :image)
  end
end
