class CreateApiV1EventSchedules < ActiveRecord::Migration[7.1]
  def change
    create_table :api_v1_event_schedules do |t|

      t.timestamps
    end
  end
end
