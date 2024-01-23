class CreateApiV1Events < ActiveRecord::Migration[7.1]
  def change
    create_table :api_v1_events do |t|

      t.timestamps
    end
  end
end
