class UsersController < ApplicationController
  respond_to :json

  def update
    respond_with User.instance.update(user_params)
  end

  private

  def user_params
    params.permit(:github_access_token)
  end
end