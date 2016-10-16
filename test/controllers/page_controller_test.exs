defmodule Int300.PageControllerTest do
  use Int300.ConnCase

  test "GET / has the elm-container", %{conn: conn} do
    conn = get conn, "/"
    assert html_response(conn, 200) =~ "elm-container"
  end
end
