class CreateGallerySets < ActiveRecord::Migration
  def change
    create_table :gallery_sets do |t|
      t.string :title
      t.text :description
      t.integer :year
      t.integer :event_id
      t.integer :user_id

      t.timestamps
    end
  end
end
