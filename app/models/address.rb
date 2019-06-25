class Address < ApplicationRecord
  validates :street, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :lat, presence: true
  validates :lon, presence: true
  validates :lat, numericality: { only_decimal: true }
  validates :lon, numericality: { only_decimal: true }
  belongs_to :user_profile
  belongs_to :user, required: false
end
