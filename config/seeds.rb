BreakingBadAPI.new.response.each{|character_hash| Character.new(character_hash)}

Character.all.first.write_message("You can do it!")
Character.all.first.write_message("You inspired me as a chem teacher!!!")
Character.all.first.write_message("Get that bread!")
