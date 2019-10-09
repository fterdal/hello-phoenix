defmodule HelloWeb.Router do
  use HelloWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", HelloWeb do
    pipe_through :browser

    get "/", PageController, :index
    resources "/robots", RobotController, only: [:index, :new]

    # get "/potato",
    #     (defmodule SillyModule do
    #        def potato(conn, _others) do
    #          send_resp(conn, 200, "Hello from the potato")
    #        end
    #      end),
    #     :potato
  end

  # Other scopes may use custom stacks.
  # scope "/api", HelloWeb do
  #   pipe_through :api
  # end
end
