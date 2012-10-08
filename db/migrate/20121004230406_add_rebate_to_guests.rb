class AddRebateToGuests < ActiveRecord::Migration
  def change
    add_column :guests, :rebate, :integer
  end
end
