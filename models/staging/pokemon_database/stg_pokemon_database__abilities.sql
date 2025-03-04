with 

source as (

    select * from {{ source('pokemon_database', 'raw_abilities') }}

),

renamed as (

    select
        id,
        name,
        generation,
        release

    from source

)

select * from renamed
