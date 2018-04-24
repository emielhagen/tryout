class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    if params[:joke].present?
      api = PunchApiService.new
      user_joke = UserJoke.new(current_user, api)
      @joke = user_joke.joke
    end
  end
end
