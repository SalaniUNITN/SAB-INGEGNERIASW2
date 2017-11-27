class Client < ApplicationRecord

  attr_accessor :name, :email, :p_iva, :city, :street, :cap, :street_number

  validates :name, presence:true
  validates :emails, presence:true
  validates :p_iva, presence:true
  validates :city, presence:true
  validates :street, presence:true
  validates :cap, presence:true
  validates :street_number, presence:true
end
