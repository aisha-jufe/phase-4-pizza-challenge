class RestaurantsController < ApplicationController

    
    def index 
        restaurant = Restaurant.all 

        render json: restaurant, except: [:created_at, :updated_at], status: :ok 

    end

    
    def show 
        begin 
        id = params[:id]
        restaurant = Restaurant.find(id)

        render json: restaurant, except: [:created_at, :updated_at], include: :pizzas

        rescue => e
            render json: { error: "Restaurant not found" }, status: :not_found
        end
    end 


    def destroy
        begin
          restaurant = Restaurant.find(params[:id])
          restaurant.destroy
          render json: { message: "Deleted restaurant" }, status: :ok
        rescue ActiveRecord::RecordNotFound
          render json: { error: "Restaurant not found" }, status: :not_found
        rescue => e
          render json: { error: e.message }, status: :unprocessable_entity
        end
    end
      

end
