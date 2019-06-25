class UserProfile < ApplicationRecord
  validates_presence_of :name
  validates :gender, presence:true
  belongs_to :user
  has_many :addresses
  accepts_nested_attributes_for :addresses
end
