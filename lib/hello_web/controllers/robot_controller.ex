defmodule HelloWeb.RobotController do
  use HelloWeb, :controller

  alias Hello.Robots
  alias Hello.Robots.Robot

  def index(conn, _params) do
    robots = Robots.list_robots()
    render(conn, "index.html", robots: robots)
  end

  def new(conn, _params) do
    changeset = Robot.changeset(%Robot{}, %{})
    render(conn, "new.html", changeset: changeset)
  end

  def create(conn, %{"robot" => robot_params}) do
    Robots.create_robot(robot_params)

    conn
    |> put_flash(:info, "Robot created successfully.")
    |> redirect(to: "/robots")
  end
end
