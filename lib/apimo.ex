defmodule Apimo do
  use Application

  @endpoint "https://api.apimo.pro"

  defp options() do
    [
      hackney: [
        basic_auth: {
          Application.get_env(:apimo, :provider, System.get_env("APIMO_PROVIDER")),
          Application.get_env(:apimo, :token, System.get_env("APIMO_TOKEN"))
        }
      ]
    ]
  end

  def fetch_agencies() do
    case HTTPoison.get("#{@endpoint}/agencies", [], options()) do
      {:ok, res} -> res.body |> Poison.decode(keys: :atoms)
    end
  end
end
