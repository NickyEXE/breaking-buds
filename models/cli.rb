class CLI

  def initialize
    @prompt = TTY::Prompt.new
    welcome
    menu
  end

  def welcome
    puts "Welcome to Breaking Buddies, a Support Mechanism for Breaking Bad Baddies"
  end

  def menu
    input = @prompt.enum_select("What would you like to do?", ["See All Characters", "Exit"])
    case input
    when "See All Characters"
      show_characters(Character.all)
    when "Exit"
      logout
    end
  end

  def show_characters(characters)
    input = @prompt.select("Which character would you like to view?", characters.map{|character| character.name})
    character = Character.find_by_name(input)
    character_menu(character)
  end

  def character_menu(character)
    character.print_details
    menu
  end

  def logout
    puts "Thanks for helping our Breaking Bad Besties get Back on their Feet"
  end

end
