class CreateSkills < ActiveRecord::Migration[7.0]
  def change
    create_table :skills do |t|
      t.integer :white_weapon
      t.integer :grapple
      t.integer :resilience
      t.integer :short_weapon
      t.integer :vehicle_service
      t.integer :reflex
      t.integer :long_weapon
      t.integer :pilotage
      t.integer :alert_senses
      t.integer :connections
      t.integer :technique
      t.integer :knowledge
      t.integer :hacking
      t.integer :infiltration
      t.integer :trick
      t.integer :charisma
      t.integer :hexeri
      t.integer :willpower

      t.timestamps
    end
  end
end
