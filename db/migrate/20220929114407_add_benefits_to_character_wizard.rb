class AddBenefitsToCharacterWizard < ActiveRecord::Migration[7.0]
  def change
    add_column :character_wizards, :first_benefit, :string
    add_column :character_wizards, :second_benefit, :string
  end
end
