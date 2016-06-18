class CreateTableCorreos < ActiveRecord::Migration
  def change
    create_table :correos do |t|
      t.string :correo
      t.string :descripcion
    end
    add_reference :correos, :client, index: true, foreign_key: true
  end
end
