-- Weekly Market Pulse Extraction
-- Purpose: Generate client-level market metrics for reporting

WITH base_events AS (
    SELECT
        mp.client_id,
        mp.event_date,
        mp.device_id,
        mp.metric_1,
        mp.metric_2
    FROM trovo_coop_v2_market_pulse_data_view mp
    WHERE mp.event_date BETWEEN DATE '{{ start_date }}'
                            AND DATE '{{ end_date }}'
),

person_map AS (
    SELECT
        ju.device_id,
        up.person_id,
        up.age_range,
        up.gender
    FROM join_up_2_maid ju
    JOIN 5x5_universal_person up
      ON ju.maid = up.maid
)

SELECT
    b.client_id,
    b.event_date,
    p.person_id,
    p.age_range,
    p.gender,
    b.metric_1,
    b.metric_2
FROM base_events b
LEFT JOIN person_map p
  ON b.device_id = p.device_id;
