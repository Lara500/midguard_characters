class CharacterWizardsController < ApplicationController
  before_action :validate_step, only: %i[show create]

  def show
    validate_step
    if params["step"] == "kind_and_benefits"
      @kind_gender = Kind.where(gender: Character.find(params["char_id"]).gender)
      @kind_gender += Kind.where(gender: "Dowolna")
      render "kind_and_benefits", local: @kind_gender
    elsif params["step"] == "benefits"
      show_benefits
    elsif params["step"] == "parameters"
      show_parameters
    end
  end

  def create
    validate_step
    result = public_send(params["step"])
    if result
      if params["step"] == "kind_and_benefits"
       redirect_to(character_wizard_path(char_id: params["char_id"], step: "benefits"))
      elsif params["step"] == "benefits"
        redirect_to(character_wizard_path(char_id: params["char_id"], step: "parameters"))
      end
    else
      render :new, status: :unprocessable_entity

    end
  end

  def show_parameters
    char_wiz = CharacterWizard.find_by(character_id: params["char_id"])
    kind_id = Kind.find_by(name: char_wiz.kind_char).id
    main_param = Parameter.where(entity_id: kind_id, entity_type: "Kind", type: "MainParameter")
    skill_param = Parameter.where(entity_id: kind_id, entity_type: "Kind", type: "SkillParameter")
    save_main_parameters(char_wiz, main_param)
    save_skill_parameters(char_wiz, skill_param)


    # render "parameters", :object => @parameters
  end

  def save_skill_parameters(char_wiz, skill_param)
    choices = skill_param.select {|p| p.name if p.name.include?("_or_")}
    if choices.any?
      param_const = skill_param.select {|p| p.name if !p.name.include?("_or_")}
      param_const.each{|param| char_wiz.skill_parameters.create(name: param.name, value: param.value)}

      choices_name = choices.map{|choice| choice.name.split("_or_")}
      # #choices_value = choices.map{|choice| choice.value}
      # choices_value = [3, 4]
      choices_name = choices_name.map{|choice| choice.map{ |name| name.include?("_") ? name.gsub!(/[^0-9A-Za-z]/, ' ') : name}}
      @choices_names = choices_name
      render "parameters", :object => @choices_names
    else
      skill_param.each{|param| char_wiz.skill_parameters.create(name: param.name, value: param.value)}
    end
  end

  def save_main_parameters(char_wiz, main_param)
    main_param.each{|param| char_wiz.main_parameters.create(name: param.name, value: param.value)}
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

  private
  
  def validate_step
    errors.add(params["step"], "Incorrect value") unless ['kind_and_benefits', 'benefits', 'parameters'].include?(params["step"])
  end
end
