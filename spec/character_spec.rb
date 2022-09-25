require_relative './spec_helper'

RSpec.describe Character, "#initialize" do
    it "initializes a new object of the Character class with the given attributes" do
      #arrange
      attributes =  {
        id: "40",
        name: "Bernadette Baker",
        gender: "Female",
        hair_color: "Brown",
        occupation: "Astronaut (former)",
        first_episode: "\"The Grand Mama-pest Hotel\"",
        voiced_by: "Jenny Slate",
        wiki_url: "https://bobs-burgers.fandom.com/wiki/Bernadette_Baker",
    }

      #act
      bernadette_baker = Character.new(attributes)

      #assert
      expect(bernadette_baker.name).to eq "Bernadette Baker"
    end
  end  

RSpec.describe Character, "#get_all_characters" do
  it "fetches the list of all Bob's Burgers characters" do
    #arrange not required

    #act
    characters = Character.get_all_characters

    #assert
    expect(characters.length).to be > 0
    characters.each do |character|
      expect(character).to be_a_kind_of Character
    end
  end
end

RSpec.describe Character, "#get_character_details" do
  it "fetches the details of a character given an id" do
    #arrange not required

    #act
    character = Character.get_character_details(40)

    #assert
    expect(character.name).to eq "Bernadette Baker"
  end
end

