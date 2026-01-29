-- VIN Matching Pipeline
-- Purpose: Match uploaded VINs to known consumer identities

WITH uploaded_vins AS (
    SELECT
        vin,
        upload_id
    FROM vins_input_staging
),

identity_match AS (
    SELECT
        u.vin,
        p.person_id,
        c.email_md5
    FROM uploaded_vins u
    JOIN 5x5_universal_person_sorted p
      ON u.vin = p.vin
    LEFT JOIN consumer_email_sorted_md5 c
      ON p.person_id = c.person_id
)

SELECT
    vin,
    person_id,
    email_md5,
    CURRENT_TIMESTAMP AS processed_at
FROM identity_match;
