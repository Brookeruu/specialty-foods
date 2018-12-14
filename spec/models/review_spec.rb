require 'rails_helper'

# RSpec.describe Review, type: :model do
#   pending "add some examples to (or delete) #{__FILE__}"
# end

describe Review do
  it {should validates_presence_of :content_body, :rating}
  it {should belongs_to :product, :author}
end
