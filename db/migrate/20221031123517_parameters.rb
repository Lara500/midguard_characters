class Parameters < ActiveRecord::Migration[7.0]
  def change
    create_table :parameters do |t|
      t.string :name
      t.integer :value
      t.string :type
      t.bigint :entity_id
      t.string :entity_type
    end

    add_index :parameters, [:entity_id, :entity_type]
  end
end
