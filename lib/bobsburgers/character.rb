class Character

  CHARACTERS_API_URL = "https://bobsburgers-api.herokuapp.com/characters/"

  def initialize(attributes)
    attributes.each do |key, value| 
      self.class.attr_accessor(key)
      self.send(("#{key}="), value)
    end
  end

  def self.get_all_characters
    url = CHARACTERS_API_URL
    uri = URI.parse(url)

    response = Net::HTTP.get_response(uri)
    response_json = JSON.parse(response.body)

    characters = response_json.collect do |character|
      attributes =  {
        id: character["id"],
        name: character["name"],
        gender: character["gender"],
        hair_color: character["hairColor"],
        occupation: character["occupation"],
        first_episode: character["firstEpisode"],
        voiced_by: character["voicedBy"],
        wiki_url: character["wikiUrl"],
      }
      
      Character.new(attributes)
    end
  end

  def self.get_character_details(id)
    url = CHARACTERS_API_URL + id.to_s
    uri = URI.parse(url)

    response = Net::HTTP.get_response(uri)
    response_json = JSON.parse(response.body)
    attributes =  {
        id: response_json["id"],
        name: response_json["name"],
        gender: response_json["gender"],
        hair_color: response_json["hairColor"],
        occupation: response_json["occupation"],
        first_episode: response_json["firstEpisode"],
        voiced_by: response_json["voicedBy"],
        wiki_url: response_json["wikiUrl"],
      }
      
    character = Character.new(attributes)
  end

  def self.list_all_characters
    Character.get_all_characters.each do |character|
        puts "#{character.id}. #{character.name}"
    end
  end
end