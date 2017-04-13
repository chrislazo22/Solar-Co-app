module ProductsPage
  class BatteriesController < ApplicationController
    def index
      @batts = Batt.all
    end

    def show
      @batt = Batt.find(params[:id])
    end
  end
end

