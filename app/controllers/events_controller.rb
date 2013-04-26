class EventsController < ApplicationController
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
