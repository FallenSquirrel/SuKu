class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :lastname
      t.string :firstname
      t.string :address_street
      t.string :address_zip
      t.string :address_town
      t.string :telephone
      t.string :email
      t.date :entrydate
      t.date :birthday
      t.string :bankaccount_nr
      t.string :bankaccount_blz
      t.string :bankaccount_bankname

      t.timestamps
    end
  end
  
end
