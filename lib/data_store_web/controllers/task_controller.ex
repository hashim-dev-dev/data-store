defmodule DataStoreWeb.TaskController do
  use DataStoreWeb, :controller

  alias DataStore.Repo
  alias DataStore.Task
  import Ecto.Query

  def index(conn, _) do
    query =
      from(
        t in DataStore.Task,
        select: %{
          title: t.title,
          description: t.description
        }
      )

    tasks = Repo.all(query)

    json(conn, %{tasks: tasks})
  end

  def create(conn, params) do
    {:ok, task} =
      %Task{}
      |> Task.changeset(params)
      |> IO.inspect(label: "changeset =>")
      |> Repo.insert()

    json(conn, %{id: task.id})
  end
end
