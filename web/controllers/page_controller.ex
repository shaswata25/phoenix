defmodule LearningPhx.PageController do
  use LearningPhx.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
