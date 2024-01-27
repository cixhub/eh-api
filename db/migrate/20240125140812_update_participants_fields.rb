class UpdateParticipantsFields < ActiveRecord::Migration[7.1]
  def change
    change_column :participants, :attending, :boolean, default: false
    rename_column :participants, :events_id, :event_id
  end
end
