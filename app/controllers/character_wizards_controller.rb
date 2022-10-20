class CharacterWizardsController < ApplicationController

  def show
    if params["step"] == "kind_and_benefits"
      @kind_gender = Kind.where(gender: Character.find(params["char_id"]).gender)
      @kind_gender += Kind.where(gender: "Dowolna")
      render "kind_and_benefits", local: @kind_gender
    elsif params["step"] == "benefits"
      show_benefits
    end
  end

  def create
    result = public_send(params["step"])
    if result
      if params["step"] == "kind_and_benefits"
       redirect_to(character_wizard_path(char_id: params["char_id"], step: "benefits"))
      elsif params["step"] == "benefits"
        redirect_to(root_path)
      end
    else
      render :new, status: :unprocessable_entity

    end
  end

  def show_benefits
    kind_name = CharacterWizard.find_by_character_id(params["char_id"]).kind_char
    @benefits = Benefit.where(kind_name: kind_name)
    render "benefits", :object => @benefits
  end

  def kind_and_benefits
    @character_wizard = CharacterWizard.new(kind_char: params["kind_char"], character_id: params["char_id"])
    @character_wizard.save
    @character_wizard
  end

  def benefits
    choices = params.select { |key, value| value.to_s.match("1") && key.to_s.match("benefit_")}
    choices_name = params.select { |key, value| key.to_s.match(choices.keys[0]) || key.to_s.match(choices.keys[1])}

    @character_wizard = CharacterWizard.find_by_character_id(params["char_id"])
    @character_wizard.update(first_benefit: choices_name.values[1], second_benefit: choices_name.values[3])
    @character_wizard
  end
  
end
