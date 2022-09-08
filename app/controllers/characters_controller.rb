class CharactersController < ApplicationController
  def new
    @character = Character.new
  end

  def create
    result = CharacterCreator.call(character_params, params["character"]["parent_name"])

    if result
      redirect_to root_path, notice: 'Character was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def character_params
    params.require(:character).permit(:name, :surname, :gender, :language)
  end
end
