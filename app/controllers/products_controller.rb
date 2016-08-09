class ProductsController < ApplicationController

  def create
  	@product = Product.new(params[:product])
  	@product.save
  end

  def new
  end

  private
  	def products_params
    	params.require(:product).permit(:description, :price)
  	end

end

