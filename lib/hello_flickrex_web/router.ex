defmodule HelloFlickrexWeb.Router do
  use HelloFlickrexWeb, :router

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

  scope "/", HelloFlickrexWeb do
    pipe_through :browser

    get "/", PageController, :index
  end

  scope "/auth", HelloFlickrexWeb do
    pipe_through :browser

    get "/:provider", AuthController, :request
    get "/:provider/callback", AuthController, :callback
    delete "/logout", AuthController, :delete
  end

  # Other scopes may use custom stacks.
  # scope "/api", HelloFlickrexWeb do
  #   pipe_through :api
  # end
end
