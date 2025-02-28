with 

source as (

    select * from {{ source('pokemon_database', 'raw_game') }}

),

renamed as (

    select
        id,
        name,
        release

    from source

)

select * from renamed
