# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Hello.Repo.insert!(%Hello.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

defmodule Hello.DatabaseSeeder do
  alias Hello.Repo
  alias Hello.Robots
  alias Hello.Robots.Robot

  @robot_names [
    "Finn",
    "Ryan",
    "Collin",
    "Priti",
    "Holly"
  ]

  def clear do
    IO.puts("CLEARING DATABASE...")
    Repo.delete_all(Robot)
  end

  def seed do
    clear()
    IO.puts("SEEDING DATABASE...")
    for n <- @robot_names, do: Robots.create_robot(%{name: n})
  end

end

Hello.DatabaseSeeder.seed()
