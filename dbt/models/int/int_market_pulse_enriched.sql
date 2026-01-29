SELECT
  client_id,
  event_date,
  metric_1,
  metric_2
FROM {{ ref('stg_market_pulse') }};
