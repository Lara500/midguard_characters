class CharacterWizardsController < ApplicationController

  def show

    @kind_gender = Kind.where(gender: Character.find(params["char_id"]).gender)
    @kind_gender += Kind.where(gender: "Dowolna")
    render "kind_and_benefits", local: @kind_gender
  end

  def create
  end

  def kind_and_benefits
    @benefits = Benefit.where(kind_name: params["kind_name"])
    render partial: "benefits", :object => @benefits
  end
end
