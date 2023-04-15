connection: "aj_argolis"
include: "/views/**/vetarans_survival_rate.view"
#include: "/views/**/*.view"
explore: vetarans_survival_rate {
  label: "Veteran Survival Rate"

  # Define a join to the patient table
#  join: patient {
#    sql_on: ${veteran_survival.patient_id} = ${patient.patient_id} ;;
#  }

}
