class Api::V1::EventSchedule < ApplicationRecord
  self.table_name = 'event_schedules'
  belongs_to :event
end
