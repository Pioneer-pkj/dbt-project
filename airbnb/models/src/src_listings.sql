
With raw_listing as 
(Select * from {{ source('airbnb', 'listings')}})

Select 
     id AS listing_id,
    name AS listing_name,
    listing_url,
    room_type,
    minimum_nights,
    host_id,
    price AS price_str,
    created_at,
    updated_at
From raw_listing
