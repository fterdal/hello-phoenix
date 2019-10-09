defmodule HelloWeb.RobotView do
  use HelloWeb, :view

  def robot_name(robot) do
    if String.length(robot.name) === 0 do
      "No Name"
    else
      robot.name
    end
  end

  # TODO: Read this https://hexdocs.pm/phoenix/routing.html#path-helpers
  def robot_path(conn, robot) do
    "http://localhost:4000/robots"
  end

  def robot_image(robot) do
    if String.length(robot.name) === 0 do
      img_tag("https://robohash.org/robot")
    else
      img_tag("https://robohash.org/#{robot.name}")
    end
  end
end
