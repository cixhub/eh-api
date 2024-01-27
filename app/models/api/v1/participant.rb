class Api::V1::Participant < ApplicationRecord
  self.table_name = 'participants'
  belongs_to :event
end
