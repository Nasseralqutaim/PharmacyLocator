class WalgreensService
  include HTTParty

  BASE_URL = 'https://services.walgreens.com/api/stores/search/v2' 

  def initialize; end

  def get_pharmacies(city)
    response = self.class.get("#{https://services.walgreens.com/api/stores/search/v2}", query: { city: city })
    response.parsed_response
  end

end
