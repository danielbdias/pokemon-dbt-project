with 

source as (

    select * from {{ source('pokemon_database', 'raw_type_chart') }}

),

renamed as (

    select
        id,
        super_effective,
        not_very_effective,
        no_effect

    from source

)

select * from renamed
