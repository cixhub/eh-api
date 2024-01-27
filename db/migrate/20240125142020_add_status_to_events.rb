class AddStatusToEvents < ActiveRecord::Migration[7.1]
  def change
    add_column :events, :status, :string, default: 'upcoming'
  end
end
