class CreateEventPayments < ActiveRecord::Migration[7.1]
  def change
    create_table :event_payments do |t|
      t.references :user, foreign_key: true
      t.references :event, foreign_key: true
      t.decimal :amount, precision: 10, scale: 2
      t.string :status

      t.timestamps
    end
  end
end
