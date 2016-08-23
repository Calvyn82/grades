defmodule Grades.Admin do
  use Grades.Web, :model

  schema "admins" do
    field :email, :string
    field :crypted_password, :string
    field :password, :string, virtual: true
    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:email, :password])
    |> update_change(:email, &String.downcase/1)
    |> unique_constraint(:email)
    |> validate_required([:email, :password])
    |> validate_length(:password, min: 5)
    |> validate_format(:email, ~r/[a-z0-9\.]{1,}@[a-z0-9]{1,}\.[a-z]{3,7}/)
  end
end
