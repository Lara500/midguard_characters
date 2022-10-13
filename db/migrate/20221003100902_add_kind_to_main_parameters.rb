class AddKindToMainParameters < ActiveRecord::Migration[7.0]
  def change
    add_reference :main_parameters, :kinds, foreign_key: true
  end
end
