require_relative './spec_helper'

RSpec.describe Character, "#initialize" do
    it "initializes a new object of the Character class with the given attributes" do
      #arrange
      attributes =  {
        "id": 40,
        "name": "Bernadette Baker",
        "image": "https://bobsburgers-api.herokuapp.com/images/characters/40.jpg",
        "gender": "Female",
        "hairColor": "Brown",
        "occupation": "Astronaut (former)",
        "firstEpisode": "\"The Grand Mama-pest Hotel\"",
        "voicedBy": "Jenny Slate",
        "url": "https://bobsburgers-api.herokuapp.com/characters/40",
        "wikiUrl": "https://bobs-burgers.fandom.com/wiki/Bernadette_Baker",
        "relatives": []
    }

      #act
      bernadette_baker = Character.new(attributes)

      #assert
      expect(bernadette_baker.name).to eq "Bernadette Baker"
    end
  end  