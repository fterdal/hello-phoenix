defmodule HelloWeb.PageController do
  use HelloWeb, :controller

  def index(conn, _params) do
    # with {:ok, list} <- :application.get_key(:hello, :modules) do
    #   IO.inspect(list)
    # end

    render(conn, "index.html")
  end
end
