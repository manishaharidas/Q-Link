class Event < ActiveRecord::Base
  attr_accessible :allday, :description, :end, :start, :title
  validates_presence_of :title, :description
  end


