class CreatePeriodPrices < ActiveRecord::Migration
  def change
    create_table :period_prices do |t|
      t.date :from
      t.date :to
      t.decimal :price
      t.decimal :price_euro
      t.integer :apartment_type_id

      t.timestamps
    end
    add_index :period_prices, :apartment_type_id
  end
end
