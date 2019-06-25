class User < ApplicationRecord
  validates :email, presence: true
  validates :password, :presence => true,
                       :confirmation => true,
                       :length => {:within => 6..40},
                       :on => :create
  validates_format_of :email,:with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
  has_one :user_profile
  has_many :addresses, :through => :user_profile
  accepts_nested_attributes_for :user_profile, :addresses

def self.search(term)
  if term
    where('email LIKE ?', "%#{term}%")
  else
    all
  end
  end

end
