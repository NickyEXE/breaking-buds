class CLI

  attr_reader :user

  def initialize
    BreakingBadSearch.new.response.each{|character| Character.new(character)}
    @prompt = TTY::Prompt.new
    menu
  end

  def menu
    if logged_in?
      main_menu_options
    else
      login
    end
  end

  def main_menu_options
    response = @prompt.select("What would you like to do?", ["See All Characters"])
    case response
      when "See All Characters"
        select_characters(Character.all)
    end
  end

  def select_characters(characters)
    response = @prompt.select("Which character would you like to learn about?", characters.map{|char| char.name})
    binding.pry
  end

  private

  def logged_in?
    !!@user
  end

  def login
    username = @prompt.ask("What's your username?")
    @user = User.find_or_create_by_username(username)
    menu
  end

  def logout
    @user = nil
  end
end
