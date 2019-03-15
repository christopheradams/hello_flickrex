defmodule HelloFlickrexWeb.PageControllerTest do
  use HelloFlickrexWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get(conn, "/")
    assert html_response(conn, 200) =~ "Überauth Flickr"
  end
end
