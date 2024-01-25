class UpdateEventFields < ActiveRecord::Migration[7.1]
  def change
    change_column :events, :description, :text
    change_column :events, :reservation, :boolean, default: false
  end
end
