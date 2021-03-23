BreakingBadAPI.new.response.each{|character_hash| Character.new(character_hash)}

spongebob = User.find_or_create("Spongebob Squarepants")
walt = Character.all.first
walt.add_message("Happy teacher appreciation day", spongebob)
walt.add_message("Keep grinding!", spongebob)
walt.add_message("Hi there!", spongebob)
