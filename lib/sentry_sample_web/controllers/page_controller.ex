defmodule SentrySampleWeb.PageController do
  use SentrySampleWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
