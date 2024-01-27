class Api::V1::EventInvitation < ApplicationRecord
  self.table_name = 'event_invitations'
  belongs_to :inviter, class_name: 'User'
  belongs_to :invitee, class_name: 'User'
  belongs_to :event
end
