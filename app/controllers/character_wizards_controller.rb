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
    result = self.send(params["step"].to_sym)
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
    kind_name = CharacterWizard.find(params["char_id"]).kind_char
    @benefits = Benefit.where(kind_name: kind_name)
    render "benefits", :object => @benefits
  end

  private

  def kind_and_benefits
    @character_wizard = CharacterWizard.new(kind_char: params["kind_char"], character_id: @char_id)
    @character_wizard.save
    @character_wizard
  end

  def benefits
    @character_wizard = CharacterWizard.find_by_character_id(@char_id)
    if params["benefit_first"] == "1" && params["benefit_second"] == "1"
      @character_wizard.update(first_benefit: params["name_one"], second_benefit: params["name_two"])
    elsif params["benefit_second"] == "1" && params["benefit_third"] == "1"
      @character_wizard.update(first_benefit: params["name_two"], second_benefit: params["name_three"])
    elsif params["benefit_first"] == "1" && params["benefit_third"] == "1"
      @character_wizard.update(first_benefit: params["name_one"], second_benefit: params["name_three"])
    end
    @character_wizard
  end

  # def wizard_params
  #   if params["step"] == "kind_and_benefits"
  #     params.permit(:kind_char)
  #   elsif params["step"] == "benefits"
  #     params.permit(:benefit_first, :name_one, :benefit_second, :name_two, :benefit_third, :name_three)
  #   end
  # end

end
