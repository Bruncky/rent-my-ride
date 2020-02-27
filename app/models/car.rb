class Car < ApplicationRecord
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  belongs_to :user
  has_many :bookings, dependent: :destroy

  has_one_attached :thumbnail
  has_many_attached :photos

  validates :model, presence: true
  validates :location, presence: true
  validates :price, presence: true
  validates :description, presence: true
end
