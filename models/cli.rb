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
    if @user
      input = @prompt.enum_select("What would you like to do, #{@user.username}?", ["See All Characters", "Logout", "Exit"])
      case input
      when "See All Characters"
        show_characters(Character.all)
      when "Logout"
        logout
      when "Exit"
        exit_app
      end
    else
      prompt_login
      menu
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

  def prompt_login
    username = @prompt.ask("What's your username?")
    @user = User.find_or_create(username)
  end

  def character_menu
    input = @prompt.enum_select("What would you like to do?", [
      "See Messages",
      "Add Message",
      "See #{character.name}'s Details",
      "See All Characters",
      "Logout",
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
      when "Logout"
        logout
      when "Exit"
        exit_app
      end
  end

  def logout
    @user = nil
    menu
  end

  def exit_app
    puts "Thanks for helping our Breaking Bad Besties get Back on their Feet"
  end

end
