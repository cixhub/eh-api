class CreateEventImages < ActiveRecord::Migration[7.1]
  def change
    create_table :event_images do |t|
      t.string :url
      t.references :event, foreign_key: true

      t.timestamps
    end
  end
end
