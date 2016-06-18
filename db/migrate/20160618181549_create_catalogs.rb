class CreateCatalogs < ActiveRecord::Migration
  def change
    create_table :catalogs do |t|
      t.timestamps null: false
    end
    add_column :catalogs, :nombre, :string
    add_column :catalogs, :desc, :string
    add_column :catalogs, :fecha, :datetime
    add_column :catalogs, :tipo_camb, :decimal
  end
end
