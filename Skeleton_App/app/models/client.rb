class Client < ApplicationRecord

  validates_presence_of :name, :surname, :company

  def total_bill
     
  end
end
