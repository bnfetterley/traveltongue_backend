class CommentsController < ApplicationController
    before_action :current_dish, only:[:edit, :update, :delete]

    def index
       @comments = Comment.all
       render json: @comments
    end

     def new
         @comment = Comment.new
        @errors = flash[:errors]
     end

     def create
         @comment =
         Comment.create(comment_params)
         render json: @comment
     end

     def show
        @comment = Comment.find(params[:id])
     end

     def edit
        @comment.update(dish_params)
        render json: @comment
     end

     def delete
         @comment.destroy
         render json: @comment
     end

     private

     def comment_params
         params.permit(:user_id, :location_id, :content, :dish_id)
     end

     def current_dish
         @comment = 
         Comment.find_by(params[:id])
         
     end

end
