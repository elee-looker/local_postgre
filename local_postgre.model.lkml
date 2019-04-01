connection: "local_postgre"

# include all the views
include: "*.view"

datagroup: local_postgre_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: local_postgre_default_datagroup

explore: ra {}
