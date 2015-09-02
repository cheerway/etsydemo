class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :name, null: false
      t.text :description, null: false
      t.decimal :price, null: false

      t.timestamps null: false
    end
  end
end
