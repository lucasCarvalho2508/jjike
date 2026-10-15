select
    idvendedor,
    nome
from {{ source('jjbike_origem', 'vendedores') }}