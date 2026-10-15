select
    idvenda,
    idvendedor,
    idcliente,
    data,
    total
from {{ source('jjbike_origem', 'vendas') }}