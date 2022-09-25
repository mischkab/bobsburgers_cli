class CLI
  def call
    puts "Welcome to the Bob's Burgers Character Wiki"
    puts "=========================================="
    start
  end

  # define main game function
  def start
    puts "Welcome to the Bob's Burger Character App!"
    puts "=========================================="
    puts

    puts "Here is the complete list of all characters in the best tv show!"

    Character.get_all_characters.each do |character|
      puts "Character name = #{character.name}"
      puts "Character id = #{character.id}"
      puts
    end

    print "Enter an id to get more details: "
    character_id = gets.chomp
    puts

    character_details = Character.get_character_details(character_id)
    puts "Character name = #{character_details.name}"
    puts "Character gender = #{character_details.gender}"
  end

end