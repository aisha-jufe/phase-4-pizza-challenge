class RestaurantPizzasController < ApplicationController

    def create 
        new_restaurant = RestaurantPizza.create(restaurant_pizza_params)
        pizza = Pizza.find_by(id: new_restaurant.pizza_id)

        if new_restaurant.valid?
            render json: pizza, except: [:created_at, :updated_at], status: :created
        else
            render json: { error: new_restaurant.errors.full_messages }, status: :unprocessable_entity
        end
    end

    private

    def restaurant_pizza_params
      params.permit(:price, :pizza_id, :restaurant_id)
    end

end
