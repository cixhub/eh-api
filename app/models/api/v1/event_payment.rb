class Api::V1::EventPayment < ApplicationRecord
  self.table_name = 'event_payments'
  belongs_to :user
  belongs_to :event
end
