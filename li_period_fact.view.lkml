include: "li_ad_metrics_base.view"

explore: li_period_fact {
  persist_with: linkedin_ads_etl_datagroup
  hidden: no
  from: li_period_fact
  view_name: fact
  label: "This Period"
  view_label: "This Period"

  join: last_fact {
    from: li_period_fact
    view_label: "Prior Period"
    sql_on:
    ${fact.date_last_period} = ${last_fact.date_period}
    AND ${fact.date_day_of_period} = ${last_fact.date_day_of_period}
    AND ${fact.campaign_id} = ${last_fact.campaign_id}
    AND ${fact.account_id} = ${last_fact.account_id} ;;
    relationship: one_to_one
  }
}
view: li_period_fact {
  extends: [linkedin_ads_config, date_base, period_base, li_ad_metrics_base]
  sql_table_name: {{ fact.linkedin_ads_schema._sql }}.campaign_stats ;;
    dimension: account_id {
      hidden: yes
    }
    dimension: campaign_id {
      hidden: yes
    }
    dimension: _date {
      hidden: yes
      type: date_raw
      sql: CAST(${TABLE}.day AS DATE) ;;
      convert_tz: no
    }

    dimension: key_base {
      hidden: yes
      sql:
      {% if _dialect._name == 'redshift' %}
        CAST(${account_id} AS VARCHAR) || '-' || CAST(${campaign_id} AS VARCHAR)
      {% else %}
        CONCAT(CAST(${account_id} AS STRING),"-", CAST(${campaign_id} AS STRING),
      {% endif %} ;;

      }

    dimension: primary_key {
      primary_key: yes
      hidden: yes
      sql:
      {% if _dialect._name == 'redshift' %}
        CAST(${date_period} AS VARCHAR)
              || '|'::text || ${date_day_of_period}
              || '|'::text || ${key_base}
      {% else %}
        CONCAT(CAST(${date_period} AS STRING)
              , "|", ${date_day_of_period},
              , "|", ${key_base}
            )
      {% endif %} ;;
    }
    }
