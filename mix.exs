defmodule Linex.MixProject do
  use Mix.Project

  def project do
    [
      app: :linex,
      version: "0.1.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      description: description(),
      deps: deps(),
      name: "LINEx",
      package: package(),
      source_url: "git@github.com:stevencch99/linex.git"
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:ex_doc, "~> 0.27", only: :dev, runtime: false}
    ]
  end

  def description() do
    "The LINE API wrapper"
  end

  def package() do
    [
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/stevencch99/linex"},
      maintainers: ["stevencch99"]
    ]
  end
end
