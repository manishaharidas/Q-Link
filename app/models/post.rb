class Post < ActiveRecord::Base
  attr_accessible :description
  has_one :user
end
