class CharacterWizardsController < ApplicationController

  def show
    # @wizard = Wizard.new(@character, params[:step])
    render "kind_and_benefits"
  end

  def create

  end

  def kind_and_benefits
    @benefits = Benefit.where(kind_id: params["kind_id"])
    render partial: "benefits", :object => @benefits
  end

end