class Api::V1::EventInvitationsController < ApplicationController
  def create
    @event_invitation = EventInvitation.new(inviter_id: current_user.id, invitee_id: params[:invitee_id],
                                            event_id: params[:event_id])

    if @event_invitation.save
      redirect_to @event_invitation.event, notice: 'Invitation sent successfully.'
    else
      redirect_to @event_invitation.event, alert: 'Failed to send invitation.'
    end
  end
end
