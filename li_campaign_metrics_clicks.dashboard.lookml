- dashboard: li_campaign_metrics__clicks
  title: LI Campaign Metrics - Clicks
  extends: linkedin_ads_base
  elements:
  - title: Clicks To Date
    name: Clicks To Date
    model: marketing_analytics
    explore: li_campaign_stats
    type: looker_line
    fields:
    - fact.date_date
    - fact.total_conversions
    - fact.average_cost_per_conversion
    - fact.average_conversion_rate
    - fact.average_cost_per_click
    - fact.average_click_rate
    - fact.total_impressions
    - fact.total_clicks
    fill_fields:
    - fact.date_date
    sorts:
    - fact.date_date desc
    limit: 500
    column_limit: 50
    stacking: ''
    colors:
    - "#7869df"
    - "#6e98f9"
    - "#8ac8ca"
    - "#d06180"
    - "#dc9d4f"
    - "#4bb86a"
    - "#a4a6a9"
    - "#a6b7ff"
    - "#afe8fd"
    - "#ea9895"
    - "#f1e582"
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    point_style: none
    series_colors: {}
    series_types: {}
    limit_displayed_rows: false
    hidden_series:
    - fact.average_cost_per_conversion
    - fact.average_conversion_rate
    - fact.average_cost_per_click
    - fact.average_click_rate
    - fact.total_conversions
    - fact.total_impressions
    y_axes:
    - label: ''
      orientation: left
      series:
      - id: fact.total_conversions
        name: Conversions
        axisId: fact.total_conversions
        __FILE: 814cdb6746f88e59b96744c3633430035c531de70c67faf5e4e48d2536e4ae1c69aaa111/li_campaign_metrics_conversions.dashboard.lookml
        __LINE_NUM: 57
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: 814cdb6746f88e59b96744c3633430035c531de70c67faf5e4e48d2536e4ae1c69aaa111/li_campaign_metrics_conversions.dashboard.lookml
      __LINE_NUM: 54
    - label: ''
      orientation: left
      series:
      - id: fact.average_cost_per_click
        name: Cost per Click
        axisId: fact.average_cost_per_click
        __FILE: 814cdb6746f88e59b96744c3633430035c531de70c67faf5e4e48d2536e4ae1c69aaa111/li_campaign_metrics_conversions.dashboard.lookml
        __LINE_NUM: 69
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      type: linear
      __FILE: 814cdb6746f88e59b96744c3633430035c531de70c67faf5e4e48d2536e4ae1c69aaa111/li_campaign_metrics_conversions.dashboard.lookml
      __LINE_NUM: 66
    - label: ''
      orientation: left
      series:
      - id: fact.average_click_rate
        name: Click Through Rate
        axisId: fact.average_click_rate
        __FILE: 814cdb6746f88e59b96744c3633430035c531de70c67faf5e4e48d2536e4ae1c69aaa111/li_campaign_metrics_conversions.dashboard.lookml
        __LINE_NUM: 80
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      type: linear
      __FILE: 814cdb6746f88e59b96744c3633430035c531de70c67faf5e4e48d2536e4ae1c69aaa111/li_campaign_metrics_conversions.dashboard.lookml
      __LINE_NUM: 77
    - label:
      orientation: left
      series:
      - id: fact.average_cost_per_conversion
        name: Cost per Conversion
        axisId: fact.average_cost_per_conversion
        __FILE: 814cdb6746f88e59b96744c3633430035c531de70c67faf5e4e48d2536e4ae1c69aaa111/li_campaign_metrics_conversions.dashboard.lookml
        __LINE_NUM: 91
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: 814cdb6746f88e59b96744c3633430035c531de70c67faf5e4e48d2536e4ae1c69aaa111/li_campaign_metrics_conversions.dashboard.lookml
      __LINE_NUM: 88
    - label:
      orientation: right
      series:
      - id: fact.average_conversion_rate
        name: Conversion Rate
        axisId: fact.average_conversion_rate
        __FILE: 814cdb6746f88e59b96744c3633430035c531de70c67faf5e4e48d2536e4ae1c69aaa111/li_campaign_metrics_conversions.dashboard.lookml
        __LINE_NUM: 103
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: 814cdb6746f88e59b96744c3633430035c531de70c67faf5e4e48d2536e4ae1c69aaa111/li_campaign_metrics_conversions.dashboard.lookml
      __LINE_NUM: 100
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    show_null_points: true
    interpolation: linear
    query_timezone: America/Los_Angeles
    ordering: none
    show_null_labels: false
    show_dropoff: true
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: white
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    listen:
      Period: fact.period
      Period Latest: fact.date_period_latest
      Campaign: fact.campaign_name
      Account: fact.account_name
    row: 0
    col: 0
    width: 24
    height: 12
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
  - name: Account
    title: Account
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: marketing_analytics
    explore: linkedin_ads_ad_impressions
    listens_to_filters:
    - Period
    - Period Latest
    field: fact.account_name
