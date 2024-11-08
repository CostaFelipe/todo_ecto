import Config

config :todo_app, TodoApp.Repo,
   database: "todo_app",
   username: "admin",
   password: "123",
   hostname: "localhost"

config :todo_app, ecto_repos: [TodoApp.Repo]
