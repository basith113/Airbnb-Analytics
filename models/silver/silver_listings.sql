{{ config(materialized='incremental') }}


SELECT listing_id,
    host_id,
    property_type,
    room_type,
    city,
    country,
    accommodates,
    bedrooms,
    bathrooms,
    price_per_night,
    CREATED_AT,
    case 
        when price_per_night  > 90 then 'high'
        when price_per_night  between 50 and 90 then 'medium'
        else 'low'   
    end as Price_tag
  FROM  {{ source('staging', 'listings') }}

{% if is_incremental() %}
    WHERE CREATED_AT > (SELECT COALESCE(MAX(CREATED_AT), '1900-01-01') FROM {{ this }})
{% endif %}