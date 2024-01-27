class AddEventReferenceToParticipants < ActiveRecord::Migration[7.1]
  def change
    add_reference :participants, :events, null: false, foreign_key: true
  end
end
