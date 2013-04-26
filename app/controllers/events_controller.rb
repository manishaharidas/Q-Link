class EventsController < ApplicationController
  def index1 
       #render :layout => false
      @events = Event.scoped 
      @events = Event.between(params['start'], params['end']) if (params['start'] && params['end']) 
   end 
   def save_event
   	@event = Event.create(params[:event])
   	    if @event.save
   	      flash[:alert]="Event Added"
		      redirect_to index1_events_path
		 end
   end
   def showcalendar
   end

  end  

