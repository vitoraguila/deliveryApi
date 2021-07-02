defmodule DeliveryApiWeb.OrdersView do
  use DeliveryApiWeb, :view

  alias DeliveryApi.Order

  def render("create.json", %{order: %Order{} = order}) do
    %{
      message: "Order created!",
      item: order
    }
  end
end
