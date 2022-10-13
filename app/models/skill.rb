class Skill < ApplicationRecord
  belongs_to :kind, optional: true
end
