class CreateTableTelefonos < ActiveRecord::Migration
  def change
    create_table :telefonos do |t|
      t.string  :telefono
      t.string :descripcion
      t.timestamps
    end
    add_reference :telefonos, :client, index: true, foreign_key: true
  end
end
