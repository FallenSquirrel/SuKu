class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :password
      t.string :lastname
      t.string :firstname
      t.string :title
      t.string :job
      t.string :usertyp

      t.timestamps
    end
  end
end
