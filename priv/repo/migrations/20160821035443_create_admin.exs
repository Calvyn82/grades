defmodule Grades.Repo.Migrations.CreateAdmin do
  use Ecto.Migration

  def change do
    create table(:admins) do
      add :email,            :string
      add :crypted_password, :string

      timestamps()
    end
    create unique_index(:admins, [:email])

  end
end
