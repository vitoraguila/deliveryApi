defmodule DeliveryApi do
  alias DeliveryApi.Users.Create, as: UserCreate
  alias DeliveryApi.Users.Get, as: UserGet
  alias DeliveryApi.Users.GetAll, as: UserGetAll

  defdelegate create_user(params), to: UserCreate, as: :call
  defdelegate get_user_by_id(id), to: UserGet, as: :by_id
  defdelegate get_all(), to: UserGetAll, as: :all
end
