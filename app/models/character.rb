class Character < ApplicationRecord

  validates :name, presence: true
  validates :surname, presence: true
  validates :gender, presence: true
end