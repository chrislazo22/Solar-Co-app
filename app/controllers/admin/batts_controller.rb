module Admin
  class BattsController < ApplicationController
    before_action :set_batt, only: [:show, :edit, :update, :destroy]

    def index
      @batts = Batt.all
    end

    def new
      @batt = Batt.new
    end

    def show
      @batt = Batt.find(params[:id])
    end

    def create
      @batt = Batt.create(batt_params)
      redirect_to admin_batts_path
    end

    def destroy
      @batt.destroy
      respond_to do |format|
        format.html { redirect_to batts_url, notice: 'Product was successfully destroyed.' }
     end
    end

    private 

    def batt_params
      params.require(:batt).permit(:batt_type, :batt_voltage, :batt_ah, :image)
    end

    def set_batt
      @batt = Batt.find(params[:id])
    end
  end
end

