class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.date :eventdate
      t.time :doors
      t.time :showstart
      t.string :entryfee
      t.text :description
      t.boolean :sticky
      t.boolean :published
      t.integer :galleryset_id

      t.timestamps
    end
  end
end
