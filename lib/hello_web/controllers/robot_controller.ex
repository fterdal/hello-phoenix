defmodule HelloWeb.RobotController do
  use HelloWeb, :controller
  alias Hello.Robots
  # alias Hello.Robots.Robot

  def index(conn, _params) do
    robots = Robots.list_robots()
    render(conn, "index.html", robots: robots)
  end

  def new(conn, _params) do
    # TODO: Make a changeset and pass it to the template here
    render(conn, "new.html", %{})
  end

  def tomato(conn, _params) do
    # TODO: Make a changeset and pass it to the template here
    render(conn, "form.html", %{})
  end
end
