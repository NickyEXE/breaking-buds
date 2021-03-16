class BreakingBadSearch
  attr_reader :response

  def initialize
    @response = HTTParty.get("https://www.breakingbadapi.com/api/characters")
    populate
  end

  def populate
    @response.each{|character| Character.new(character)}
  end


end
