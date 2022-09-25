class Character

  CHARACTERS_API_URL = "https://bobsburgers-api.herokuapp.com/characters/"

  def initialize(attributes)
    attributes.each do |key, value| 
      self.class.attr_accessor(key)
      self.send(("#{key}="), value)
    end
  end

  def self.list_all_characters
    uri = URI.parse(CHARACTERS_API_URL)

    response = Net::HTTP.get_response(uri)
    characters = JSON.parse(response.body)
    
    characters.collect do |character|
      attributes = {
        id: character["id"],
        name: character["name"],
        image: character["image"],
        gender: character["gender"],
        hair_color: character["hairColor"],
        occupation: character["occupation"],
        first_episode: character["firstEpisode"],
        voiced_by: character["voicedBy"],
        url: character["url"],
        wiki_url: character["wikiUrl"],
        relatives: character["relatives"]
      }

      Character.new(attributes)
    end
  end
end