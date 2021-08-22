defmodule DaisyGenLive.MixProject do
  use Mix.Project

 def project do
    [
      app: :daisy_gen_live,
      version: "0.1.1",
      elixir: "~> 1.12",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      description: "Generators to create templates with Tailwind CSS and Daisy ui.",
      name: "DaisyGenLive",
      package: %{
        maintainers: ["Aksel Stadler"],
        licenses: ["MIT"],
        links: %{
          github: "https://github.com/askasp/daisy_gen_live"
        },
      },
      source_url: "https://github.com/askasp/daisy_gen_live",
      homepage_url: "https://github.com/daisy_gen_live",
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
      {:phoenix, "~> 1.5.7"},
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false}
    ]
  end
end



