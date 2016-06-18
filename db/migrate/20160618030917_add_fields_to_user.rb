class AddFieldsToUser < ActiveRecord::Migration
  def change
    add_column :users, :nombre, :string
    add_column :users, :a_paterno, :string
    add_column :users, :a_materno, :string
  end
end
