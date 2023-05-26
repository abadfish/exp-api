class Api::SubscriptionsController < ApplicationController
	# before_action :get_user, only: [:index, :show]

	def index
		# @subscriptions = @user.subscriptions
		@subscriptions = Subscription.all
		render json: @subscriptions
	end

	def create
		@sub = Subscription.create(subscription_params)
		render json: @sub
	end

	def show
		# @sub = @user.subscriptions.find(params[:id])
		@sub = Subscription.find(params[:id])
		render json: @sub
	end

	def subscription_params
		params.require(:subscription).permit(:product_id, :user_id, :sku)
	end

	def get_user
		@user = User.find(params[:user_id])
	end

end