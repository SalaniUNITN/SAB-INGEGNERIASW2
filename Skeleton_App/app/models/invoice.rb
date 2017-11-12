class Invoice < ApplicationRecord

  validates_presence_of :hours, :hourly_wage
end
