defmodule Grades.Student do
  use Ecto.Schema

  schema "students" do
    field :first_name, :string
    field :student_id, :integer
    field :hour,       :integer
    field :grade,      :integer
  end
end
