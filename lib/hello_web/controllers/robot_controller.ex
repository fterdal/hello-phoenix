defmodule HelloWeb.RobotController do
  use HelloWeb, :controller

  alias Hello.Robots
  alias Hello.Robots.Robot

  def index(conn, _params) do
    robots = Robots.list_robots()
    render(conn, "index.html", robots: robots)
  end

  def new(conn, _params) do
    # TODO: Make a changeset and pass it to the template here
    changeset = Robot.changeset(%Robot{}, %{})
    render(conn, "new.html", changeset: changeset)
  end

  def create(conn, %{"robot" => robot_params}) do
    # TODO: How does this even work?
    Robots.create_robot(robot_params)
    redirect(conn, to: "/robots")
  end
end
