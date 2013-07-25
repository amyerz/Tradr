class CreateStocks < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
      t.integer :user_id
      t.string :symbol
      t.integer :quantity
      t.float :starting_price

      t.timestamps
    end
  end
end
