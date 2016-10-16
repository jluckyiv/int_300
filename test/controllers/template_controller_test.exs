defmodule Int300.TemplateControllerTest do
  use Int300.ConnCase

  test "GET /template/inline/int300.pdf", %{conn: conn} do
    conn = get conn, "/template/inline/int300.pdf"
    assert response(conn, 200) =~ "Request for Interpreter"
  end

end

