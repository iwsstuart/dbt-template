with weather as (

    select * from {{ source('weather', 'history_day') }}

)

select * from weather