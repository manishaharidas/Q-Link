class Event < ActiveRecord::Base  
  attr_accessible :event_date, :event_details, :event_name, :event_time, :event_venue
end
