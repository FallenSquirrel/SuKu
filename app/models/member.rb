class Member < ActiveRecord::Base
  attr_encrypted :address_street, :address_town, :address_zip, :email, :bankaccount_bankname, :bankaccount_blz, :bankaccount_nr, :firstname, :lastname, :telephone, :key => 'Qax8poH03gu8uLAOUJOab1j3SBwN6wZyHf4JcEKkfsSHswQVbzHUcqEBUCwozNh', :encode => true
  validates_presence_of :firstname, :lastname

end

