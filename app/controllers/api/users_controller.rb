class Api::UsersController < ApplicationController

	def index 
		@users = User.all
		render '/users/index.json.jbuilder'
	end

	def show
		@user = User.find(params[:id])
		render '/users/show.json.jbuilder'
	end

end