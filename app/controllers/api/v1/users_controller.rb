# module Api
#   module V1
#     class Api::V1::UsersController < ApplicationController
#       # protect_from_forgery unless: -> { request.format.json? }

#       def create
#         @user = User.create(user_params)
        
#         if @user.valid?
#           @token = JWT.encode(user_id: @user.id)

#         else
#           render json: { error: 'failed to create user' }, status: :unprocessable_entity
#         end
#       end

#       private
#       def user_params
#         params.require(:user).permit(:email, :password_digest)
#       end
#     end
#   end
# end
