view: xiot_stats_current_pivot {
  sql_table_name: dbo.XIOT_STATS_CURRENT_PIVOT ;;

  dimension: cdf_records_count {
    type: number
    sql: ${TABLE}."CDF Records (Count)" ;;
  }

  dimension: cdf_size_mbs {
    type: number
    sql: ${TABLE}."CDF Size (MBs)" ;;
  }

  dimension: cdf_streams {
    type: number
    sql: ${TABLE}."CDF Streams" ;;
  }

  dimension: matter_type {
    type: string
    sql: ${TABLE}.MatterType ;;
  }

  dimension: project_id {
    type: string
    sql: ${TABLE}.ProjectID ;;
  }

  dimension: rdf_file_count {
    type: number
    sql: ${TABLE}."RDF File (Count)" ;;
  }

  dimension: rdf_size_mbs {
    type: number
    sql: ${TABLE}."RDF Size (MBs)" ;;
  }

  dimension: udf_records_count {
    type: number
    sql: ${TABLE}."UDF Records (Count)" ;;
  }

  dimension: udf_size_mbs {
    type: number
    sql: ${TABLE}."UDF Size (MBs)" ;;
  }

  dimension: License {
    type: string
    sql: ${TABLE}.License ;;
  }
  dimension: udf_streams {
    type: number
    sql: ${TABLE}."UDF Streams" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
