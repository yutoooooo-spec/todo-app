class UsersController < ApplicationController
    def index
        @todos = Todo.all
    end
end