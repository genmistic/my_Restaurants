class RestaurantsController < ApplicationController
 before_action :repetido_restaurant, only: [:show, :edit, :update, :destroy]

    def index
       @restaurants = Restaurant.all
    end
  
    def show
      #@restaurant = Restaurant.find(params[:id])
    end
  
    def new
      @restaurant = Restaurant.new
    end
  
    def create
      @restaurant = Restaurant.new(params[:restaurant]).save
      #@restaurant = Restaurant.new(organizo_params).save
      redirect_to restaurants_path                             
    end
  
    def edit
      #@restaurant = Restaurant.find(params[:id])
    end
  
    def update
      @restaurant = Restaurant.find(params[:id])
      #@restaurant.update(params.require[:restaurant])
      redirect_to restaurant_path(@restaurant) #redijimos a show y pasamos el id en la instancia(@restaurant)

    end
  
    def destroy
      #@restaurant = Restaurant.find(params[:id]) 
      restaurant.destroy
      redirect_to restaurants_path 
    end
  
    private   # metodo privado
    # def seguridad_metodo
    #   params.require(:restaurant).permit(:name, :address, :rating)
    # end

    def repetido_restaurant
      @restaurant = Restaurant.find(params[:id])
    end

end