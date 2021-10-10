defmodule SentrySampleWeb.PageLive do
  use SentrySampleWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  def handle_event("notify", %{}, socket) do
    ExtNotifier.notify("Send from button!")

    {:noreply, socket |> put_flash(:info, "Notified!")}
  end
end
