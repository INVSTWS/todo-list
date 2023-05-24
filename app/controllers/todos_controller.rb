class TodosController < ApplicationController

  def index
    @todos = Todo.all
    @new_todo = Todo.new # переменная @new_todo создает новую запись в БД, а метод create создает эту запись на
    #основе данных из формы и сохраняет её в БД. Затем перенаправляет пользователя на страницу со списком всех элементов todo-list`a.
  end

  def create
    @todo = Todo.create todo_params
    redirect_to action: :index # action: в redirect_to указывает на действие контроллера, на которое нужно перенаправить пользователя
  end

  private

  def todo_params
    params.require(:todo).permit(:title)
  end
end
