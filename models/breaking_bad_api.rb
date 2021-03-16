class BreakingBadAPI

  attr_reader :response

  def initialize
    @response = HTTParty.get("https://breakingbadapi.com/api/characters")
  end

end
