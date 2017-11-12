class Client < ApplicationRecord

  validates_presence_of :name, :surname, :company
end
