class CLI
  def call
    puts "\nWelcome to the Bob's Burgers Character Wiki"
    puts "=========================================="
    puts "\nHere is the complete list of all characters in the Bob's Burgers Tv Show!\n"
    start
  end

 def start
      input = nil
      display_characters
      while input != "q" 
        input = gets.strip
        if input.to_i > 0 && input.to_i < 507
          display_char_details(input)
          options
        elsif input == "b"
          display_characters
        elsif input == "q"
          goodbye
        else
        puts "Invalid entry, please enter your choice again, enter 'b' to see the character list or enter 'q' to quit."
        end
      end
    end

  def display_characters
    Character.list_all_characters
    puts "\nPlease enter the number for the character you'd like details on or enter 'q' to quit: "
  end

  def display_char_details(input_id)
    character_details = Character.get_character_details(input_id)
    puts "Character name = #{character_details.name}"
    puts "Character gender = #{character_details.gender}"
  end


  def options
    puts "Enter a new character number, type 'b' to return to the list of characters or 'q' to quit:"
  end

  def goodbye
    puts "Thank you for using the Bob's Burgers Character Wiki. We hope to see you again soon!.\n "
  end

end