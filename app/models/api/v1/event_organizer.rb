class Api::V1::EventOrganizer < ApplicationRecord
  self.table_name = 'event_organizers'
  belongs_to :user
  belongs_to :event
end
