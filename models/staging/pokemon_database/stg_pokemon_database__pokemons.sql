with 

source as (

    select * from {{ source('pokemon_database', 'raw_pokemons') }}

),

renamed as (

    select
        id,
        national,
        name,
        generation

    from source

)

select * from renamed
