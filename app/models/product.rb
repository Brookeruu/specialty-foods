class Product < ActiveRecord::Base
  validates_presence_of :name, :cost, :origin
  has_many :reviews
end
