class Profile < ActiveRecord::Base
  attr_accessible :date_of_birth, :first_name, :last_name, :place
  validates :first_name, :last_name, :place, :date_of_birth, :presence => true
  has_one :user
end
