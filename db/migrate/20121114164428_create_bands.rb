class CreateBands < ActiveRecord::Migration
  def change
    create_table :bands do |t|
      t.string :name
      t.text :bandinfo
      t.string :email
      t.string :telephone
      t.string :homepage
      t.string :picture
      t.string :notices
      t.string :type

      t.timestamps
    end
  end
end
