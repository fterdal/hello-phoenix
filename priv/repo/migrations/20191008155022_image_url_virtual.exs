defmodule Hello.Repo.Migrations.ImageUrlVirtual do
  use Ecto.Migration

  def change do
    alter table(:robots) do
      remove :image_url

    end
  end
end
