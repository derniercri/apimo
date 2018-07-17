defmodule Apimo do
  use Application

  use HTTPoison.Base

  @endpoint "https://api.apimo.pro"

  def process_request_options(options) do
    options ++
      [
        hackney: [
          basic_auth: {
            Application.get_env(:apimo, :provider, System.get_env("APIMO_PROVIDER")),
            Application.get_env(:apimo, :token, System.get_env("APIMO_TOKEN"))
          }
        ]
      ]
  end

  def process_url(url), do: @endpoint <> url

  def process_response_body(body), do: body |> Poison.decode!(keys: :atoms)

  def fetch_agencies(), do: get("/agencies")

  def fetch_agency_properties(agency_id), do: get("/agencies/#{agency_id}/properties")

  def fetch_agency_contacts(agency_id), do: get("/agencies/#{agency_id}/contacts")

  def fetch_agency_leads(agency_id), do: get("/agencies/#{agency_id}/leads")

  def fetch_agency_residences(agency_id), do: get("/agencies/#{agency_id}/residences")

  def fetch_agency_requests(agency_id), do: get("/agencies/#{agency_id}/requests")

  def fetch_agency_contracts(agency_id), do: get("/agencies/#{agency_id}/contracts")

  def fetch_agency_actions(agency_id), do: get("/agencies/#{agency_id}/actions")
end
