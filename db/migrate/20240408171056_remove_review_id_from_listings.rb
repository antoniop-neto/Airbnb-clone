class RemoveReviewIdFromListings < ActiveRecord::Migration[7.1]
  def change
    remove_column :listings, :review_id
  end
end
