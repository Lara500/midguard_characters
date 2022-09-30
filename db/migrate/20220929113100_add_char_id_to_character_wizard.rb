class AddCharIdToCharacterWizard < ActiveRecord::Migration[7.0]
  def change
    add_reference :character_wizards, :character, foreign_key: true
  end
end
