class FuelStation

  def initialize(station)
  end

  def self.service
    service = FuelStationService.new
  end

  def self.search_by_zip(params)
    stations_hash = service.get_nearby_stations(params)
    stations_hash.map do |station|
      FuelStation.new(station)
    end
  end
end
