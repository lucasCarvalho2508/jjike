select
    idproduto,
    produto as nome_produto,
    preco
from {{ ref('stg_produtos') }}