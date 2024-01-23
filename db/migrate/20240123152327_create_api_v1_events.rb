class Events < ActiveRecord::Migration[7.1]
  def change
    create_table :events do |t|
      t.string "name"
      t.string "title"
      t.string "description"
      t.boolean "reservation"
      t.integer "price"
      t.integer "capacity"
      t.integer "tickets"
      t.integer "tickets_left"
      t.datetime "date"
      t.string "location"
      t.datetime "start_time", precision: 6
      t.datetime "end_time", precision: 6
      t.string "avatar"
      t.string "banner"
      t.integer "category_id"
      t.string "event_type", default: "Private"


      t.timestamps
    end
  end
end
