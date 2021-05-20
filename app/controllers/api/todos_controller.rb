class Api::TodosController < ApplicationController

  def index
    @todos = Todo.all
    render json: @todos
  end

  def create
    @todo = Todo.create(todo_params)
    render json: @todo
  end

  private
  def todo_params
    params.require(:todo).permit(:title)
  end
end