class Kind < ApplicationRecord
  has_many :parameters, as: :entity
  has_many :main_parameters, -> { where(type: "MainParameter") }, as: :entity
  has_many :skill_parameters, -> { where(type: "SkillParameter") }, as: :entity
  has_many :benefits, inverse_of: :kind
end
