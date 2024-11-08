defmodule TodoApp.Todos do
  import Ecto.Query
  alias TodoApp.Repo
  alias TodoApp.Schemas.{User, Todo}

  def create_user(attrs) do
    %User{}
    |> User.changeset(attrs)
    |> Repo.insert()
  end

  def create_todo(attrs) do
    %Todo{}
    |> Todo.changeset(attrs)
    |> Repo.insert()
  end

  def list_todos(user_id) do
    Todo
      |> where(user_id: ^user_id)
      |> Repo.all()
  end

  def update_todo(todo, attrs) do
    todo
      |> Todo.changeset(attrs)
      |> Repo.update()
  end

  def delete_todo(todo) do
    Repo.delete(todo)
  end

  def get_todo(id) do
    Repo.get(Todo, id)
  end

  def get_user(id) do
    Repo.get(User, id)
  end

  def get_user_by_email(email) do
    Repo.get_by(User, email: email)
  end

  def get_all_todo do
    Repo.all(Todo)
  end

  def get_all_user do
    Repo.all(User)
  end
end
