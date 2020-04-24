defmodule AnalyticsWeb.GoogleAnalytics do

    def init(opts) do
        case Mix.env() do
            :prod ->
                Keyword.put(opts, :ga_id, "123")
            _ -> 
                opts
        end
    end

    def call(conn, ga_id: ga_id), do: assign(conn, :ga_id, ga_id)
    def call(conn, _opts), do: conn
end