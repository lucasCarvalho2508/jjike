with datas_vendas as (
    select distinct
        cast(data as date) as data_venda
    from {{ ref('stg_vendas') }}
    where data is not null
)

select
    to_char(data_venda, 'YYYYMMDD')::integer as id_tempo,
    data_venda as data,
    extract(year from data_venda) as ano,
    extract(quarter from data_venda) as trimestre,
    extract(month from data_venda) as mes,
    to_char(data_venda, 'TMMonth') as nome_mes,
    extract(day from data_venda) as dia,
    extract(isodow from data_venda) as dia_semana_num,
    to_char(data_venda, 'TMDay') as nome_dia_semana,
    case 
        when extract(isodow from data_venda) in (6, 7) then 'Fim de Semana'
        else 'Dia Útil'
    end as tipo_dia
from datas_vendas
order by data_venda