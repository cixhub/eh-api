class CreateApiV1EventInvitations < ActiveRecord::Migration[7.1]
  def change
    create_table :api_v1_event_invitations do |t|

      t.timestamps
    end
  end
end
