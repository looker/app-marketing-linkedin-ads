view: li_ad_metrics_base {
  extension: required
  extends: [ad_metrics_base]

  dimension: conversions {
    sql: ${external_website_conversions} ;;
  }

  dimension: conversionvalue {
    sql: ${conversion_value_in_local_currency} ;;
  }

  dimension: cost {
    sql: ${cost_in_local_currency} ;;
  }
}
