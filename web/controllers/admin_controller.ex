defmodule Grades.AdminController do
  use Grades.Web, :controller

  def new(conn, _params) do
    render conn, "new.html"
  end

  def create(conn, %{"admin" => admin_params}) do
    case Grades.Session.login(admin_params, Grades.Repo) do
      {:ok, admin} ->
        conn
        |> put_session(:current_admin, admin.id)
        |> put_flash(:info, "Logged in")
        |> redirect(to: "admin/dashboard")
      :error ->
        conn
        |> put_flash(:info, "Wrong email or password")
        |> render("new.html")
    end
  end
end
