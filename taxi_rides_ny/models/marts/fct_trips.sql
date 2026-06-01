/*
TO DO:
- One row per trip (doesn't matter if yellow or green)
- Add a primary key (trip_id). It has to be unique.
- Find all the duplicates, undestand wht thet happen, and fix tehm.
- Find a wat to enric the column paymebnt_type.
*/

select 
{{ dbt_utils.generate_surrogate_key(['vendor_id', 'pickup_datetime', 'pickup_location_id', 'service_type']) }} as trip_id,
*  
from {{ ref('int_trips_unioned')}}