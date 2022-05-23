class Api::SubscriptionsController < ApplicationController

	def index
		@subscriptions = Subscription.all
		render json: @subscriptions
	end

	def create
		@sub = Subscription.create(subscription_params)
		render json: @sub
	end

	def show
		@sub = Subscription.find(params[:id])
		render json: @sub
	end

	def subscription_params
		params.require(:subscription).permit(:product_id, :user_id, :sku)
	end

end