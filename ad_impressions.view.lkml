view: linkedin_ad_impressions_base {
  extends: [date_base, period_base, linkedin_ad_metrics_base]
}

explore: linkedin_ad_impressions_campaign_template {
  persist_with: linkedin_ads_etl_datagroup
  extension: required
  extends: [linkedin_ad_impressions_campaign_adapter]
  from: linkedin_ad_impressions_campaign
  view_name: fact
  group_label: "Marketing Analytics"
  label: "LinkedIn Ads Impressions by Campaign"
  view_label: "Impressions by Campaign"
}

view: linkedin_ad_impressions_campaign_template {
  extends: [linkedin_ad_impressions_base, linkedin_ad_impressions_campaign_adapter]
}


explore: linkedin_ad_impressions_ad_template {
  persist_with: linkedin_ads_etl_datagroup
  extends: [linkedin_ad_impressions_ad_adapter]
  from: linkedin_ad_impressions_ad
  extension: required
  view_name: fact
  group_label: "Marketing Analytics"
  label: "LinkedIn Ads Impressions by Ad"
  view_label: "Impressions by Ad"
}

view: linkedin_ad_impressions_ad_template {
  extends: [linkedin_ad_impressions_base, linkedin_ad_impressions_ad_adapter]
}
