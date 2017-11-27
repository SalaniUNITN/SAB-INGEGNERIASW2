class User < ApplicationRecord
  attr_accessor :Name, :Surname, :EMail, :Telephone, :Partita_Iva, :CF, :Street_name, :cap, :city, :street_number

  validates :Name, presence:true
  validates :EMails, presence:true
  validates :Surname, presence:true
  validates :Telephone, presence:true
  validates :Partita_Iva, presence:true
  validates :cap, presence:true
  validates :street_number, presence:true
  validates :CF, presence:true
  validates :Street_name, presence:true
  validates :city, presence:true
  validates :street_number, presence:true

end
