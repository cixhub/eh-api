class Api::V1::EventSchedulesController < ApplicationController
  before_action :set_event_schedule, only: %i[show edit update destroy]

  def index
    @event_schedules = Api::V1::EventSchedule.all
  end

  def new
    @event_schedule = EventSchedule.new
  end

  def create
    @event_schedule = EventSchedule.new(event_schedule_params)

    if @event_schedule.save
      redirect_to @event_schedule, notice: 'Event schedule was successfully created.'
    else
      render :new
    end
  end

  def edit; end

  def update
    if @event_schedule.update(event_schedule_params)
      redirect_to @event_schedule, notice: 'Event schedule was successfully updated.'
    else
      render :edit
    end
  end

  def show
    @event_schedules = EventComment.find(params[:id])
  end

  def destroy
    @event_schedule.destroy
    redirect_to event_schedules_url, notice: 'Event schedule was successfully destroyed.'
  end

  private

  def set_event_schedule
    @event_schedule = EventSchedule.find(params[:id])
  end

  def event_schedule_params
    params.require(:event_schedule).permit(:title, :description, :start_time, :end_time, :event_id)
  end
end
