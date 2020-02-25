class Car < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy

  has_one_attached :photo

  validates :model, presence: true
  validates :location, presence: true
  validates :price, presence: true
  validates :description, presence: true
end
