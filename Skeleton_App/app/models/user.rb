class User < ApplicationRecord

  validates_presence_of :name, :surname
end
