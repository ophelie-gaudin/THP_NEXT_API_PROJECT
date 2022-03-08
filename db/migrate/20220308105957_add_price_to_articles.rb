class AddPriceToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :price, :integer
  end
end
