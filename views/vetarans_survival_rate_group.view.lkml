# The name of this view in Looker is "Vetarans Survival Rate Group"
view: vetarans_survival_rate_group {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `edw-modernization.survival_analysis.vetarans_survival_rate_group`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Celltype" in Explore.

  dimension: celltype {
    type: number
    sql: ${TABLE}.celltype ;;
  }
  dimension: celltype_derived {
    type: string
    description: "Derived celltype dimension"
    expression: "CASE WHEN celltype = 1 THEN 'squamous' WHEN celltype = 2 THEN 'smallcell' WHEN celltype = 3 THEN 'adeno' WHEN celltype = 4 THEN 'large' END";;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_celltype {
    type: sum
    sql: ${celltype} ;;
  }

  measure: average_celltype {
    type: average
    sql: ${celltype} ;;
  }

  dimension: cumulative_survival {
    type: number
    sql: ${TABLE}.cumulative_survival ;;
  }

  dimension: failure_count {
    type: number
    sql: ${TABLE}.failure_count ;;
  }

  dimension: failure_rate {
    type: number
    sql: ${TABLE}.failure_rate ;;
  }

  dimension: survival_rate {
    type: number
    sql: ${TABLE}.survival_rate ;;
  }

  dimension: time {
    type: number
    sql: ${TABLE}.time ;;
  }

  dimension: units {
    type: number
    sql: ${TABLE}.units ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: cumulative_survival_m {
    type: sum
    drill_fields: [time,celltype,cumulative_survival,survival_rate]
  }
}
