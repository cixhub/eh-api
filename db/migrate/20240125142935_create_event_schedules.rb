class CreateEventSchedules < ActiveRecord::Migration[7.1]
  def change
    create_table :event_schedules do |t|
      t.string :title
      t.text :description
      t.datetime :start_time
      t.datetime :end_time
      t.references :event, foreign_key: true

      t.timestamps
    end
  end
end
