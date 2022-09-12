class CharacterCreator < ApplicationService

  def initialize(character_params, parent_name)
    @character_params = character_params
    @parent_name = parent_name
  end

  def call
    @character = Character.new(@character_params)
    create_surname
    @character.update(@character_params)
    return @charagcter
  end

  private

  def create_surname
    if @character_params["gender"] == "Kobieta"
      ending = "dottir"
    elsif @character_params["gender"] == "Mężczyzna"
      ending = "son"
    end

    @character.surname = "#{@parent_name}#{ending}"
  end
end
