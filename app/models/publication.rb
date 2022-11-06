class Publication < ApplicationRecord
  belongs_to :user
  has_many :reviews
  has_one_attached :image
  validates :club_name, presence: true, length: { in: 6..25 }
  validates :club_address, presence: true, length: { in: 6..30 }
  validates :sport_name, presence: true, length: { in: 1..20 }
  validates :user_id, presence: true, numericality: { only_integer: true }
  scope :filter_by_name, -> (club_name) { where club_name: club_name }
end
