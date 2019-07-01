- dashboard: li_campaign_metrics_impressions
  title: LinkedIn Ads - Impressions
  extends: linkedin_ads_base
  elements:
  - title: Impressions To Date
    name: Impressions To Date
    model: marketing_analytics
    explore: linkedin_campaign_date_fact
    type: looker_line
    fields: [fact.date_date, fact.total_conversions, fact.average_cost_per_conversion,
      fact.average_conversion_rate, fact.average_cost_per_click, fact.average_click_rate,
      fact.total_impressions]
    fill_fields: [fact.date_date]
    sorts: [fact.date_date desc]
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{id: fact.total_conversions,
            name: Conversions, axisId: fact.total_conversions, __FILE: app-marketing-linkedin-ads/li_campaign_metrics_impressions.dashboard.lookml,
            __LINE_NUM: 57}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear, __FILE: app-marketing-linkedin-ads/li_campaign_metrics_impressions.dashboard.lookml,
        __LINE_NUM: 54}, {label: '', orientation: left, series: [{id: fact.average_cost_per_click,
            name: Cost per Click, axisId: fact.average_cost_per_click, __FILE: app-marketing-linkedin-ads/li_campaign_metrics_impressions.dashboard.lookml,
            __LINE_NUM: 73}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, type: linear, __FILE: app-marketing-linkedin-ads/li_campaign_metrics_impressions.dashboard.lookml,
        __LINE_NUM: 70}, {label: '', orientation: left, series: [{id: fact.average_click_rate,
            name: Click Through Rate, axisId: fact.average_click_rate, __FILE: app-marketing-linkedin-ads/li_campaign_metrics_impressions.dashboard.lookml,
            __LINE_NUM: 88}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, type: linear, __FILE: app-marketing-linkedin-ads/li_campaign_metrics_impressions.dashboard.lookml,
        __LINE_NUM: 85}, {label: !!null '', orientation: left, series: [{id: fact.average_cost_per_conversion,
            name: Cost per Conversion, axisId: fact.average_cost_per_conversion, __FILE: app-marketing-linkedin-ads/li_campaign_metrics_impressions.dashboard.lookml,
            __LINE_NUM: 103}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear, __FILE: app-marketing-linkedin-ads/li_campaign_metrics_impressions.dashboard.lookml,
        __LINE_NUM: 100}, {label: !!null '', orientation: right, series: [{id: fact.average_conversion_rate,
            name: Conversion Rate, axisId: fact.average_conversion_rate, __FILE: app-marketing-linkedin-ads/li_campaign_metrics_impressions.dashboard.lookml,
            __LINE_NUM: 119}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear, __FILE: app-marketing-linkedin-ads/li_campaign_metrics_impressions.dashboard.lookml,
        __LINE_NUM: 116}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    hidden_series: [fact.average_cost_per_conversion, fact.average_conversion_rate,
      fact.average_cost_per_click, fact.average_click_rate, fact.total_conversions]
    legend_position: center
    colors: ["#7869df", "#6e98f9", "#8ac8ca", "#d06180", "#dc9d4f", "#4bb86a", "#a4a6a9",
      "#a6b7ff", "#afe8fd", "#ea9895", "#f1e582"]
    series_types: {}
    point_style: none
    series_colors:
      fact.total_impressions: "#B1399E"
      fact.average_cost_per_click: "#f1e582"
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
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
    row: 0
    col: 0
    width: 16
    height: 11
  - title: Impressions By Day Of Week
    name: Impressions By Day Of Week
    model: marketing_analytics
    explore: linkedin_ad_date_fact
    type: looker_bar
    fields: [fact.total_impressions, fact.date_day_of_week]
    fill_fields: [fact.date_day_of_week]
    filters: {}
    sorts: [fact.date_day_of_week]
    limit: 50
    column_limit: 50
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    y_axes: [{label: '', orientation: bottom, series: [{axisId: fact.total_conversions,
            id: fact.total_conversions, name: Conversions}], showLabels: false, showValues: false,
        unpinAxis: false, tickDensity: default, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    hide_legend: false
    legend_position: center
    colors: ["#a6b7ff", "#7869df", "#ea9895", "#d06180", "#6e98f9", "#8ac8ca", "#dc9d4f",
      "#4bb86a", "#a4a6a9", "#a6b7ff", "#afe8fd", "#ea989"]
    series_types: {}
    point_style: none
    series_colors:
      fact.total_clicks: "#7869df"
      fact.total_conversions: "#9174F0"
      fact.total_cost: "#4bb86a"
      fact.average_cost_per_conversion: "#3EB0D5"
      fact.average_conversion_rate: "#8ac8ca"
      fact.average_click_rate: "#d06180"
      fact.average_cost_per_click: "#d06180"
      fact.average_cost_per_impression: "#B1399E"
      fact.total_impressions: "#B1399E"
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: gray
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: [campaign.name, ad_group.ad_group_name, ad_group.ad_group_name,
      campaign.campaign_name]
    listen:
      Period: fact.period
      Period Latest: fact.date_period_latest
      Campaign: fact.campaign_name
    row: 0
    col: 16
    width: 8
    height: 11
  - title: Ad Impressions Change
    name: Ad Impressions Change
    model: marketing_analytics
    explore: linkedin_ad_date_fact
    type: looker_bar
    fields: [last_fact.total_impressions_period_delta, last_fact.total_impressions,
      fact.total_impressions, last_fact.ad_title, last_fact.campaign_name]
    filters:
      fact.total_conversions_period_delta_abs: ">0"
    sorts: [last_fact.total_impressions_period_delta desc]
    limit: 50
    column_limit: 50
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    y_axes: [{label: '', orientation: bottom, series: [{id: last_fact.total_impressions,
            name: Ad Last Period, axisId: last_fact.total_impressions, __FILE: app-marketing-config-5f71074d49e24011ceee3a8ee7cf1e94-17c0a9c0ef0b6e37e243eeece3212db4462642e5/bi_campaign_metrics_impressions.dashboard.lookml,
            __LINE_NUM: 507}, {id: fact.total_impressions, name: Ad This Period, axisId: fact.total_impressions,
            __FILE: app-marketing-config-5f71074d49e24011ceee3a8ee7cf1e94-17c0a9c0ef0b6e37e243eeece3212db4462642e5/bi_campaign_metrics_impressions.dashboard.lookml,
            __LINE_NUM: 510}], showLabels: true, showValues: false, unpinAxis: false,
        tickDensity: default, type: linear, __FILE: app-marketing-config-5f71074d49e24011ceee3a8ee7cf1e94-17c0a9c0ef0b6e37e243eeece3212db4462642e5/bi_campaign_metrics_impressions.dashboard.lookml,
        __LINE_NUM: 504}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    hide_legend: false
    legend_position: center
    colors: ["#a6b7ff", "#7869df", "#ea9895", "#d06180", "#6e98f9", "#8ac8ca", "#dc9d4f",
      "#4bb86a", "#a4a6a9", "#a6b7ff", "#afe8fd", "#ea989"]
    series_types: {}
    point_style: none
    series_colors:
      fact.total_impressions: "#B1399E"
      last_fact.total_impressions: "#e38bd1"
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: gray
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: [campaign.name, ad_group.ad_group_name, ad_group.ad_group_name,
      campaign.campaign_name, last_fact.total_impressions_period_delta]
    listen:
      Period: fact.period
      Period Latest: fact.date_period_latest
      Campaign: fact.campaign_name
    row: 11
    col: 14
    width: 10
    height: 6
  - title: Impressions By Bid Type
    name: Impressions By Bid Type
    model: marketing_analytics
    explore: linkedin_ad_date_fact
    type: looker_bar
    fields: [fact.bid_type, fact.total_impressions]
    filters: {}
    sorts: [fact.total_impressions desc]
    limit: 50
    column_limit: 50
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    y_axes: [{label: '', orientation: bottom, series: [{axisId: fact.total_conversions,
            id: fact.total_conversions, name: Conversions}], showLabels: false, showValues: false,
        unpinAxis: false, tickDensity: default, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    hide_legend: false
    legend_position: center
    colors: ["#a6b7ff", "#7869df", "#ea9895", "#d06180", "#6e98f9", "#8ac8ca", "#dc9d4f",
      "#4bb86a", "#a4a6a9", "#a6b7ff", "#afe8fd", "#ea989"]
    series_types: {}
    point_style: none
    series_colors:
      fact.total_clicks: "#7869df"
      fact.total_conversions: "#9174F0"
      fact.total_cost: "#4bb86a"
      fact.average_cost_per_conversion: "#3EB0D5"
      fact.average_conversion_rate: "#8ac8ca"
      fact.average_click_rate: "#d06180"
      fact.average_cost_per_click: "#d06180"
      fact.average_cost_per_impression: "#B1399E"
      fact.total_impressions: "#B1399E"
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: gray
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: [campaign.name, ad_group.ad_group_name, ad_group.ad_group_name,
      campaign.campaign_name]
    listen:
      Period: fact.period
      Period Latest: fact.date_period_latest
      Campaign: fact.campaign_name
    row: 11
    col: 0
    width: 14
    height: 6
