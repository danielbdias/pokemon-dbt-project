with 

source as (

    select * from {{ source('pokemon_database', 'raw_locations') }}

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
