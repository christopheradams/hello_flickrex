defmodule HelloFlickrexWeb.PageController do
  use HelloFlickrexWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end