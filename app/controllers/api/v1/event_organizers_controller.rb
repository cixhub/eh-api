class Api::V1::EventOrganizersController < ApplicationController
  def create
    @event_organizer = EventOrganizer.new(user_id: params[:user_id], event_id: params[:event_id])

    if @event_organizer.save
      redirect_to @event_organizer.event, notice: 'Organizer added successfully.'
    else
      redirect_to @event_organizer.event, alert: 'Failed to add organizer.'
    end
  end
end
