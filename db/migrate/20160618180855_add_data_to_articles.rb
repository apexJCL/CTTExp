class AddDataToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :nombre, :string
    add_column :articles, :desc_art, :string
    add_column :articles, :desc_art1, :string
    add_column :articles, :desc_art2, :string
    add_column :articles, :arts_disp, :integer
    add_column :articles, :prcio_unit, :decimal
    add_column :articles, :tipo_art, :integer
    add_column :articles, :moneda_art, :string
    add_column :articles, :apartar, :decimal
    add_column :articles, :orden, :integer
    add_column :articles, :disp_camara, :integer
    add_column :articles, :disp_almacen, :integer
    add_column :articles, :disp_movila, :integer
    add_column :articles, :disp_movilb, :integer
    add_column :articles, :disp_movilc, :integer
    add_column :articles, :disp_movild, :integer
    add_column :articles, :disp_movilfijo, :integer
    add_column :articles, :disp_minimovil, :integer
    add_column :articles, :disp_micromovil, :integer
    add_column :articles, :disp_movilx, :integer
    add_column :articles, :atributo, :integer
    add_column :articles, :marca, :string
  end
  # TODO: Add Catalog relationship
end
