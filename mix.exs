defmodule Apimo.MixProject do
  use Mix.Project

  @version "0.1.0"

  def project do
    [
      app: :apimo,
      version: @version,
      elixir: "~> 1.6",
      description: "Apimo client for Elixir",
      start_permanent: Mix.env() == :prod,
      package: package(),
      docs: docs(),
      build_embedded: Mix.env() == :prod,
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
      {:ex_doc, ">= 0.0.0", only: :dev},
      {:httpoison, "~> 1.2"},
      {:poison, "~> 3.1"}
    ]
  end

  def docs do
    [
      extras: ["README.md"],
      source_ref: "v#{@version}"
    ]
  end

  defp package do
    # These are the default files included in the package
    [
      files: ["lib", "mix.exs", "README.md"],
      maintainers: ["Guillaume Bailleul<laibulle@gmail.com>"],
      licenses: ["MIT"],
      links: %{
        "GitHub" => "https://github.com/derniercri/apimo",
        "DernierCri" => "https://derniercri.io/"
      }
    ]
  end
end
