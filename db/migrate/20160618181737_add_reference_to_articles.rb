class AddReferenceToArticles < ActiveRecord::Migration
  def change
    add_reference :articles, :catalog, index: true, foreign_key: true
  end
end
