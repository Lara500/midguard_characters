class ChangeSkillsNames < ActiveRecord::Migration[7.0]
  def change
    rename_column :skills, :white_weapon, :side_arm
    rename_column :skills, :resilience, :endurance
    rename_column :skills, :grapple, :hand_to_hand_combat
    rename_column :skills, :technique, :engineering
  end
end
