class Product < ActiveRecord::Base
  validates_presence_of :name, :cost, :origin
  has_many :reviews

  scope :made_in_usa, -> { where(origin: "USA")}

  scope :most_reviews, -> {
    select("products.id, products.name, products.origin, count(reviews.id) as reviews_count")
    .joins(:reviews)
    .group("products.id")
    .order("reviews_count DESC")
    .limit(3)
    }
end
