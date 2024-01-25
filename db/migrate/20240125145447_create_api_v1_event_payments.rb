class CreateApiV1EventPayments < ActiveRecord::Migration[7.1]
  def change
    create_table :api_v1_event_payments do |t|

      t.timestamps
    end
  end
end
