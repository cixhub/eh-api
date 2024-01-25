class Api::V1::EventComment < ApplicationRecord
  belongs_to :user
  belongs_to :event
end
