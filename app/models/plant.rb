class PlantsController < ApplicationController
    # ...
  
    def update
      plant = Plant.find(params[:id])
      plant.update(plant_params)
      render json: plant
    end
  
    # ...
  
    private
  
    def plant_params
      params.require(:plant).permit(:name, :image, :price, :is_in_stock)
    end
    def destroy
        plant = Plant.find(params[:id])
        plant.destroy
        head :no_content
      end
  end
  