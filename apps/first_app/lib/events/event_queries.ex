defmodule FirstApp.EventQueries do
    import Ecto.Query
    alias FirstApp.{Repo, Events}

    def get_all do
      Repo.all(from Events)
    end

    def get_all_from_location(location) do
      query = from e in Events,
        where: e.location == ^location
      Repo.all(query)
    end

end
