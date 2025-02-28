with 

source as (

    select * from {{ source('pokemon_database', 'raw_egg_groups') }}

),

renamed as (

    select
        id,
        name

    from source

)

select * from renamed
