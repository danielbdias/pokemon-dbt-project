with 

source as (

    select * from {{ source('pokemon_database', 'raw_types') }}

),

renamed as (

    select
        id,
        name,
        generation

    from source

)

select * from renamed
