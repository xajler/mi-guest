class CreateResidences < ActiveRecord::Migration
  def change
    create_table :residences do |t|
      t.string :owner_name
      t.string :address
      t.string :town

      t.timestamps
    end
  end
end
