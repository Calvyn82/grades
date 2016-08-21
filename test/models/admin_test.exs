defmodule Grades.AdminTest do
  use Grades.ModelCase

  alias Grades.Admin

  @valid_attrs %{crypted_password: "some content", email: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Admin.changeset(%Admin{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Admin.changeset(%Admin{}, @invalid_attrs)
    refute changeset.valid?
  end
end
