class ApplicationController < ActionController::API
  rescue_from StandardError do
    render json: { error: 'Application error' }, status: :internal_server_error
  end
  rescue_from ActiveRecord::RecordNotFound do
    # Need to change to JSON-API spec using a common serializer
    # https://jsonapi.org/format/#errors
    render json: { error: 'Resource not found' }, status: :not_found
  end
end
