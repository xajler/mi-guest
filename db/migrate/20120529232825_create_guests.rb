class CreateGuests < ActiveRecord::Migration
  def change
    create_table :guests do |t|
      t.string :first_name
      t.string :last_name
      t.string :town
      t.references :country
      t.datetime :date_of_birth
      t.references :nationality
      t.string :croatian_address
      t.string :croatian_town

      t.timestamps
    end
    add_index :guests, :country_id
    add_index :guests, :nationality_id
  end
end
