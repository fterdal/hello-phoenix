defmodule HelloWeb.RobotController do
  use HelloWeb, :controller

  alias Hello.Robots
  alias Hello.Robots.Robot

  def index(conn, _params) do
    robots = Robots.list_robots()
    render(conn, "index.html", robots: robots)
  end

  # TODO: Create a Not Found page to instead of redirecting with flash
  def show(conn, %{"id" => id}) do
    case Robots.get_robot(id) do
      %Robot{} = robot ->
        render(conn, "show.html", robot: robot)

      nil ->
        conn
        |> put_flash(:error, "Robot id #{id} not found")
        |> redirect(to: "/robots")
    end
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

  def delete(conn, %{"id" => id}) do
    IO.puts("DELETING ROBOT #{id}")
    case Robots.get_robot(id) do
      %Robot{} = robot ->
        Robots.delete_robot(robot)

        conn
        |> put_flash(:info, "Robot deleted successfully.")
        |> redirect(to: "/robots")

      nil ->
        conn
        |> put_flash(:error, "Robot id #{id} not found")
        |> redirect(to: "/robots")
    end
  end
end
