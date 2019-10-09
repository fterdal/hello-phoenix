defmodule Hello.Robots do
  alias Hello.Repo
  alias Hello.Robots.Robot

  # with {:ok, list} <- :application.get_key(:hello, :modules) do
  #   IO.inspect(list)
  # end

  def create_robot(attrs \\ %{}) do
    %Robot{}
    |> Robot.changeset(attrs)
    |> Repo.insert()
  end

  def get_robot(id) do
    Repo.get(Robot, id)
  end

  def list_robots() do
    Repo.all(Robot)
  end

  def delete_robot(%Robot{} = robot) do
    Repo.delete(robot)
  end
end
