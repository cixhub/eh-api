class CreateApiV1EventComments < ActiveRecord::Migration[7.1]
  def change
    create_table :api_v1_event_comments do |t|

      t.timestamps
    end
  end
end
