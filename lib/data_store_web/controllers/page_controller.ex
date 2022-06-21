defmodule DataStoreWeb.PageController do
  use DataStoreWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
