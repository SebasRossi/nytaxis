with vendors as (
    select distinct vendor_id,
        {{ get_vendor_name('vendor_id') }} as vendor_name
    from {{ ref('int_trips_unioned') }}
)

select * from vendors