class UsersController < ApplicationController
    def index
        @todos = Todo.all
    end

    def create
        @todo = Todo.new(task: params[:task], date: params[:date])
        if @todo.save
            redirect_to users_path
        else
            render :index
        end
    end

    def destroy
        @todo = Todo.find(params[:id])
        @todo.destroy
        redirect_to users_path, notice: "ToDoを削除しました"
    end
end