class Benefit < ApplicationRecord
  belongs_to :kind, foreign_key: :kind_name, primary_key: :name
end
