defmodule Hello.Repo.Migrations.ImageUrlVirtual do
  use Ecto.Migration

  def change do
    alter table(:robots) do
      remove :image_url
      # Huh, none of these approaches seem to work.
      # Even the brand new dummy column does show up in Postgres table 🤔
      add :image_url, :string, virtual: true, default: "https://robohash.org/robot"
      add :dummy, :integer, virtual: true
    end
  end
end
