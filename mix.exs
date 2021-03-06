defmodule Elixometer.Mixfile do
  use Mix.Project

  def project do
    [app: :elixometer,
     version: "0.0.1",
     elixir: "~> 1.0",
     deps: deps]
  end

  def application do
    [ mod: {Elixometer.App, []},
      applications: [:logger, :exometer]]
  end

  defp deps do
    [
        {:meck, github: "eproxus/meck", tag: "0.8.2", override: true},
        {:edown, github: "uwiger/edown", tag: "0.7", override: true},
        {:lager, github: "basho/lager", tag: "2.1.0", override: true},
        {:exometer, github: "pspdfkit-labs/exometer"},
        {:netlink, github: "Feuerlabs/netlink", ref: "d6e7188e", override: true},
    ]
  end
end
