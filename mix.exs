defmodule Detour.MixProject do
  use Mix.Project

  def project do
    [
      app: :detour,
      version: "0.0.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger],
      mod: { Detour.Application, [] }
    ]
  end

  defp deps do
    [
      { :gen_smtp, "~> 0.15" }
    ]
  end
end
