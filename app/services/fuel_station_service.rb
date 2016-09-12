class FuelStationService

  def initialize
    @_conn = Faraday.new("https://developer.nrel.gov")
    @_conn.headers["X-Api-Key"] = ENV['NREL_KEY']
  end

  def get_nearby_stations(params)
    response = conn.get("/api/alt-fuel-stations/v1/nearest.json") do |request|
      request.params['location'] = params[:zip]
      request.params['limit'] = 10
      request.params['radius'] = 6
      request.params['fuel_type'] = 'ELEC,LPG'
    end
    JSON.parse(response.body)
  end

  private

  def conn
    @_conn
  end
end
