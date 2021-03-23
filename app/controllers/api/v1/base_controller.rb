class Api::V1::BaseController < ActionController::API

  private

  def not_found(exception)
    render json: { error: exception.message }, status: :not_found
  end
end
