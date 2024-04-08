class CreateListingsAmenities < ActiveRecord::Migration[7.1]
  def change
    create_table :listings_amenities do |t|
      t.references :listing, null: false, foreign_key: true
      t.references :amenity, null: false, foreign_key: true

      t.timestamps
    end
  end
end
