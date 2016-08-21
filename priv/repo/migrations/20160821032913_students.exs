defmodule Grades.Repo.Migrations.Students do
  use Ecto.Migration

  def change do
    create table(:students) do
      add :first_name, :string
      add :student_id, :integer, unique: true
      add :hour,       :integer
      add :grade,      :integer

      timestamps
    end
  end
end
