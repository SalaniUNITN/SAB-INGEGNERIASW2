class User < ApplicationRecord
  attr_accessor :Name, :Surname, :Email, :Telephone, :Partita_Iva, :CF, :Street_name, :cap, :city, :street_number, :password

  before_save { self.Email = Email.downcase }
  validates :Name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :Email, presence: true, length: { maximum: 255 },
  format: { with: VALID_EMAIL_REGEX },
  uniqueness: { case_sensitive: false }

  has_secure_password
  validates :password, length: { minimum: 6 }

end
