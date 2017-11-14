class Invoice < ApplicationRecord

  belongs_to :client
  belongs_to :user

  validates_presence_of :hours, :hourly_wage
end
