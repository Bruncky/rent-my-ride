class Car < ApplicationRecord
  geocoded_by :full_address
  after_validation :geocode, if: :will_save_change_to_full_address?

  belongs_to :user
  has_many :bookings, dependent: :destroy

  has_one_attached :photo

  validates :model, presence: true
  validates :location, presence: true
  validates :price, presence: true
  validates :description, presence: true

  def full_address
    [address, city, zip].compact.join(', ')
  end
end
