with 

source as (

    select * from {{ source('pokemon_database', 'raw_moves') }}

),

renamed as (

    select
        id,
        name,
        type,
        category,
        power,
        accuracy,
        pp,
        priority

    from source

)

select * from renamed
