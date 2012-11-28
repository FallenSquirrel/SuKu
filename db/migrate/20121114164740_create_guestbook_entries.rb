class CreateGuestbookEntries < ActiveRecord::Migration
  def change
    create_table :guestbook_entries do |t|
      t.string :name
      t.string :email
      t.string :town
      t.text :message
      t.integer :refer_to
      t.string :posted_time
      t.string :datetime

      t.timestamps
    end
  end
end
