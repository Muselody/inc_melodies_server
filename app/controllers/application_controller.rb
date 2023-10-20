class ApplicationController < ActionController::API
  def delete_success
    render json: { message: "succesfully deleted" }
  end
end
