class Product < ActiveRecord::Base
  validate_presence_of :name, :cost, :origin
  has_many :reviews
end
