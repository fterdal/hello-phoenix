defmodule Hello.Robots.Robot do
  use Ecto.Schema
  import Ecto.Changeset

  schema "robots" do
    field :name, :string, default: ""
    field :fuel_level, :integer, default: 0
    timestamps()
  end

  @doc false
  def changeset(robot, attrs) do
    robot
    |> cast(attrs, [:name, :fuel_level])
    |> validate_required([:name, :fuel_level])
    |> validate_inclusion(:fuel_level, 0..100)
  end
end
