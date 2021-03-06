class DishesController < ApplicationController
    before_action :current_dish, only:[:edit, :update, :delete]

    def index
       @dishes = Dish.all
       render json: @dishes
    end

     def new
         @dish = Dish.new
        @errors = flash[:errors]
     end

     def create
         @dish =
         Dish.create(dish_params)
         render json: @dish
     end

     def show
        @dish = Dish.find(params[:id])
        render json: @dish
     end

     def edit
        @dish.update(dish_params)
        render json: @dish
     end

     def delete
         @dish.destroy
         render json: @dish
     end

     private

     def dish_params
         params.permit(:user_id, :location_id, :description, :name, :image)
     end

     def current_dish
         @dish = 
         Dish.find_by(params[:id])
         
     end

end
