class RestaurantsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    def index 
        restaurants = Restaurant.all 
        render json: restaurants, status: :created
    end

    def show
        restaurant = Restaurant.find(params[:id])
        render json: restaurant,serializer: RestaurantPizzaSerializer, status: :created
    end

    def destroy 
        restaurant = find_restaurant
        restaurant.destroy
        head :no_content
    end

    private

    def find_restaurant
        Restaurant.find(params[:id])
    end
    

    def render_not_found_response
        render json: { error: "Restaurant not found" }, status: :not_found
    end

end
