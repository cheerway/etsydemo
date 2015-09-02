class AddStockToListings < ActiveRecord::Migration
  def change
    add_column :listings, :stock, :integer
  end
end
