view: xiot_stats_current {
  sql_table_name: dbo.XIOT_STATS_CURRENT ;;

  dimension: count {
    type: number
    sql: ${TABLE}.Count ;;
  }


  dimension: project_id {
    type: string
    sql: ${TABLE}.ProjectID ;;
  }



  dimension: stat_id {
    type: string
    sql: ${TABLE}.StatID ;;
  }

  dimension: stat_source {
    type: string
    sql: ${TABLE}.StatSource ;;
  }

  measure: record_count {
    type: count
    drill_fields: []
  }
}
