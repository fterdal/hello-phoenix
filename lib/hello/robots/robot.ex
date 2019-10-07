defmodule Hello.Robots.Robot do
  use Ecto.Schema
  import Ecto.Changeset

  schema "robots" do
    field :name, :string, default: ""
    field :fuel_level, :integer, default: 0
    field :image_url, :string, default: "https://robohash.org/robot"

    timestamps()
  end

  @doc false
  def changeset(robot, attrs) do
    robot
    |> cast(attrs, [:name, :fuel_level, :image_url])
    |> validate_required([:name, :fuel_level, :image_url])
    # Check to confirm this is right:
    |> validate_inclusion(:fuel_level, 0..100)
  end
end
