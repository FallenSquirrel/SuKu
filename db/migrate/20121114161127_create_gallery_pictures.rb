class CreateGalleryPictures < ActiveRecord::Migration
  def change
    create_table :gallery_pictures do |t|
      t.string :filename
      t.integer :galleryset_id

      t.timestamps
    end
  end
end
