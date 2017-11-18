defmodule GeoDoodleWeb.ReactController do
  use GeoDoodleWeb, :controller

  def index(conn, _params) do
    initial_state = %{}
    react_stdio_args = %{
      component: Application.app_dir(:geo_doodle, "priv/static/server/js/app.js"),
      props: %{
        "location" => conn.request_path,
        "initial_state" => initial_state
      }
    }
    {:ok, %{"html" => html}} = StdJsonIo.json_call(react_stdio_args)
    render(conn, "index.html", html: html, initial_state: initial_state)
  end
end
