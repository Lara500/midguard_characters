class Benefit < ApplicationRecord
  belongs_to :kind, inverse_of: :benefits, foreign_key: :kind_name, primary_key: :name
  has_many :parameters, as: :entity
  has_many :main_parameters, -> { where(type: "MainParameter") }, as: :entity
  has_many :skill_parameters, -> { where(type: "SkillParameter") }, as: :entity
  has_many :auxiliary_parameters, -> { where(type: "AuxiliaryParameter") }, as: :entity
end