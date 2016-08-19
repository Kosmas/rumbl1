defmodule Rumbl1.PageController do
  use Rumbl1.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
