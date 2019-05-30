- dashboard: li_campaign_metrics__return_on_ad_spend
  title: LinkedIn Ads - Return On Ad Spend
  extends: linkedin_ads_base
  layout: newspaper
  elements:
  - title: Return on Ad Spend to Date
    name: Return on Ad Spend to Date
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
    - fact.average_value_per_cost
    fill_fields:
    - fact.date_date
    filters: {}
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
    - fact.total_conversions
    - fact.average_cost_per_conversion
    - fact.average_conversion_rate
    - fact.average_cost_per_click
    - fact.average_click_rate
    y_axes:
    - label: ''
      orientation: left
      series:
      - id: fact.total_conversions
        name: Conversions
        axisId: fact.total_conversions
        __FILE: 814cdb6746f88e59b96744c36334300346b6102a1baaa902a4b606a35a397d307cd81451/li_campaign_metrics_click_through_rate.dashboard.lookml
        __LINE_NUM: 56
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: 814cdb6746f88e59b96744c36334300346b6102a1baaa902a4b606a35a397d307cd81451/li_campaign_metrics_click_through_rate.dashboard.lookml
      __LINE_NUM: 53
    - label: ''
      orientation: left
      series:
      - id: fact.average_cost_per_click
        name: Cost per Click
        axisId: fact.average_cost_per_click
        __FILE: 814cdb6746f88e59b96744c36334300346b6102a1baaa902a4b606a35a397d307cd81451/li_campaign_metrics_click_through_rate.dashboard.lookml
        __LINE_NUM: 68
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      type: linear
      __FILE: 814cdb6746f88e59b96744c36334300346b6102a1baaa902a4b606a35a397d307cd81451/li_campaign_metrics_click_through_rate.dashboard.lookml
      __LINE_NUM: 65
    - label: ''
      orientation: left
      series:
      - id: fact.average_conversion_rate
        name: Conversion Rate
        axisId: fact.average_conversion_rate
        __FILE: 814cdb6746f88e59b96744c36334300346b6102a1baaa902a4b606a35a397d307cd81451/li_campaign_metrics_click_through_rate.dashboard.lookml
        __LINE_NUM: 79
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      type: linear
      __FILE: 814cdb6746f88e59b96744c36334300346b6102a1baaa902a4b606a35a397d307cd81451/li_campaign_metrics_click_through_rate.dashboard.lookml
      __LINE_NUM: 76
    - label:
      orientation: left
      series:
      - id: fact.average_click_rate
        name: Click Through Rate
        axisId: fact.average_click_rate
        __FILE: 814cdb6746f88e59b96744c36334300346b6102a1baaa902a4b606a35a397d307cd81451/li_campaign_metrics_click_through_rate.dashboard.lookml
        __LINE_NUM: 90
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: 814cdb6746f88e59b96744c36334300346b6102a1baaa902a4b606a35a397d307cd81451/li_campaign_metrics_click_through_rate.dashboard.lookml
      __LINE_NUM: 87
    - label:
      orientation: left
      series:
      - id: fact.average_cost_per_conversion
        name: Cost per Conversion
        axisId: fact.average_cost_per_conversion
        __FILE: 814cdb6746f88e59b96744c36334300346b6102a1baaa902a4b606a35a397d307cd81451/li_campaign_metrics_click_through_rate.dashboard.lookml
        __LINE_NUM: 102
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: 814cdb6746f88e59b96744c36334300346b6102a1baaa902a4b606a35a397d307cd81451/li_campaign_metrics_click_through_rate.dashboard.lookml
      __LINE_NUM: 99
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
