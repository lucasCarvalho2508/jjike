select
    idcliente,
    cliente,
    estado,
    sexo,
    status
from {{ source('jjbike_origem', 'clientes') }}