class Api::V1::EventComment < ApplicationRecord
  self.table_name = 'event_comments'
  belongs_to :user
  belongs_to :event
end
