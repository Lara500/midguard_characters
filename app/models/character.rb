class Character < ApplicationRecord
  validates :name, presence: true
  validates :surname, presence: true
  validates :gender, presence: true
  validates :language, presence: true
  has_one :kind
  has_many :benefits
end
