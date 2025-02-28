with 

source as (

    select * from {{ source('pokemon_database', 'raw_egg_group') }}

),

renamed as (

    select
        id,
        name

    from source

)

select * from renamed
