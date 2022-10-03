class AddSkillsToKind < ActiveRecord::Migration[7.0]
  def change
    add_reference :kinds, :skills, foreign_key: true
  end
end
