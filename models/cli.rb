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
    character.print_details
    character_menu(character)
  end

  def character_menu(character)
    input = @prompt.enum_select("What would you like to do?", [
      "Send #{character.name} a message",
      "See #{character.name}'s messages",
      "Go back to main menu",
      "Exit"
    ])
    case input
    when "Send #{character.name} a message"
      add_message(character)
    when "See #{character.name}'s messages"
      character_messages(character)
    when "Go back to main menu"
      menu
    when "Exit"
      logout
    end
  end

  def add_message(character)
    message = @prompt.ask("What would you like to tell #{character.name}?")
    character.write_message(message)
    puts "You wrote: #{message}"
    character_messages(character)
  end

  def character_messages(character)
    puts "People have told #{character.name}:"
    character.print_messages
    sleep(2)
    character_menu(character)
  end

  def logout
    puts "Thanks for helping our Breaking Bad Besties get Back on their Feet"
  end

end
