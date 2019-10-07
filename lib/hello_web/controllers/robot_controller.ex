defmodule HelloWeb.RobotController do
  use HelloWeb, :controller
  alias Hello.Robots

  def index(conn, _params) do
    robots = Robots.list_robots()
    render(conn, "index.html", robots: robots)
  end
end
