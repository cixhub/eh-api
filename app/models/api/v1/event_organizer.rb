class Api::V1::EventOrganizer < ApplicationRecord
  belongs_to :user
  belongs_to :event
end
