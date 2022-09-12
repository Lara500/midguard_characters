class Benefit < ApplicationRecord
  belongs_to :kind, foreign_key: :kind_id, primary_key: :name
end
