class CalculatorsController < ApplicationController
helper_method :min_sys_size, :rec_sys_size, :rec_batt_size

  def home
  end

  def show
    @watts = params[:watts].to_i
    @run_time = params[:run_time].to_i
    @mod_eff = params[:mod_eff].to_f / 100
    @sun_hours = params[:sun_hours].to_f
  end

  def min_sys_size
    @min = (@watts * @run_time) / @sun_hours
  end

  def rec_sys_size
    @rec = @min / @mod_eff
  end

  def rec_batt_size
    @batt = (@rec * @sun_hours) * 0.13333
  end
end
