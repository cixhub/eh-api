class Participants < ActiveRecord::Migration[7.1]
  def change
    create_table :participants do |t|
      t.string :name
      t.string :email
      t.integer :participant_id
      t.boolean :attending
      t.references :events, null: false, foreign_key: true


      t.timestamps
    end
  end
end
