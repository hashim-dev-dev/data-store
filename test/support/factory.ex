defmodule DataStore.Factory do
  use ExMachina.Ecto, repo: DataStore.Repo

  # Define your factories in /test/factories and declare it here
  use DataStore.TaskFactory
end
