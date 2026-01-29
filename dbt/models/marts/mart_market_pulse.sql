SELECT
  client_id,
  COUNT(*) AS event_count,
  SUM(metric_1) AS total_metric
FROM {{ ref('int_market_pulse_enriched') }}
GROUP BY client_id;
