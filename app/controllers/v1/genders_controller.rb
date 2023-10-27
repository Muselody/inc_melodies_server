module V1
  # Controller for genders
  class GendersController < ApplicationController
    def index
      @genders = Gender.all
    end

    def create
      @gender = Gender.new(gender_params)
      if @gender.save
        render_success(@gender)
      else
        render_error("Can't create a gender")
      end
    end

    private

    def set_gender
      @gender = Gender.find(params[:hashid])
    end

    def gender_params
      params.require(:gender).permit(:name)
    end
  end
end
