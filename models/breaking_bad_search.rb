class BreakingBadSearch
  attr_reader :response

  def initialize
    @response = HTTParty.get("https://www.breakingbadapi.com/api/characters")
  end

end
