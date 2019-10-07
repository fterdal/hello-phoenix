defmodule Hello.Robots do
  alias Hello.Repo
  alias Hello.Robots.Robot

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
end
