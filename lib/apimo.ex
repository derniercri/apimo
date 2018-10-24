defmodule Apimo do
  use HTTPoison.Base

  @endpoint "https://api.apimo.pro"

  def process_request_options(options) do
    [
      hackney: [
        basic_auth: {
          Application.get_env(:apimo, :provider, System.get_env("APIMO_PROVIDER")),
          Application.get_env(:apimo, :token, System.get_env("APIMO_TOKEN"))
        }
      ]
    ]
    |> Keyword.merge(options)
  end

  def process_request_params(params) do
    case Application.get_env(:apimo, :culture) do
      nil ->
        params

      culture ->
        params
        |> Enum.into(%{})
        |> Map.put(:culture, culture)
    end
  end

  def process_url(url), do: @endpoint <> url

  def process_response_body(body), do: Poison.decode!(body)

  @deprecated "Use Apimo.Agency.list/0 instead"
  def fetch_agencies(), do: get("/agencies")

  @deprecated "Use Apimo.Agency.properties/1 instead"
  def fetch_agency_properties(agency_id), do: get("/agencies/#{agency_id}/properties")

  @deprecated "Use Apimo.Agency.contacts/1 instead"
  def fetch_agency_contacts(agency_id), do: get("/agencies/#{agency_id}/contacts")

  @deprecated "Use Apimo.Agency.leads/1 instead"
  def fetch_agency_leads(agency_id), do: get("/agencies/#{agency_id}/leads")

  @deprecated "Use Apimo.Agency.residences/1 instead"
  def fetch_agency_residences(agency_id), do: get("/agencies/#{agency_id}/residences")

  @deprecated "Use Apimo.Agency.requests/1 instead"
  def fetch_agency_requests(agency_id), do: get("/agencies/#{agency_id}/requests")

  @deprecated "Use Apimo.Agency.contracts/1 instead"
  def fetch_agency_contracts(agency_id), do: get("/agencies/#{agency_id}/contracts")

  @deprecated "Use Apimo.Agency.actions/1 instead"
  def fetch_agency_actions(agency_id), do: get("/agencies/#{agency_id}/actions")
end
