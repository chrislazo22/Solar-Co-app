module ProductsPage 
  class ModifiersController < ApplicationController
    def index
      @modifiers = Modifier.all
    end

    def show
      @modifier = Modifier.find(params[:id])
    end
  end
end

