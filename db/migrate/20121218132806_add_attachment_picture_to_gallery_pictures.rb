class AddAttachmentPictureToGalleryPictures < ActiveRecord::Migration
  def self.up
    change_table :gallery_pictures do |t|
      t.attachment :picture
    end
  end

  def self.down
    drop_attached_file :gallery_pictures, :picture
  end
end
