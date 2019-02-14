class TodolistsController < ApplicationController
  def index
    @todolists = Todolist.all
  end

  def show
    @todolist = Todolist.find(params[:id])
  end

  def new
  end

  def create
    @todolist =
    Todolist.new(todolist_params)

    @todolist.save
    redirect_to @todolist
  end

  private
    def todolist_params
      params.require(:todolist).permit(:todo, :priority, :deadline)
    end
end
