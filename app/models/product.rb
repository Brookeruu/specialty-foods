class Product < ActiveRecord::Base
  validates_presence_of :name, :cost, :origin
  has_many :reviews

  scope :made_in_usa, -> { where(origin: "USA")}

end
