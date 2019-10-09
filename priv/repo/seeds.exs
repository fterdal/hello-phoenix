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

  @robots [
    %{ name: "Finn", fuel_level: 87 },
    %{ name: "Ryan", fuel_level: 50 },
    %{ name: "Collin", fuel_level: 12 },
    %{ name: "Priti", fuel_level: 5 },
    %{ name: "Holly", fuel_level: 99 },
    %{ name: "Ben", fuel_level: 74 },
    %{ name: "Brett", fuel_level: 26 },
  ]

  def clear do
    IO.puts("CLEARING DATABASE...")
    Repo.delete_all(Robot)
  end

  def seed do
    clear()
    IO.puts("SEEDING DATABASE...")
    for n <- @robots, do: Robots.create_robot(n)
  end

end

Hello.DatabaseSeeder.seed()
