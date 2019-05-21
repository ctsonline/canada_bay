connection: "ctsdev"

# include all the views
include: "*.view"

datagroup: canada_bay_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: canada_bay_default_datagroup

explore: canadab_wm {
  label: "Canada Bay Water Meters"
}

explore: canadab_reusewm {
  label: "Canada Bay Reuse Water Meters"
}

explore: canadab_power {
  label: "Canada Bay Power Meters"
}

explore: canada_lights {
  label: "Canada Bay Lights"
}
