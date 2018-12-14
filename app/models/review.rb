class Review < ApplicationRecord
  belongs_to :product, :author
  validates: :content_body, length: { in: 50..250 }
  validates: :rating, :inclusion { in: 1..5 }
  validates_presence_of :content_body, :rating
end
