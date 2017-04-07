module Admin
  class ModifiersController < ApplicationController
    before_action :set_modifier, only: [:show, :edit, :update, :destroy]

    def index
      @modifiers = Modifier.all
    end

    def new
      @modifier = Modifier.new
    end

    def create
      @modifier = Modifier.create(modifier_params)
      redirect_to admin_modifiers_path
    end

    def show
      @modifier = Modifier.find(params[:id])
    end

    def destroy
      @modifier.destroy
      respond_to do |format|
        format.html { redirect_to admin_modifier_path, notice: 'Product was successfully destroyed.' }
     end
    end

    private

    def modifier_params
      params.require(:modifier).permit(:mod_type, :amperage, :image)
    end

    def set_modifier
      @modifier = Modifier.find(params[:id])
    end
  end
end

