with weather as (

    select * from {{ source('weather', 'history_day') }}

),

us_weather as (

    select *
    from weather
    where country = 'US'
)

select * from us_weather