require 'httparty'
class PunchApiService
  include HTTParty

  def request
    HTTParty.get('http://api.icndb.com/jokes/random')['value']['joke']
  end

  def joke
    request
  end
end
