class Address < ApplicationRecord
  belongs_to :user_profile
  validates :street, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :lat, presence: true
  validates :lon, presence: true
end
