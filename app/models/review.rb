class Review < ApplicationRecord
    belongs_to :publication
    belongs_to :user
    validates :user_id, presence: true, numericality: { only_integer: true }
    validates :publication_id, presence: true, numericality: { only_integer: true }
    validates :review, :numericality => { :only_integer => true, :less_than_or_equal_to => 5 }
end
