with 

source as (

    select * from {{ source('pokemon_database', 'raw_pokemon_forms') }}

),

renamed as (

    select
        id,
        name,
        form_id,
        form_name,
        generation,
        release,
        type_1,
        type_2,
        stats,
        species,
        height,
        weight,
        gender,
        catch_rate,
        base_exp,
        egg_cycles,
        friendship,
        growth_rate,
        ev_yield

    from source

)

select * from renamed
