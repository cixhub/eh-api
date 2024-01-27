class Api::V1::EventCommentsController < ApplicationController
  before_action :set_event_comment, only: %i[show edit update destroy]

   def index
    @event_comments = Api::V1::EventComment.where(event_id: params[:event_id])
    render json: @event_comments
  end

  def create
    @event_comment = EventComment.new(event_comment_params)
    @event_comment.user_id = current_user.id

    if @event_comment.save
      redirect_to @event_comment.event, notice: 'Comment was successfully created.'
    else
      redirect_to @event_comment.event, alert: 'Failed to create comment.'
    end
  end

  def show
    @event_comment = EventComment.find(params[:id])
  end

  def edit; end
  def update; end

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
