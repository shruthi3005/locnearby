class UserProfile < ApplicationRecord
  belongs_to :user
  has_many :addresses
  accepts_nested_attributes_for :addresses
  validates :name, presence: true
  validates :gender, presence: true
end
