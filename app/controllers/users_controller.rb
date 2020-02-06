class UsersController < ApplicationController
    before_action  only:[:edit, :update, :delete]

    def index
       @users = User.all
       render json: @users
    end

     def new
         @user = User.new
        @errors = flash[:errors]
     end

     def create
         @user =
         User.create(user_params)
         render json: @user

         if user.valid?
            user = user
            token = JWT.encode({user_id: user.id}, secret, 'HS256')
            render json: {user: user, token: token}
        else
            render json: {errors: user.errors.full_messages}
        end

     end

     def show
        @user = User.find(params[:id])
        render json: @user
     end

     def edit
        @user.update(user_params)
        render json: @user
     end

     def delete
         @user.destroy
         render json: @user
     end

     private

     def user_params
         params.permit(:username, :password)
     end


end
