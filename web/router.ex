defmodule Int300.Router do
  use Int300.Web, :router

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

  scope "/", Int300 do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    resources "/template/inline", TemplateInlineController, only: [:show]
    resources "/template/attachment", TemplateAttachmentController, only: [:show]
  end

  # Other scopes may use custom stacks.
  # scope "/api", Int300 do
  #   pipe_through :api
  # end
end
