defmodule DataStore.TaskFactory do
  alias DataStore.Task

  defmacro __using__(_opts) do
    quote do
      def task_factory do
        %Task{
          title: sequence(:title, &"Task Title #{&1}"),
          description: "Creating software can sometimes be boring."
        }
      end
    end
  end
end
