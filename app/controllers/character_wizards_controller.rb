class CharacterWizardsController < ApplicationController

  def show
    render "kind_and_benefits"
  end

  def create
  end

  def kind_and_benefits
    @benefits = Benefit.where(kind_name: params["kind_name"])
    render partial: "benefits", :object => @benefits
  end
end
