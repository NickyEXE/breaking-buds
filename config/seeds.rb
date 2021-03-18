BreakingBadAPI.new.response.each{|character_hash| Character.new(character_hash)}

user = User.find_or_create_by_username("Gus Fring")

Character.all.first.write_message("You can do it!", user)
Character.all.first.write_message("You inspired me as a chem teacher!!!", user)
Character.all.first.write_message("Get that bread!", user)
