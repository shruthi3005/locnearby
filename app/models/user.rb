class User < ApplicationRecord
  validates_presence_of  :email
  validates :password, presence: true
  validates_format_of :email,:with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
  has_one :user_profile
  accepts_nested_attributes_for :user_profile
end

