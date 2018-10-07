# Was named users_controller.rb just in case
class UsersController < ApplicationController
    before_action :authenticate_user!

    def show
    end

    # PATCH /users/1
    def update
        if current_user.update_attributes(user_params)
            render :show
        else
            render json: { errors: current_user.errors }, status: :unprocessable_entity
    end

    # PATCH/PUT /users
    def create
        user = User.new(user_params)
        if @user.save
            render :show
        else
            render json: { errors: @current_user.errors }, status: :unprocessable_entity
        end
    end

    private

    def user_params
        params.require(:user).permit(:name, :email, :password, )
    end
  end