class CreateMainParameters < ActiveRecord::Migration[7.0]
  def change
    create_table :main_parameters do |t|
      t.integer :physique
      t.integer :dexterity
      t.integer :perception
      t.integer :intelligence
      t.integer :control
      t.integer :entropy
      t.timestamps
    end
  end
end
