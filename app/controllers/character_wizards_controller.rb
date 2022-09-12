class CharacterWizardsController < ApplicationController

  def show
    # @wizard = Wizard.new(@character, params[:step])
    render "kind_and_benefits"
  end

  def create
    # @wizard = Wizard.new(@character, params[:step], params)
    # render_or_redirect
  end

  def kind_and_benefits

  end

end