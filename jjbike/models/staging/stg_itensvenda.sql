select
    idvenda,
    idproduto,
    quantidade,
    valorunitario,
    desconto,
    valortotal
from {{ source('jjbike_origem', 'itensvenda') }}
