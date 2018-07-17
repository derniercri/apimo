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

  defp handle_response(res) do
    case res do
      {:ok, res} -> res.body |> Poison.decode(keys: :atoms)
    end
  end

  def fetch_agencies() do
    HTTPoison.get("#{@endpoint}/agencies", [], options()) |> handle_response()
  end

  def fetch_agency_properties(agency_id) do
    HTTPoison.get("#{@endpoint}/agencies/#{agency_id}/properties", [], options())
    |> handle_response()
  end

  def fetch_agency_contacts(agency_id) do
    HTTPoison.get("#{@endpoint}/agencies/#{agency_id}/contacts", [], options())
    |> handle_response()
  end

  def fetch_agency_leads(agency_id) do
    HTTPoison.get("#{@endpoint}/agencies/#{agency_id}/leads", [], options())
    |> handle_response()
  end

  def fetch_agency_residences(agency_id) do
    HTTPoison.get("#{@endpoint}/agencies/#{agency_id}/residences", [], options())
    |> handle_response()
  end

  def fetch_agency_requests(agency_id) do
    HTTPoison.get("#{@endpoint}/agencies/#{agency_id}/requests", [], options())
    |> handle_response()
  end

  def fetch_agency_contracts(agency_id) do
    HTTPoison.get("#{@endpoint}/agencies/#{agency_id}/contracts", [], options())
    |> handle_response()
  end

  def fetch_agency_actions(agency_id) do
    HTTPoison.get("#{@endpoint}/agencies/#{agency_id}/actions", [], options())
    |> handle_response()
  end
end
