class Invoice < ApplicationRecord
  validates :name, presence:true
  validates :p_ivatotal, presence:true
  validates :bill, presence:true
end
