class AddLabIdColumnToArticles < ActiveRecord::Migration[5.0]
  def change
    add_reference :articles, :lab, foreign_key: true
  end
end
