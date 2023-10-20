module ResponseHandler
  extend ActiveSupport::Concern

  def delete_success
    render json: { message: "successfully deleted" }
  end

  def render_success(data, status: :ok)
    render json: { success: true, data: data }, status: status
  end

  def render_error(message, status: :unprocessable_entity)
    render json: { success: false, error: message }, status: status
  end
end
