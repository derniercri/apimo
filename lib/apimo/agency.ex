defmodule Apimo.Agency do
  import Apimo, only: [get: 1]

  def list, do: get("/agencies")

  def properties(agency_id), do: get("/agencies/#{agency_id}/properties")

  def contacts(agency_id), do: get("/agencies/#{agency_id}/contacts")

  def leads(agency_id), do: get("/agencies/#{agency_id}/leads")

  def residences(agency_id), do: get("/agencies/#{agency_id}/residences")

  def requests(agency_id), do: get("/agencies/#{agency_id}/requests")

  def contracts(agency_id), do: get("/agencies/#{agency_id}/contracts")

  def actions(agency_id), do: get("/agencies/#{agency_id}/actions")
end
