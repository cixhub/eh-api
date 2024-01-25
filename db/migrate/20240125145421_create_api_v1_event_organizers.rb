class CreateApiV1EventOrganizers < ActiveRecord::Migration[7.1]
  def change
    create_table :api_v1_event_organizers do |t|

      t.timestamps
    end
  end
end
