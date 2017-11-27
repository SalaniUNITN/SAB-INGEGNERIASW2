class Invoice < ApplicationRecord
  belongs_to :client

  validates :name, presence:true
  #validates :p_ivatotal, presence:true
  #validates :bill, presence:true

  before_save :total_bill

  def hours
    client.add_hours
  end

  def total_bill
    self.total = hours.map {|h| h.NHour * h.Hourly_Wage}.reduce(:+)
  end
end
