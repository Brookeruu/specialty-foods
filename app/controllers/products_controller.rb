class ProductsController < ApplicationController

  def index
    @products = Product.all.paginate(:page => params[:page], :per_page => 9)
  end

  def usa
    @usa_products = Product.made_in_usa
  end

  def most_reviews
    @most_reviews_products = Product.most_reviews
  end

  def most_recent
    @most_recent_products = Product.most_recent
  end

  def show
    @product = Product.find(params[:id])
    @reviews = @product.reviews
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to products_path
    else
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to products_path
    else
      render :edit
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_paths
  end

    private
    def product_params
      params.require(:product).permit(:name, :cost, :origin)
    end

end
