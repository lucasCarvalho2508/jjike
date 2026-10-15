select
    idvendedor,
    nome as nome_vendedor
from {{ ref('stg_vendedores') }}