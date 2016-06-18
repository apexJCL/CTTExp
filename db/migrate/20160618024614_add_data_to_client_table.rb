class AddDataToClientTable < ActiveRecord::Migration
  def change
    add_column :clients, :nombre, :string
    add_column :clients, :a_paterno, :string
    add_column :clients, :a_materno, :string
    add_column :clients, :rfc, :string, :limit => 12
    add_column :clients, :fisica, :boolean
    add_column :clients, :domicilio, :string
    add_column :clients, :entidad, :string
    add_column :clients, :cp, :string, :limit => 5
    add_column :clients, :saldo, :decimal
    add_column :clients, :seguro, :string
    add_column :clients, :observ, :string
    add_column :clients, :consid_cte, :string
    add_column :clients, :equipo, :string
    add_column :clients, :web, :string
    add_column :clients, :activo, :string
    add_column :clients, :fecha_ing, :datetime
  end
end
