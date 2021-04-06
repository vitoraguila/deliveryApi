defmodule DeliveryApi.Users.Update do
  alias DeliveryApi.{Error, Repo, User}

  alias Ecto.UUID

  def call(%{"id" => id} = params) do
    case UUID.cast(id) do
      :error -> {:error, Error.build_id_format_error()}
      {:ok, _uuid} -> update(params)
    end
  end

  defp update(%{"id" => id} = params) do
    case Repo.get(User, id) do
      nil -> {:error, Error.build_user_not_found_error()}
      user -> do_update(user, params)
    end
  end

  defp do_update(user, params) do
    user
    |> User.changeset(params)
    |> Repo.update()
  end
end
