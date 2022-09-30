class CharacterWizardsController < ApplicationController

  def show
    if params["step"] == "kind_and_benefits"
      @kind_gender = Kind.where(gender: Character.find(params["char_id"]).gender)
      @kind_gender += Kind.where(gender: "Dowolna")
      render "kind_and_benefits", local: @kind_gender
    elsif params["step"] == "benefits"
      kind_and_benefits
    end
  end

  def create
    result = CharacterWizardService.call(wizard_params, params["char_id"], params["step"])
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

  def kind_and_benefits
    kind_name = Kind.find(params["char_id"]).name
    @benefits = Benefit.where(kind_name: kind_name)
    render "benefits", :object => @benefits
  end

  def wizard_params
    if params["step"] == "kind_and_benefits"
      params.permit(:kind_char)
    elsif params["step"] == "benefits"
      params.permit(:benefit_first, :name_one, :benefit_second, :name_two, :benefit_third, :name_three)
    end
  end

end
