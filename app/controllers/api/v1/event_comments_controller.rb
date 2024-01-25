class Api::V1::EventCommentsController < ApplicationController
  before_action :set_event_comment, only: %i[show edit update destroy]

  def create
    @event_comment = EventComment.new(event_comment_params)
    @event_comment.user_id = current_user.id

    if @event_comment.save
      redirect_to @event_comment.event, notice: 'Comment was successfully created.'
    else
      redirect_to @event_comment.event, alert: 'Failed to create comment.'
    end
  end

  def destroy
    @event_comment.destroy
    redirect_to @event_comment.event, notice: 'Comment was successfully destroyed.'
  end

  private

  def set_event_comment
    @event_comment = EventComment.find(params[:id])
  end

  def event_comment_params
    params.require(:event_comment).permit(:content, :event_id)
  end
end
