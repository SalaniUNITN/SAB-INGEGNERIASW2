class Hour < ApplicationRecord
  validates :name_user, presence: true
  validates :email , presence: true
  validates :hourly_wage, presence: true
  validates :n_hour, presence: true
end
