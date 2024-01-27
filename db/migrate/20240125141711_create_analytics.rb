class CreateAnalytics < ActiveRecord::Migration[7.1]
  def change
    create_table :analytics do |t|
      t.integer :event_views
      t.integer :reservations_count
      t.references :event, foreign_key: true

      t.timestamps
    end
  end
end
