select
    idcliente,
    cliente as nome_cliente,
    estado,
    sexo,
    status
from {{ ref('stg_clientes') }}