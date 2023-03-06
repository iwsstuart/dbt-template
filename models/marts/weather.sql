with staging as (

    select * from {{ ref('stg_weather') }}

), 

weather as (

    select
        postal_code,
        country,
        date_valid_std,
        doy_std,
        MIN_TEMPERATURE_AIR_2M_F,
        AVG_TEMPERATURE_AIR_2M_F,
        MAX_TEMPERATURE_AIR_2M_F
        MIN_TEMPERATURE_FEELSLIKE_2M_F,
        AVG_TEMPERATURE_FEELSLIKE_2M_F,
        MAX_TEMPERATURE_FEELSLIKE_2M_F
    from staging
)

select * from weather