class ProductsController < ApplicationController
#before_filter :authenticate_user!
  def index
    @products = Shoppe::Product.root.ordered.includes(:product_categories, :variants)
    @products = @products.group_by(&:product_category)
  end

  def show
    @product = Shoppe::Product.root.find_by_permalink(params[:permalink])
  end

end
