class AddGenderToKinds < ActiveRecord::Migration[7.0]
  def change
    add_column :kinds, :gender, :string
  end
end
