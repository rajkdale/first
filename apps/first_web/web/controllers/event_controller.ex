defmodule FirstWeb.EventController do
    use FirstWeb.Web, :controller

    def show(conn, %{"id" => id}) do
      # text conn, "Events #{params["id"]}"
      event = FirstApp.EventQueries.get_by_id(id)
      |> IO.inspect()
      render conn, "details.html", event: event
    end

end
