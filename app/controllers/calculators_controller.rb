class CalculatorsController < ApplicationController

  def index
    @watts = params[:watts].to_i
    @run_time = params[:run_time].to_i
    @mod_eff = params[:mod_eff].to_f / 100
    @sun_hours = params[:sun_hours].to_f
  end

  def show

  end

  def min_sys_size
      @min = (@watts * @run_time) / @sun_hours
  end
  helper_method :min_sys_size

  def rec_sys_size
    @rec = @min / @mod_eff
  end
  helper_method :rec_sys_size

  def rec_batt_size
    @batt = (@rec * @sun_hours) * 0.13333
  end
  helper_method :rec_batt_size
end
