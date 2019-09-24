explore: linkedin_ads_ad_impressions {
  persist_with: linkedin_ads_etl_datagroup
  hidden: yes
  from: linkedin_ads_ad_impressions
  view_name: fact
}

view: linkedin_ads_ad_impressions {
  extends: [ad_metrics_base, date_base, period_base, date_primary_key_base]

  derived_table: {
    datagroup_trigger: linkedin_ads_etl_datagroup
    explore_source: linkedin_ad_impressions_campaign {
      column: _date { field: fact.date_date }
      column: account_id { field: campaign.account_id}
      derived_column: channel { sql: "LinkedIn" ;;}
      derived_column: account_name {  sql: CAST(NULL AS STRING);;  }
      column: campaign_id { field: fact.campaign_id_string }
      column: campaign_name { field: campaign.name }
      derived_column: ad_group_id { sql: CAST(NULL AS STRING) ;;}
      derived_column: ad_group_name { sql: CAST(NULL AS STRING) ;;}
      column: cost { field: fact.total_cost }
      column: impressions { field: fact.total_impressions }
      column: clicks { field: fact.total_clicks }
      column: conversions { field: fact.total_conversions }
      column: conversionvalue { field: fact.total_conversionvalue }
    }
  }

  dimension: _date {
    hidden: yes
    type: date_raw
  }

  dimension: cost {
    hidden: yes
    sql: ${TABLE}.cost ;;
  }

  dimension: conversions {
    hidden: yes
    sql: ${TABLE}.conversions ;;
  }
  dimension: channel {}
  dimension: account_id {
    hidden: yes
  }
  dimension: campaign_id {
    hidden: yes
  }
  dimension: ad_group_id {
    hidden: yes
  }
  dimension: account_name {}
  dimension: campaign_name {}
  dimension: ad_group_name {}
  dimension: cross_channel_ad_group_key_base {
    hidden: yes
    sql: concat(${channel}, ${account_id}, ${campaign_id}, ${ad_group_id}) ;;
  }
  dimension: key_base {
    hidden: yes
    sql: ${cross_channel_ad_group_key_base} ;;
  }
}
