class CreateApartments < ActiveRecord::Migration
  def change
    create_table :apartments do |t|
      t.integer :number
      t.integer :apartment_type_id

      t.timestamps
    end
    add_index :apartments, :apartment_type_id
  end
end
