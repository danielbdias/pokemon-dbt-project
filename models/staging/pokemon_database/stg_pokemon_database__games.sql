with 

source as (

    select * from {{ source('pokemon_database', 'raw_games') }}

),

renamed as (

    select
        id,
        name,
        release

    from source

)

select * from renamed
