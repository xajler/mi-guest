class AddDocumentNumberToAccommodations < ActiveRecord::Migration
  def change
    add_column :accommodations, :document_number, :string
  end
end
