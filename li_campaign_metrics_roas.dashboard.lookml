- dashboard: li_campaign_metrics__return_on_ad_spend
  title: LinkedIn Ads - Return On Ad Spend
  extends: linkedin_ads_base
  layout: newspaper
  elements:
  - title: Return on Ad Spend to Date
    name: Return on Ad Spend to Date
    model: marketing_analytics
    explore: linkedin_campaign_date_fact
    type: looker_line
    fields: [fact.date_date, fact.total_conversions, fact.average_cost_per_conversion,
      fact.average_conversion_rate, fact.average_cost_per_click, fact.average_click_rate,
      fact.average_value_per_cost]
    fill_fields: [fact.date_date]
    sorts: [fact.date_date desc]
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{id: fact.total_conversions,
            name: Conversions, axisId: fact.total_conversions, __FILE: app-marketing-linkedin-ads/li_campaign_metrics_roas.dashboard.lookml,
            __LINE_NUM: 59}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear, __FILE: app-marketing-linkedin-ads/li_campaign_metrics_roas.dashboard.lookml,
        __LINE_NUM: 56}, {label: '', orientation: left, series: [{id: fact.average_cost_per_click,
            name: Cost per Click, axisId: fact.average_cost_per_click, __FILE: app-marketing-linkedin-ads/li_campaign_metrics_roas.dashboard.lookml,
            __LINE_NUM: 75}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, type: linear, __FILE: app-marketing-linkedin-ads/li_campaign_metrics_roas.dashboard.lookml,
        __LINE_NUM: 72}, {label: '', orientation: left, series: [{id: fact.average_conversion_rate,
            name: Conversion Rate, axisId: fact.average_conversion_rate, __FILE: app-marketing-linkedin-ads/li_campaign_metrics_roas.dashboard.lookml,
            __LINE_NUM: 90}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, type: linear, __FILE: app-marketing-linkedin-ads/li_campaign_metrics_roas.dashboard.lookml,
        __LINE_NUM: 87}, {label: !!null '', orientation: left, series: [{id: fact.average_click_rate,
            name: Click Through Rate, axisId: fact.average_click_rate, __FILE: app-marketing-linkedin-ads/li_campaign_metrics_roas.dashboard.lookml,
            __LINE_NUM: 105}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear, __FILE: app-marketing-linkedin-ads/li_campaign_metrics_roas.dashboard.lookml,
        __LINE_NUM: 102}, {label: !!null '', orientation: left, series: [{id: fact.average_cost_per_conversion,
            name: Cost per Conversion, axisId: fact.average_cost_per_conversion, __FILE: app-marketing-linkedin-ads/li_campaign_metrics_roas.dashboard.lookml,
            __LINE_NUM: 121}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear, __FILE: app-marketing-linkedin-ads/li_campaign_metrics_roas.dashboard.lookml,
        __LINE_NUM: 118}]
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
    hidden_series: [fact.total_conversions, fact.average_cost_per_conversion, fact.average_conversion_rate,
      fact.average_cost_per_click, fact.average_click_rate]
    legend_position: center
    colors: ["#7869df", "#6e98f9", "#8ac8ca", "#d06180", "#dc9d4f", "#4bb86a", "#a4a6a9",
      "#a6b7ff", "#afe8fd", "#ea9895", "#f1e582"]
    series_types: {}
    point_style: none
    series_colors:
      fact.average_value_per_cost: "#B32F37"
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
    width: 17
    height: 11
  - title: Return On Ad Spend By Day Of Week
    name: Return On Ad Spend By Day Of Week
    model: marketing_analytics
    explore: linkedin_ad_date_fact
    type: looker_bar
    fields: [fact.date_day_of_week, fact.average_value_per_cost]
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
      fact.average_value_per_cost: "#B32F37"
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
    col: 17
    width: 7
    height: 11
  - title: Return On Ad Spend By Bid Type
    name: Return On Ad Spend By Bid Type
    model: marketing_analytics
    explore: linkedin_ad_date_fact
    type: looker_bar
    fields: [fact.average_value_per_cost, fact.bid_type]
    filters: {}
    sorts: [fact.average_value_per_cost desc]
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
      fact.average_value_per_cost: "#B32F37"
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
    width: 16
    height: 8
  - title: Ad Return On Ad Spend Change
    name: Ad Return On Ad Spend Change
    model: marketing_analytics
    explore: linkedin_ad_date_fact
    type: looker_bar
    fields: [last_fact.average_value_per_cost, fact.average_value_per_cost, fact.average_value_per_cost_period_percent_change_abs,
      fact.ad_title, fact.campaign_name]
    filters:
      fact.total_conversions_period_delta_abs: ">0"
    sorts: [fact.average_value_per_cost_period_percent_change_abs desc]
    limit: 50
    column_limit: 50
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    y_axes: [{label: '', orientation: bottom, series: [{id: last_fact.average_value_per_cost,
            name: Ad Last Period, axisId: last_fact.average_value_per_cost, __FILE: app-marketing-config-5f71074d49e24011ceee3a8ee7cf1e94-17c0a9c0ef0b6e37e243eeece3212db4462642e5/bi_campaign_metrics_roas.dashboard.lookml,
            __LINE_NUM: 491}, {id: fact.average_value_per_cost, name: Ad This Period,
            axisId: fact.average_value_per_cost, __FILE: app-marketing-config-5f71074d49e24011ceee3a8ee7cf1e94-17c0a9c0ef0b6e37e243eeece3212db4462642e5/bi_campaign_metrics_roas.dashboard.lookml,
            __LINE_NUM: 494}], showLabels: false, showValues: false, unpinAxis: false,
        tickDensity: default, type: linear, __FILE: app-marketing-config-5f71074d49e24011ceee3a8ee7cf1e94-17c0a9c0ef0b6e37e243eeece3212db4462642e5/bi_campaign_metrics_roas.dashboard.lookml,
        __LINE_NUM: 488}]
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
      fact.average_value_per_cost: "#d06180"
      last_fact.average_value_per_cost: "#ea9895"
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
      campaign.campaign_name, fact.average_value_per_cost_period_percent_change_abs]
    listen:
      Period: fact.period
      Period Latest: fact.date_period_latest
      Campaign: fact.campaign_name
    row: 11
    col: 16
    width: 8
    height: 8
