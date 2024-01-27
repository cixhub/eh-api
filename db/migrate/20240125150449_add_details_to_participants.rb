class AddDetailsToParticipants < ActiveRecord::Migration[7.1]
  def change
    add_column :participants, :phone_number, :string, null: true
  end
end
