class EncryptMembers < ActiveRecord::Migration
  def up
    rename_column :members, :lastname, :encrypted_lastname
    rename_column :members, :firstname, :encrypted_firstname
    rename_column :members, :address_street, :encrypted_address_street
    rename_column :members, :address_zip, :encrypted_address_zip
    rename_column :members, :address_town, :encrypted_address_town
    rename_column :members, :telephone, :encrypted_telephone
    rename_column :members, :email, :encrypted_email
    rename_column :members, :entrydate, :encrypted_entrydate
    rename_column :members, :birthday, :encrypted_birthday
    rename_column :members, :bankaccount_nr, :encrypted_bankaccount_nr
    rename_column :members, :bankaccount_blz, :encrypted_bankaccount_blz
    rename_column :members, :bankaccount_bankname, :encrypted_bankaccount_bankname
  end

  def down
  end
end
