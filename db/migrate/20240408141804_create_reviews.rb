class CreateReviews < ActiveRecord::Migration[7.1]
  def change
    create_table :reviews do |t|
      t.decimal :rating, precision: 5, scale: 2
      t.text :comment

      t.timestamps
    end
  end
end
