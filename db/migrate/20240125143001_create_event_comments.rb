class CreateEventComments < ActiveRecord::Migration[7.1]
  def change
    create_table :event_comments do |t|
      t.text :content
      t.references :event, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
