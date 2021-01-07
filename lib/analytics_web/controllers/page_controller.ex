defmodule AnalyticsWeb.PageController do
  use AnalyticsWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def no_index(conn, _params) do
    conn
    |> put_resp_header("x-robots-tag", "noindex")
    |> render("noindex.html")
  end
end
