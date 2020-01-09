class LocationsController < ApplicationController

    before_action :current_location, only:[:edit, :update, :delete]

    def index
       @locations = Location.all
       render json: @locations
    end

     def new
        @location = Location.new
        @errors = flash[:errors]
     end

     def create
         @location =
         Location.create(location_params)
         render json: @location
     end

     def show
        @location = Location.find(params[:id])
     end

     def edit
        @location.update(location_params)
        render json: @location
     end

     def delete
         @location.destroy
         render json: @location
     end

     private

     def location_params
         params.permit(:country, :city, :region)
     end

     def current_location
         @location = 
         Location.find_by(params[:id])
         
     end
     
end
