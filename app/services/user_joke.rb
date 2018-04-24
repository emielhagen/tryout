class UserJoke
  def initialize(user, api)
    @user = user
    @api = api
  end

  def joke
    "#{@api.joke}"
  end
end
