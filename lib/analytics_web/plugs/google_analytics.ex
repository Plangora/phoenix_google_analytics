defmodule AnalyticsWeb.GoogleAnalytics do

    def init(opts), do: Keyword.put(opts, :env, Application.get_env(:analytics, :env))

    def call(conn, env: :prod), do: assign(conn, :ga_id, Application.get_env(:analytics, :ga_id))
    def call(conn, _opts), do: conn
end
