# The name of this view in Looker is "Vetarans Survival Rate"
view: vetarans_survival_rate {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `edw-modernization.survival_analysis.vetarans_survival_rate`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Cumulative Survival" in Explore.

  dimension: cumulative_survival {
    type: number
    sql: ${TABLE}.cumulative_survival ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_cumulative_survival {
    type: sum
    sql: ${cumulative_survival} ;;
  }

  measure: average_cumulative_survival {
    type: average
    sql: ${cumulative_survival} ;;
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

  dimension: time_in_obs {
    type: number
    sql: ${TABLE}.time_in_obs ;;
  }

  dimension: units {
    type: number
    sql: ${TABLE}.units ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
