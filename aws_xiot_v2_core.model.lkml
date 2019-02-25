connection: "aws_xiot_v2_core"

# include all the views
include: "*.view"

datagroup: aws_xiot_v2_core_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: aws_xiot_v2_core_default_datagroup

explore: xiot_stats_current {}
explore: xiot_stats_current_pivot {}
