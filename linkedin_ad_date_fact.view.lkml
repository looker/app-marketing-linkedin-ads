
explore: linkedin_ad_date_fact {
  persist_with: linkedin_ads_etl_datagroup
  from: linkedin_ad_date_fact
  view_name: fact
  label: "Ad This Period"
  view_label: "Ad This Period"

  join: last_fact {
    from: linkedin_ad_date_fact
    view_label: "Ad Prior Period"
    sql_on:
      ${fact.ad_id} = ${last_fact.ad_id} AND
      ${fact.date_last_period} = ${last_fact.date_period} AND
      ${fact.date_day_of_period} = ${last_fact.date_day_of_period} ;;
    relationship: one_to_one
  }
}

view: linkedin_ad_key_base {
  extends: [date_primary_key_base]
  extension: required

  dimension: ad_key_base {
    hidden: no
    sql: {% if _dialect._name == 'snowflake' %}
        TO_CHAR(${campaign_id}) || '-' ||  TO_CHAR(${ad_id})
      {% elsif _dialect._name == 'redshift' %}
        CAST(${campaign_id} AS VARCHAR) || '-' || CAST(${ad_id} AS VARCHAR)
      {% else %}
        CONCAT(CAST(${campaign_id} AS STRING), "-", CAST(${ad_id} AS STRING))
      {% endif %} ;;
  }
  dimension: key_base {
    hidden: yes
    sql: ${ad_key_base} ;;
  }
}

view: linkedin_ad_date_fact {
  extends: [date_base, linkedin_ad_metrics_base, period_base,
    ad_metrics_period_comparison_base, linkedin_ad_key_base]
  derived_table: {
    datagroup_trigger: linkedin_ads_etl_datagroup
    explore_source: linkedin_ad_impressions_ad {
      column: _date { field: fact.date_date }
      column: ad_id {field: fact.ad_id}
      column: campaign_id {field: campaign.id}
      column: clicks {field: fact.total_clicks }
      column: conversions {field: fact.total_conversions}
      column: revenue {field: fact.total_conversionvalue}
      column: cost {field: fact.cost}
      column: impressions { field: fact.total_impressions}
      column: conversionvalue { field: fact.total_conversionvalue}
    }
  }
  dimension: ad_id {
    hidden: yes
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

  set: detail {
    fields: [ad_id]
  }
}
