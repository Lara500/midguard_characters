class CharacterWizardService < ApplicationService
  def initialize(wizard_params, char_id, step)
    @wizard_params = wizard_params
    @char_id = char_id
    @step = step
  end

  def call
    self.send(@step.to_sym)
  end

  private

  def kind
    @character_wizard = CharacterWizard.new(kind_char: @wizard_params["kind_char"], character_id: @char_id)
    @character_wizard.save
    @character_wizard
  end

  def benefits
    @character_wizard = CharacterWizard.find_by_character_id(@char_id)

    if @wizard_params["benefit_first"] == "1" && @wizard_params["benefit_second"] == "1"
      @character_wizard.update(first_benefit: @wizard_params["name_one"], second_benefit: @wizard_params["name_two"])
    elsif @wizard_params["benefit_second"] == "1" && @wizard_params["benefit_third"] == "1"
      @character_wizard.update(first_benefit: @wizard_params["name_two"], second_benefit: @wizard_params["name_three"])
    elsif @wizard_params["benefit_first"] == "1" && @wizard_params["benefit_third"] == "1"
      @character_wizard.update(first_benefit: @wizard_params["name_one"], second_benefit: @wizard_params["name_three"])
    end
    @character_wizard
  end

end
