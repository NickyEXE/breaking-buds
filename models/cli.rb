class CLI

  attr_reader :character

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
    @character = Character.find_by_name(input)
    character.print_details
    character_menu
  end

  def prompt_message
    content = @prompt.ask("What would you like to tell #{character.name}?")
    character.add_message(content)
    puts "You wrote: #{content}"
  end

  def character_menu
    input = @prompt.enum_select("What would you like to do?", [
      "See Messages",
      "Add Message",
      "See #{character.name}'s Details",
      "See All Characters",
      "Exit"
    ])
      case input
      when "See Messages"
        character.print_messages
        character_menu
      when "Add Message"
        prompt_message
        character_menu
      when "See #{character.name}'s Details"
        character.print_details
        character_menu
      when "See All Characters"
        show_characters(Character.all)
      when "Exit"
        logout
      end
  end

  def logout
    puts "Thanks for helping our Breaking Bad Besties get Back on their Feet"
  end

end
