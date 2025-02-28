with 

source as (

    select * from {{ source('pokemon_database', 'raw_location') }}

),

renamed as (

    select
        id,
        name,
        region,
        generation,
        release

    from source

)

select * from renamed
