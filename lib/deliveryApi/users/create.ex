defmodule DeliveryApi.Users.Create do
  alias DeliveryApi.{Repo, User}

  def call(params) do
    params
    |> User.changeset()
    |> Repo.insert()
  end
end
