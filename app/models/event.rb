class Event < ActiveRecord::Base
  attr_accessible :allday, :description, :endtime, :start, :title
  validates_presence_of :title, :description
  validate :validate_end_date_before_start_date

  def validate_end_date_before_start_date
    if endtime && start && endtime < start
      errors.add(:endtime,"")
    end
  end
  end


