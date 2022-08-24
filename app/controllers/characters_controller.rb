class CharactersController < ApplicationController
  # before_save :create_surname

  def new
    @character = Character.new
  end

  def create
    @character = Character.new(character_params)
    create_surname
    if @character.save
      redirect_to root_path, notice: 'Round was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def character_params
    params.require(:character).permit(:name, :surname, :gender)
  end

  def create_surname
    if params["character"]["gender"] == "Kobieta"
      ending = "dottir"
    elsif params["character"]["gender"] == "Mężczyzna"
      ending = "son"
    end
    @character.surname = params["character"]["parent_name"] + ending
  end
end