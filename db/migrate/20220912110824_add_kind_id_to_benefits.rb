class AddKindIdToBenefits < ActiveRecord::Migration[7.0]
  def change
    add_column :benefits, :kind_id, :string
  end
end
