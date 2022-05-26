class Api::V1::SessionsController < ApplicationController
  include CurrentUserConcern

  def create
    user = User.find_by(email: params["user"]["email"])
    if user && user.authenticate(params["user"]["password"])
      session[:user_id] = user.id
      render json: user, status: :ok
    else
      render json: { errors: "Credenciales Invalidas" }, status: :unauthorized
    end
  end

  def logged_in
    if @current_user
      render json: {
        logged_in: true,
        user: @current_user
      }
    else
      render json: {
        logged_in: false
      }
    end
  end

  def logout
    reset_session
    render json: { status: 200, logged_out: true }
  end
end

# def create
#   user = User.find_by(email: params["user"]["email"])
#   .try(:authenticate, params["user"]["password"])

#   if user
#     session[:user_id] = user.id
#     render json: {
#       status: :create,
#       logged_in: true,
#       user: user
#     }
#   else
#     render json: {
#       status: 401
#     }
#   end
# end