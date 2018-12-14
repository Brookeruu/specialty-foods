class Review < ApplicationRecord
  validates_presence_of :content_body, :rating
  # belongs_to :product, :author
end
