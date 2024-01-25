class CreateEventInvitations < ActiveRecord::Migration[7.1]
  def change
    create_table :event_invitations do |t|
      t.references :inviter, foreign_key: { to_table: :users }
      t.references :invitee, foreign_key: { to_table: :users }
      t.references :event, foreign_key: true

      t.timestamps
    end
  end
end
