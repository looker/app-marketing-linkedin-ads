include: "linkedin_ad_metrics_base.view"
include: "date_fact.view"

explore: linkedin_campaign_date_fact {
  persist_with: linkedin_ads_etl_datagroup
  from: linkedin_campaign_date_fact
  view_name: fact
  label: "Campaign This Period"
  view_label: "Campaign This Period"

  join: last_fact {
    from: linkedin_campaign_date_fact
    view_label: "Campaign Prior Period"
    sql_on:
      ${fact.campaign_id} = ${last_fact.campaign_id} AND
      ${fact.date_last_period} = ${last_fact.date_period} AND
      ${fact.date_day_of_period} = ${last_fact.date_day_of_period} ;;
  }
}

view: linkedin_campaign_key_base {
  extends: [date_primary_key_base]
  extension: required

  dimension: campaign_key_base {
    hidden: yes
    sql: {% if _dialect._name == 'snowflake' %}
         TO_CHAR(${campaign_id})
      {% elsif _dialect._name == 'redshift' %}
        CAST(${campaign_id} AS VARCHAR)
      {% else %}
        CAST(${campaign_id} as STRING)
      {% endif %} ;;
  }
  dimension: key_base {
    hidden: no
    sql: ${campaign_key_base} ;;
  }
}

view: linkedin_campaign_date_fact {
  extends: [date_base, linkedin_ad_metrics_base, period_base,
    ad_metrics_period_comparison_base, ad_metrics_weighted_period_comparison_base,
    ad_metrics_parent_comparison_base, linkedin_campaign_key_base]
  derived_table: {
    datagroup_trigger: linkedin_ads_etl_datagroup
    explore_source: linkedin_ad_impressions_campaign {
      column: _date { field: fact.date_date }
      column: campaign_id {field: fact.campaign_id}
      column: clicks {field: fact.total_clicks }
      column: conversions {field: fact.total_conversions}
      column: revenue {field: fact.total_conversionvalue}
      column: cost {field: fact.cost}
      column: impressions { field: fact.total_impressions}
      column: conversionvalue { field: fact.total_conversionvalue}
    }
  }
  dimension: campaign_id {
    hidden: yes
  }

  dimension: cost {
    hidden: yes
    sql: ${TABLE}.cost ;;
  }

  dimension: conversions {
    hidden: yes
    sql: ${TABLE}.conversions ;;
  }

  dimension: conversionvalue {
    hidden: yes
    sql: ${TABLE}.conversionvalue ;;
  }

  dimension: _date {
    hidden: yes
    type: date_raw
    sql: CAST(${TABLE}._date AS DATE) ;;
  }

  dimension: primary_key {
    hidden: no
  }

  set: detail {
    fields: [campaign_id]
  }
}
