class CreateCharacterWizard < ActiveRecord::Migration[7.0]
  def change
    create_table :character_wizards do |t|
      t.string :kind_char

      t.timestamps
    end
  end
end
