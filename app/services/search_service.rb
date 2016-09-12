class SearchService
  def initalize
    @_conn = Faraday.new("https://developer.nrel.gov/api")
  end

  def get_
  private

  def conn
    @_conn
  end

  def api_key
    ENV['NREL_KEY']
  end
end
