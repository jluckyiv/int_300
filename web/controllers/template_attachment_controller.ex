defmodule Int300.TemplateAttachmentController do
  use Int300.Web, :controller

  def show(conn, params) do
    filename = params["id"]
    conn
    |> put_resp_content_type("application/pdf", nil)
    |> put_resp_header("content-disposition", ~s[attachment; filename="#{filename}"])
    |> send_file(200, "web/static/assets/templates/#{filename}")
  end
end

