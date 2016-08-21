defmodule Grades.AdminController do
  use Grades.Web, :controller

  def new(conn, _params) do
    render conn, "new.html"
  end
end
