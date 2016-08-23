defmodule Grades.Session do
  alias Grades.Admin

  def login(params, repo) do
    admin = repo.get_by(Admin, email: String.downcase(params["email"]))
    case authenticate(admin, params["password"]) do
      true -> {:ok, admin}
      _    -> :error
    end
  end

  defp authenticate(admin, password) do
    case admin do
      nil -> false
      _   -> Comeonin.Bcrypt.checkpw(password, admin.crypted_password)
    end
  end
end
