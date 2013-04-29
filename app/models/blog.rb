class Blog < ActiveRecord::Base
  attr_accessible :content, :tag, :title
end
