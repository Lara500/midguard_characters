class Character < ApplicationRecord
  has_one :kind
  has_many :benefits
end
