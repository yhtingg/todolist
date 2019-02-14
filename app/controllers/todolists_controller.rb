class TodolistsController < ApplicationController
  def index
    @todolists = Todolist.all
  end

  def show
    @todolist = Todolist.find(params[:id])
  end

  def new
    @todolist = Todolist.new
  end

  def create
    @todolist = Todolist.new(todolist_params)

    if @todolist.save
      redirect_to @todolist
    else
      render 'new'
    end
  end

  private
    def todolist_params
      params.require(:todolist).permit(:todo, :priority, :deadline)
    end
end
