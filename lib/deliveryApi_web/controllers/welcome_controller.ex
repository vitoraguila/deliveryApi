defmodule DeliveryApiWeb.WelcomeController do
  use DeliveryApiWeb, :controller

  def index(conn, _params) do
    conn
    |> put_status(:ok)
    |> text("Welcome :)")
  end
end
