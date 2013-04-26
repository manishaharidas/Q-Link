class EventsController < ApplicationController
<<<<<<< HEAD
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

=======
	def create
		@event = Event.create!(params[:event])
		if @event.save
			flash[:alert]="Event Added"
			redirect_to form_4_event_events_path
		end
	end
	def form_4_event
	end
end
>>>>>>> 73ef1acaa4d0b21113608b5dc8845cc8649d38f8
