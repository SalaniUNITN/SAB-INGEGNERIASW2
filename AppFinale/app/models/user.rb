class User < ApplicationRecord
  attr_accessor :Name, :Surname, :EMail, :Telephone, :Partita_Iva, :CF, :Street_name, :cap, :city, :street_number

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


  before_save { self.EMails = EMails.downcase }
  validates :Name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :EMails, presence: true, length: { maximum: 255 },
  format: { with: VALID_EMAIL_REGEX },
  uniqueness: { case_sensitive: false }

  has_secure_password
  validates :password, length: { minimum: 6 }

end
