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
# defmodule Hello.DatabaseSeeder do

alias Hello.Repo
alias Hello.Robots.Robot

# @name_list ["Finn", "Ryan", "Priti", "Collin"]
# @fuel_level_list [21, 43, 76, 87]
name_list = ["Finn", "Ryan", "Priti", "Collin"]
fuel_level_list = [21, 43, 76, 87]

# Repo.delete_all()
# def insert_robot do
  Repo.insert!(%Robot{
    name: name_list |> Enum.random(),
    fuel_level: fuel_level_list |> Enum.random()
  })
# end

# def clear() do
  # Repo.delete_all()
# end

# end
