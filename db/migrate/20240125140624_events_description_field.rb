class EventsDescriptionField < ActiveRecord::Migration[7.1]
  def change
    change_column :events, :description, :text
  end
end
