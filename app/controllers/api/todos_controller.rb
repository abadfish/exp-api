class Api::TodosController < ApplicationController
	before_action :get_user, only: [:create, :update]


  def index
    @todos = Todo.all
    render json: @todos
  end

  def create
    # @todo = Todo.create(todo_params)
		@todo = @user.todos.build(todo_params)
    # render json: @todo
  end

  def update
    binding.pry
  end

  private
  def todo_params
    params.require(:todo).permit(:title, :user_id)
  end

	def get_user
		@user = User.find(params[:user_id])
	end
end