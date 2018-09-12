include: "li_ad_metrics_base.view"

explore: campaign_stats {
  from: campaign_stats
  view_name: fact
  hidden: yes
  group_label: "LinkedIn Ads"
  label: "Impressions"
  view_label: "Impressions"
}

view: campaign_stats {
  extends: [linkedin_ads_config, date_base, period_base, li_ad_metrics_base]
  sql_table_name: {{ fact.linkedin_ads_schema._sql }}.campaign_stats ;;

  dimension: _date {
    hidden: yes
    type: date_raw
    sql: CAST(${TABLE}.day AS DATE) ;;
    convert_tz: no
  }

  dimension: account_id_string {
    hidden: yes
    sql: CAST(${account_id} AS STRING) ;;
  }

  dimension: campaign_id_string {
    hidden: yes
    sql: CAST(${campaign_id} AS STRING) ;;
  }

  dimension: _fivetran_synced {
    hidden: yes
    type: date_time
  }

  dimension: account_id {
    hidden: yes
    type: number
  }

  dimension: account_name {
    type: string
  }

  dimension: action_clicks {
    hidden: yes
    type: number
  }

  dimension: ad_unit_clicks {
    hidden: yes
    type: number
  }

  dimension: campaign_id {
    hidden: yes
    type: number
  }

  dimension: campaign_name {
    type: string
  }

  dimension: clicks {
    hidden: yes
    type: number
  }

  dimension: comments {
    hidden: yes
    type: number
  }

  dimension: company_page_clicks {
    hidden: yes
    type: number
  }

  dimension: conversion_value_in_local_currency {
    hidden: yes
    type: number
  }

  dimension: cost_in_local_currency {
    hidden: yes
    type: number
  }

  dimension: cost_in_usd {
    hidden: yes
    type: number
  }

  dimension: day {
    hidden: yes
    type: date_time
    convert_tz: no
  }

  dimension: external_website_conversions {
    hidden: yes
    type: number
  }

  dimension: external_website_post_click_conversions {
    hidden: yes
    type: number
  }

  dimension: external_website_post_view_conversions {
    hidden: yes
    type: number
  }

  dimension: follows {
    hidden: yes
    type: number
  }

  dimension: impressions {
    hidden: yes
    type: number
  }

  dimension: landing_page_clicks {
    hidden: yes
    type: number
  }

  dimension: lead_generation_mail_contact_info_shares {
    hidden: yes
    type: number
  }

  dimension: lead_generation_mail_interested_clicks {
    hidden: yes
    type: number
  }

  dimension: likes {
    hidden: yes
    type: number
  }

  dimension: one_click_lead_form_opens {
    hidden: yes
    type: number
  }

  dimension: one_click_leads {
    hidden: yes
    type: number
  }

  dimension: opens {
    hidden: yes
    type: number
  }

  dimension: other_engagements {
    hidden: yes
    type: number
  }

  dimension: shares {
    hidden: yes
    type: number
  }

  dimension: text_url_clicks {
    hidden: yes
    type: number
  }

  dimension: total_engagements {
    hidden: yes
    type: number
  }

  dimension: viral_clicks {
    hidden: yes
    type: number
  }

  dimension: viral_comments {
    hidden: yes
    type: number
  }

  dimension: viral_company_page_clicks {
    hidden: yes
    type: number
  }

  dimension: viral_follows {
    hidden: yes
    type: number
  }

  dimension: viral_impressions {
    hidden: yes
    type: number
  }

  dimension: viral_landing_page_clicks {
    hidden: yes
    type: number
  }

  dimension: viral_likes {
    hidden: yes
    type: number
  }

  dimension: viral_one_click_lead_form_opens {
    hidden: yes
    type: number
  }

  dimension: viral_one_click_leads {
    hidden: yes
    type: number
  }

  dimension: viral_other_engagements {
    hidden: yes
    type: number
  }

  dimension: viral_shares {
    hidden: yes
    type: number
  }

  dimension: viral_total_engagements {
    hidden: yes
    type: number
  }
}
