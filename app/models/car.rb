class Car < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many_attached :image
  validates :model, presence: true
  validates :location, presence: true
  validates :price, presence: true
  validates :description, presence: true
end
