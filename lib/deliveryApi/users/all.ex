defmodule DeliveryApi.Users.GetAll do
  alias DeliveryApi.{Repo, User}

  def all(), do: Repo.all(User)
end
