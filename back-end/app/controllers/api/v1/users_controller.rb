module Api
  module V1
    class Api::V1::UsersController < ApplicationController
      include CurrentUserConcern

      def index
        users = User.all
        render json: @users
      end

      def show
        if current_user
          render json: current_user, status: :ok
        else
          render json: { errors: "User not found" }, status: :not_found
        end
      end

      def create
        user = User.create(user_params)
        if user.valid?
          session[:user_id] = user.id
          render json: user, status: :ok
        else
          render json: "No se a Iniciado Sesión", status: :unauthorized
        end
      end

      def update

    end
  end
end
