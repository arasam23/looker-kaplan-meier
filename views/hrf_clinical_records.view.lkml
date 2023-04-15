# The name of this view in Looker is "Hrf Clinical Records"
view: hrf_clinical_records {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `survival_analysis.hrf_clinical_records`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Age" in Explore.

  dimension: age {
    type: number
    sql: ${TABLE}.age ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_age {
    type: sum
    sql: ${age} ;;
  }

  measure: average_age {
    type: average
    sql: ${age} ;;
  }

  dimension: anaemia {
    type: number
    sql: ${TABLE}.anaemia ;;
  }

  dimension: creatinine_phosphokinase {
    type: number
    sql: ${TABLE}.creatinine_phosphokinase ;;
  }

  dimension: death_event {
    type: number
    sql: ${TABLE}.DEATH_EVENT ;;
  }

  dimension: diabetes {
    type: number
    sql: ${TABLE}.diabetes ;;
  }

  dimension: ejection_fraction {
    type: number
    sql: ${TABLE}.ejection_fraction ;;
  }

  dimension: high_blood_pressure {
    type: number
    sql: ${TABLE}.high_blood_pressure ;;
  }

  dimension: platelets {
    type: number
    sql: ${TABLE}.platelets ;;
  }

  dimension: serum_creatinine {
    type: number
    sql: ${TABLE}.serum_creatinine ;;
  }

  dimension: serum_sodium {
    type: number
    sql: ${TABLE}.serum_sodium ;;
  }

  dimension: sex {
    type: number
    sql: ${TABLE}.sex ;;
  }

  dimension: smoking {
    type: number
    sql: ${TABLE}.smoking ;;
  }

  dimension: time {
    type: number
    sql: ${TABLE}.time ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
