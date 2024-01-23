class Api::V1::Category < ApplicationRecord
  self.table_name = 'categories'
  has_many :events
  attr_accessor :event_count
end
