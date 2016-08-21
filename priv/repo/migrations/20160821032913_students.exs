defmodule Grades.Repo.Migrations.Students do
  use Ecto.Migration

  def change do
    create table(:students) do
      add :first_name, :string
      add :student_id, :integer, size: 5, unique: true
      add :hour,       :integer
      add :grade,      :integer

      timestamps
  end
end
