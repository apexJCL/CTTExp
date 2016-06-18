class CreateExistences < ActiveRecord::Migration
  def change
    create_table :existences do |t|
      t.timestamps null: false
    end
    add_reference :existences, :article, index: true, foreign_key: true
  end
end
