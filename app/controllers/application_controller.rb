class ApplicationController < ActionController::API
  def authenticate_user!
    api_key = request.headers["HTTP_API_KEY"]
    @current_user = User.find_by!(api_key: api_key)
  end

  def current_user
    @current_user
  end

  def forbidden
    render json: { error: "Forbidden", message: "You are not authorized to do this" }, status: :forbidden
  end
end
