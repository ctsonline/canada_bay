connection: "ctsdev"

# include all the views
include: "*.view"

datagroup: canada_bay_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: canada_bay_default_datagroup
