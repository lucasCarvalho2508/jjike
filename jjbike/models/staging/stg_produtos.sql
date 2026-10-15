select
    idproduto,
    produto,
    preco
from {{ source('jjbike_origem', 'produtos') }}