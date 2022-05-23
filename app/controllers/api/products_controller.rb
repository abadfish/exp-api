class Api::ProductsController < ApplicationController

	def index
		@products = Product.all
		render json: @products
	end

	def create
		@prod = Product.create(product_params)
		render json: @prod
	end

	def show
		@prod = Product.find(params[:id])
		render json: @prod
	end

	private 

	def product_params
		params.require(:product).permit(:product_name, :product_type)
	end

end