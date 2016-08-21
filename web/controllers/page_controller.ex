defmodule Grades.PageController do
  use Grades.Web, :controller

  def new(conn, _params) do
    render conn, "new.html"
  end

  def show(conn, %{"student_id" => student_id}) do
    render conn, "show.html", student_id: student_id
  end
end
