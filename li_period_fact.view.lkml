include: "linkedin_ads_ad_impressions.view"

explore: li_period_fact {
  persist_with: linkedin_ads_etl_datagroup
  from: li_period_fact
  view_name: fact
  label: "LinkedIn Period Comparison"
  view_label: "This Period"
  join: last_fact {
    from: li_period_fact
    view_label: "Prior Period"
    sql_on: ${fact.account_id} = ${last_fact.account_id} AND
      ${fact.campaign_id} = ${last_fact.campaign_id} AND
      ${fact.date_last_period} = ${last_fact.date_period} AND
      ${fact.date_day_of_period} = ${last_fact.date_day_of_period} ;;
    relationship: one_to_one
  }
}

view: li_period_fact {
  extends: [linkedin_ads_config, date_base, period_base, ad_metrics_base]
  derived_table: {
    datagroup_trigger: linkedin_ads_etl_datagroup
    explore_source: linkedin_ads_ad_impressions {
      column: _date { field: fact.date_date }
      column: account_name { field: fact.account_name }
      column: account_id { field: fact.account_id }
      column: campaign_id { field: fact.campaign_id }
      column: campaign_name { field: fact.campaign_name }
      column: clicks { field: fact.total_clicks }
      column: conversions { field: fact.total_conversions }
      column: conversionvalue { field: fact.total_conversionvalue }
      column: cost { field: fact.total_cost }
      column: impressions { field: fact.total_impressions }
    }
  }

  dimension: key_base {
    hidden: yes
    sql: CONCAT(CAST(${account_id} AS STRING),"-", CAST(${campaign_id} AS STRING));;
  }

  dimension: primary_key {
    primary_key: yes
    hidden: yes
    sql: CONCAT(CAST(${date_period} AS STRING)
              , "|", CAST(${date_day_of_period} AS STRING)
              , "|", ${key_base}
            ) ;;
  }
  dimension: account_id {
    hidden: yes
  }
  dimension: campaign_id {
    hidden: yes
  }
  dimension: account_name {}
  dimension: campaign_name {}
  dimension: date_day_of_period {
      hidden:  yes
  }
  dimension: _date {
    type: date_raw
  }
}
