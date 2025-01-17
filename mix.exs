defmodule Eliver.Mixfile do
  use Mix.Project

  @version "2.0.3"

  def project do
    [
      app: :eliver,
      version: @version,
      elixir: "~> 1.3",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      description: "Interactive semantic versioning for Elixir packages",
      deps: deps(),
      package: package()
    ]
  end

  def application do
    [applications: [:logger]]
  end

  defp package do
    [
      maintainers: ["Martin Pretorius"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/glasnoster/eliver"},
      files: ["lib", "mix.exs", "README.md", "VERSION"]
    ]
  end

  defp deps do
    [
      {:credo, "~> 1.2", only: ~w[dev test]a, runtime: false},
      {:enquirer, "~> 0.1.0", organization: "narrativeapp"},
      {:ex_doc, "~> 0.12", only: ~w[dev test]a},
      {:git_ops, "~> 2.2", only: ~w[dev test]a}
    ]
  end
end
