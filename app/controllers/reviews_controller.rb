class ReviewsController < ApplicationController
  before_action :authenticate_user!

  def new
    @product = Product.find(params[:product_id])
    @review = @product.reviews.new
  end

  def create
    @product = Product.find(params[:product_id])
    @review = @product.reviews.new(review_params)
    @review.user_id = current_user.id
    if @review.save
      redirect_to product_path(@review.product)
    else
      render :new
    end
  end

private
  def review_params
    params.require(:review).permit(:content_body, :rating)
  end

end
