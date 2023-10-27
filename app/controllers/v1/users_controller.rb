module V1
  # Controller do manage users in the app
  class UsersController < ApplicationController
    def index
      @users = User.all
    end
  end
end
