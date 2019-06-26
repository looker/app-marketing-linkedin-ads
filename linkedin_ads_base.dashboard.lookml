- dashboard: linkedin_ads_base
  extension: required
  layout: newspaper
  embed_style:
    background_color: "#ffffff"
    show_title: false
    title_color: "#3a4245"
    show_filters_bar: false
    tile_text_color: "#3a4245"
    text_tile_text_color: ''
  filters:
    - name: Period
      title: Period
      type: field_filter
      default_value: 28 day
      allow_multiple_values: false
      required: true
      model: marketing_analytics
      explore: linkedin_ads_ad_impressions
      listens_to_filters: []
      field: fact.period
    - name: Period Latest
      title: Period Latest
      type: field_filter
      default_value: 'Yes'
      allow_multiple_values: false
      required: true
      model: marketing_analytics
      explore: linkedin_ads_ad_impressions
      listens_to_filters: []
      field: fact.date_period_latest
    - name: Campaign
      title: Campaign
      type: field_filter
      default_value: ''
      allow_multiple_values: true
      required: false
      model: marketing_analytics
      explore: linkedin_ads_ad_impressions
      listens_to_filters:
      - Period
      - Period Latest
      - Account
      field: fact.campaign_name
