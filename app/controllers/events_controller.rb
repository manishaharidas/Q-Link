class EventsController < ApplicationController

  def index
       #render :layout => false
        @events = Event.scoped 
        #@events = Event.between(params['start'], params['end']) if (params['start'] && params['end'])
        respond_to do |format|
        format.html # index.html.erb
        format.json { render :json =>  @events }
      end
   end 
   def save_event
   	@event = Event.create(params[:event])
          if @event.save
               flash[:alert] = "Event added!"
               redirect_to events_path
          else
           flash[:alert] = "Error while adding event!"
           redirect_to events_path
           end
	
    end
   def showcalendar
    
   end  
   def firstpage
        @data_to_display = Event.find_by_sql("select * from events where start > sysdate + 30")
   end
end
