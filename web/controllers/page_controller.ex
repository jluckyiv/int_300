defmodule Int300.PageController do
  use Int300.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
