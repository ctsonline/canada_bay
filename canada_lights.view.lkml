view: canada_lights {
  view_label: "CCB Lights"
  sql_table_name: public.ctsfieldmousedata ;;

  dimension: a1 {
    group_label: "Analogs"
    type: number
    sql: ${TABLE}.a1 ;;
  }

  dimension: a2 {
    group_label: "Analogs"
    type: number
    sql: ${TABLE}.a2 ;;
  }

  dimension: a3 {
    group_label: "Analogs"
    type: number
    sql: ${TABLE}.a3 ;;
  }

  dimension: a4_count60{
    type: number
    sql: ${a4}>550 ;;
  }

  dimension: a4 {
    group_label: "Analogs"
    type: number
    sql: ${TABLE}.a4 ;;
  }

  dimension: cid {
    label: "Customer ID"
    type: number
    value_format_name: id
    sql: ${TABLE}.cid ;;
  }

  dimension: d1 {
    group_label: "Digital"
    type: number
    sql: ${TABLE}.d1 ;;
  }

  dimension: d2 {
    group_label: "Digital"
    type: number
    sql: ${TABLE}.d2 ;;
  }

  dimension: r1 {
    group_label: "Relays"
    type: number
    sql: ${TABLE}.r1 ;;
  }

  dimension: r2 {
    group_label: "Relays"
    type: number
    sql: ${TABLE}.r2 ;;
  }

  dimension: r3 {
    group_label: "Relays"
    type: number
    sql: ${TABLE}.r3 ;;
  }

  dimension: r4 {
    group_label: "Relays"
    type: number
    sql: ${TABLE}.r4 ;;
  }

  dimension: sid {
    label: "Site ID"
    type: number
    value_format_name: id
    sql: ${TABLE}.sid ;;
  }

  dimension: client {
    type: string
    hidden: no
    sql: REPLACE(${cid},'11','CoM1') ;;
  }

  dimension: site_name {
    type: string
    hidden: no
    sql: REPLACE(${sid},'3','Yarra BBQ') ;;
  }

  dimension_group: time10{
    type: time
    timeframes: [minute10]
    sql:TIMESTAMPTZ(${TABLE}.timestamp) ;;
  }
  dimension_group: timestamp {
    type: time
    timeframes: [raw, time, time_of_day, date, week, month, hour_of_day, hour, hour3, minute, minute10]
    sql: TIMESTAMPTZ(${TABLE}.timestamp);;
    drill_fields: [timestamp_date,timestamp_hour,timestamp_week]
  }

#   2017.11.14 AD at 13:31:28 AEDT

  measure: count {
    type: count
    drill_fields: []
  }

  measure: average_value_a1 {
    type: average
    sql: ${a1} ;;
  }

  measure: average_value_a2 {
    type: average
    sql: ${a2} ;;
  }

  measure: average_value_a3 {
    label: "Fat Tray Depth"
    type: average
    sql: ${a3} ;;
  }

  measure: average_value_a4 {
    label: "Hotplate Temp"
    type: average
    sql: ${a4} ;;
  }

  measure: max_value_a4 {
    label: "Hotplate Temp Max"
    type: max
    sql: ${a4} ;;
  }

  measure:greater_than_60{
    label: "Hotplate Temp > 60"
    type: count_distinct
    sql: ${a4_count60} ;;
  }

  measure: min_value_a4 {
    label: "Hotplate Temp Min"
    type: min
    sql: ${a4} ;;
  }

  measure: min_value_a1 {
    type: min
    sql: ${a1} ;;
  }

  measure: min_value_a2 {
    type: min
    sql: ${a2} ;;
  }

  measure: min_value_a3 {
    type: min
    sql: ${a3} ;;
  }


  measure: max_value_a1 {
    type: max
    sql: ${a1} ;;
  }

  measure: max_value_a2 {
    type: max
    sql: ${a2} ;;
  }

  measure: max_value_a3 {
    type: max
    sql: ${a3} ;;
  }


  measure: max_value_d1 {
    label: "BBQ ON/OFF"
    type: string
    sql: ${d1}} ;;
  }

  measure: max_value_d2 {
    type: max
    sql: ${d2}} ;;
  }

  measure: d1_on {
    label: "BBQ On"
    type: number
    sql: ${d1}=1 ;;
  }

  measure: min_value_d2 {
    type: min
    sql: ${d2}} ;;
  }

}
