defmodule DataStoreWeb.TaskControllerTest do
  use DataStoreWeb.ConnCase

  setup do
    _task = insert(:task)
    :ok
  end

  test "POST /tasks", %{conn: conn} do
    params = %{
      "title" => "Creating Distributed Systems",
      "description" => "The way of writing software is much different now."
    }

    response =
      conn
      |> post("/tasks", params)
      |> json_response(200)

    assert Map.has_key?(response, "id") == true
  end

  test "GET /tasks", %{conn: conn} do
    response =
      conn
      |> get("/tasks")
      |> json_response(200)

    assert length(response["tasks"]) == 1
  end
end
