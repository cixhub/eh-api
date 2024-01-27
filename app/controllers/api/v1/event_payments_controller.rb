class Api::V1::EventPaymentsController < ApplicationController

  def index
    @event_payments = Api::V1::EventPayment.where(event_id: params[:event_id])
    render json: @event_payments
  end

  def create
    @event_payment = EventPayment.new(user_id: current_user.id, event_id: params[:event_id], amount: params[:amount],
                                      status: 'pending')

    if @event_payment.save
      redirect_to @event_payment.event, notice: 'Payment initiated successfully.'
    else
      redirect_to @event_payment.event, alert: 'Failed to initiate payment.'
    end
  end

        def show
    @event_payment = EventComment.find(params[:id])
  end
end
