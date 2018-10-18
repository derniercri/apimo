defmodule Apimo.Catalog do
  import Apimo, only: [get: 1]

  def property_areas, do: get("/catalogs/property_areas")
end
