class UpdateParticipantsFields < ActiveRecord::Migration[7.1]
  def change
    change_column :participants, :attending, :boolean, default: false
  end
end
