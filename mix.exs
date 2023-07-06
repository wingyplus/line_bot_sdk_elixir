defmodule LINE.MixProject do
  use Mix.Project

  def project do
    [
      app: :line_bot_sdk_elixir,
      version: "0.1.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:oapi_generator, github: "aj-foster/open-api-generator", branch: "aj/params-from-path"}
    ]
  end
end
