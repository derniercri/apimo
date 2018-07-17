# Apimo

**TODO: Add description**

## Installation

```
export APIMO_TOKEN=your token 
export APIMO_PROVIDER=your id
```

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `apimo` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:apimo, "~> 0.1.0"}
  ]
end
```

```elixir
config :apimo,
  token: "xxxxxxxxxxxxxxxx",
  provider: "xxxxxxxxxxxxxxxxxxxx"
```

```
Apimo.fetch_agencies()
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/apimo](https://hexdocs.pm/apimo).

