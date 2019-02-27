view: xiot_stats_overall_pivot {
  sql_table_name: dbo.XIOT_STATS_OVERALL_PIVOT ;;

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

  dimension: license {
    type: string
    sql: ${TABLE}.License ;;
  }

  dimension: life_of_matter {
    type: number
    sql: ${TABLE}.LifeOfMatter ;;
  }

  dimension_group: log {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.LogDate ;;
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

  dimension: udf_streams {
    type: number
    sql: ${TABLE}."UDF Streams" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
