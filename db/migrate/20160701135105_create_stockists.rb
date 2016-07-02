class CreateStockists < ActiveRecord::Migration
  def change
    create_table :stockists do |t|
      t.string :name
      t.string :string
      t.string :address
      t.string :website
      t.string :string

      t.timestamps null: false
    end
  end
end
