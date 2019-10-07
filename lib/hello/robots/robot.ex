# defmodule Memex.Robots.Robot do
#   use Ecto.Schema
#   import Ecto.Changeset

#   schema "notes" do
#     field :title, :string
#     field :body, :string
#     belongs_to :user, Memex.Accounts.User

#     timestamps()
#   end

#   @doc false
#   def changeset(note, attrs) do
#     note
#     |> cast(attrs, [:title, :body, :user_id])
#     |> validate_required([:title, :body])
#   end
# end
