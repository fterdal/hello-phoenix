defmodule Hello.Repo.Migrations.CreateRobots do
  use Ecto.Migration

  def change do
    create table(:robots) do
      add :name, :string, default: ""
      add :fuel_level, :float, default: 0.0
      add :image_url, :string, default: "https://robohash.org/robot"
    end
  end
end
