class RemoveDatetimeFromGuestbookEntries < ActiveRecord::Migration
  def up
    remove_column :guestbook_entries, :datetime
      end

  def down
    add_column :guestbook_entries, :datetime, :string
  end
end
