class Api::V1::EventPayment < ApplicationRecord
  belongs_to :user
  belongs_to :event
end
