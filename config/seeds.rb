BreakingBadAPI.new.response.each{|character_hash| Character.new(character_hash)}

walt = Character.all.first
walt.add_message("Happy teacher appreciation day")
walt.add_message("Keep grinding!")
walt.add_message("Hi there!")
