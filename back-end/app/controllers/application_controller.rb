class ApplicationController < ActionController::API
  include ActionController::Cookies
  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
  rescue_from ActiveRecord::RecordInvalid, with: :invalid_record
  
  def auth_header
    request.headers['Authorization']
  end

  def encoded_token(payload)
    JsonWebToken.encode(payload)
  end
  
  def decoded_token
    if auth_header
      token = auth_header.split(' ')[1]
      begin
        JWT.decode(token, 'secret', true, algorithm: 'HS256')
      rescue JWT::DecodeError
        nil
      end
    end
  end
  
  def logged_in_user
    if decoded_token
      user_id = decoded_token[0]['user_id']
      @user = User.find_by(id: user_id)
    end
  end
  
  def logged_in?
    !!logged_in_user
  end
  
  def authorized
    render json: { message: 'Please log in' }, status: :unauthorized unless logged_in?
  end

  private

  # def current_user
  #   User.find_by_id(session[:user_id])
  # end

  # def record_not_found(errors)
  #   render json: errors.message, status: :not_found
  # end

  # def invalid_record(invalid)
  #   render json: invalid.record.errors, status: :unprocessable_entity
  # end
end
  
