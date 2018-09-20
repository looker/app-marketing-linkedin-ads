# LinkedIn Ads

LookML files for analysis of LinkedIn Ads. This is designed to work with a ETL and data warehouse adapter that will map the data schema e.g. [Fivetran BigQuery LinkedIn Ads](https://github.com/looker/app-marketing-linkedin-ads-fivetran-bigquery).

## To use this block, you will need to:

### Include it in your [manifest.lkml](https://docs.looker.com/reference/manifest-reference):

Note: As of Looker 5.24 this block requires the Project Import feature currently in /admin/labs to be enabled on your Looker instance.

#### Via local projects:

Fork this repo and create a new project named `app-marketing-linkedin-ads-adapter`

manifest.lkml
```LookML
local_dependency: {
  project: "app-marketing-linkedin-ads-adapter"
}


local_dependency: {
  project: "app-marketing-linkedin-ads"
}```

Or remote dependency which don't require a local version.

manifest.lkml
```LookML

remote_dependency: app-marketing-linkedin-ads-adapter {
  url: "git://github.com/looker/app-marketing-linkedin-ads-fivetran-bigquery"
  ref: "3aa0e9dca82f327f9bb79ed7cb8889ea49d0de23"
}

remote_dependency: app-marketing-linkedin-ads {
  url: "git://github.com/looker/app-marketing-linkedin-ads"
  ref: "991ba4a6ff6bb1e3a99c0d3a3e5c77546031097b"
}```

Note that the `ref:` should point to the latest commit in each respective repo [linkedin-ads-fivetran-bigquery](https://github.com/looker/app-marketing-linkedin-ads-fivetran-bigquery/commits/master) and [linkedin-ads](https://github.com/looker/app-marketing-linkedin-ads/commits/master).

2. Create a `linkedin_ads_config` view that is assumed by this project. This configuration requires a  file

For example:

linkedin_ads_config.view.lkml
```LookML
view: linkedin_ads_config {
  extension: required

  dimension: linkedin_ads_schema {
    hidden: yes
    sql:linkedin_ads;;
  }
}
```

3. Include the view files in your model.

For example:

marketing_analytics.model.lkml
```LookML
include: "/app-marketing-linkedin-ads-adapter/*.view"
include: "/app-marketing-linkedin-ads/*.view"
include: "/app-marketing-linkedin-ads/*.dashboard"
```


For a reference of all of the fields names and definitions reference LinkedIn’s API documentation for [Ads Reporting](https://developer.linkedin.com/docs/guide/v2/ads/ads-reporting).
