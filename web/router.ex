defmodule Grades.Router do
  use Grades.Web, :router

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

  scope "/", Grades do
    pipe_through :browser # Use the default browser stack

    get    "/",            PageController,  :new
    get    "/admin",       AdminController, :new
    post   "/admin",       AdminController, :create
    delete "/admin",       AdminController, :delete
    get    "/:student_id", PageController,  :show
  end
end
