class CharacterCreator < ApplicationService
  MALE_SURNAME_ENDING = "son".freeze
  FEMALE_SURNAME_ENDING = "dottir".freeze
  def initialize(character_params, parent_name)
    @character_params = character_params
    @parent_name = parent_name
    @character = Character.new(character_params)
  end

  def call
    generate_surname
    character.save
  end

  private

  attr_accessor :character, :character_params, :parent_name

  def generate_surname
    if character_params["gender"] == "Kobieta"
      ending = FEMALE_SURNAME_ENDING
    elsif character_params["gender"] == "Mężczyzna"
      ending = MALE_SURNAME_ENDING
    end

    character.surname = "#{parent_name}#{ending}"
  end
end
