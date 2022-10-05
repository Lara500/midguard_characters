class AddKindToSkills < ActiveRecord::Migration[7.0]
  def change
    add_reference :skills, :kinds, foreign_key: true
  end
end
