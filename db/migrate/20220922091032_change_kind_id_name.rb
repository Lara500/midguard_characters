class ChangeKindIdName < ActiveRecord::Migration[7.0]
  def change
    rename_column :benefits, :kind_id, :kind_name
  end
end
