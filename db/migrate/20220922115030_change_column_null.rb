class ChangeColumnNull < ActiveRecord::Migration[7.0]
  def change
    change_column_null :characters, :name, false
    change_column_null :characters, :surname, false
    change_column_null :characters, :language, false
    change_column_null :characters, :gender, false
    change_column_null :kinds, :gender, false
    change_column_null :kinds, :name, false
    change_column_null :benefits, :name, false
    change_column_null :benefits, :kind_name, false
  end
end
