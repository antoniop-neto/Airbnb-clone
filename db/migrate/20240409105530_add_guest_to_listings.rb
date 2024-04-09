class AddGuestToListings < ActiveRecord::Migration[7.1]
  def change
    add_column :listings, :guest, :integer
  end
end
