class RemovePostedTimeFromGuestbookEntries < ActiveRecord::Migration
  def up
    remove_column :guestbook_entries, :posted_time
      end

  def down
    add_column :guestbook_entries, :posted_time, :string
  end
end
