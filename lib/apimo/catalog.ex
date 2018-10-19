defmodule Apimo.Catalog do
  import Apimo, only: [get: 1]

  def contact_title, do: get("/catalogs/contact_title")

  def lead_type, do: get("/catalogs/lead_type")

  def lead_step, do: get("/catalogs/lead_step")

  def property_activity, do: get("/catalogs/property_activity")

  def property_areas, do: get("/catalogs/property_areas")

  def property_adjacency, do: get("/catalogs/property_adjacency")

  def property_agreement, do: get("/catalogs/property_agreement")

  def property_availability, do: get("/catalogs/property_availability")

  def property_building, do: get("/catalogs/property_building")

  def property_category, do: get("/catalogs/property_category")

  def property_subcategory, do: get("/catalogs/property_subcategory")

  def property_condition, do: get("/catalogs/property_condition")

  def property_floor, do: get("/catalogs/property_floor")

  def property_flooring, do: get("/catalogs/property_flooring")

  def property_heating_device, do: get("/catalogs/property_heating_device")

  def property_heating_access, do: get("/catalogs/property_heating_access")

  def property_heating_type, do: get("/catalogs/property_heating_type")

  def property_hot_water_device, do: get("/catalogs/property_hot_water_device")

  def property_hot_water_access, do: get("/catalogs/property_hot_water_access")

  def property_land, do: get("/catalogs/property_land")

  def property_lease, do: get("/catalogs/property_lease")

  def property_location, do: get("/catalogs/property_location")

  def property_orientation, do: get("/catalogs/property_orientation")

  def property_period, do: get("/catalogs/property_period")

  def property_proximity, do: get("/catalogs/property_proximity")

  def property_reglementation, do: get("/catalogs/property_reglementation")

  def property_financial, do: get("/catalogs/property_financial")

  def property_service, do: get("/catalogs/property_service")

  def property_service_category, do: get("/catalogs/property_service_category")

  def property_standing, do: get("/catalogs/property_standing")

  def property_step, do: get("/catalogs/property_step")

  def property_status, do: get("/catalogs/property_status")

  def property_type, do: get("/catalogs/property_type")

  def property_subtype, do: get("/catalogs/property_subtype")

  def property_view_landscape, do: get("/catalogs/property_view_landscape")

  def property_view_type, do: get("/catalogs/property_view_type")

  def property_waste_water, do: get("/catalogs/property_waste_water")

  def unit_area, do: get("/catalogs/unit_area")

  def unit_length, do: get("/catalogs/unit_length")

  def user_group, do: get("/catalogs/user_group")
end
