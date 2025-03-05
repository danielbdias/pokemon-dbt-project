with 

items as (

    select * from {{ ref('stg_pokemon_database__items') }}

),

final as (

    select
        generation,
        release
    from items
    group by 1, 2

)

select * from final
