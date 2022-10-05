class Kind < ApplicationRecord
  has_many :benefits
  has_one :main_parameter
  has_one :skill
end
