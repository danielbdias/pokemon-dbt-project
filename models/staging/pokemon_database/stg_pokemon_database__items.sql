with 

source as (

    select * from {{ source('pokemon_database', 'raw_items') }}

),

renamed as (

    select
        id,
        name,
        generation,
        release,
        cost

    from source

)

select * from renamed
