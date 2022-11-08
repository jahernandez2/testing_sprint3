class AddUserIdToReviews < ActiveRecord::Migration[6.1]
  def change
    add_column :reviews, :user_id, :int
    change_column :reviews, :review, 'integer USING CAST(review AS integer)'
    # Publication.first.reviews.pluck(:review).sum
  end
end
