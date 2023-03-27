class UsersController < ApplicationController
    before_action :set_user
  
    def show
      @user = User.all 
      render json: @user, serializer: ShowPostFromUserSerializer
    end

    def create 
      new_user = User.create(:name, :bio, :profile)

      if new_user.valid? 
        render json: new_user.posts 
      else
        render json: { error: new_user.errors.full_messages }, status: :unprocessable_entity
      end

    end
  
    private
    def set_user
      @user = User.find(params[:id])
    end
  end