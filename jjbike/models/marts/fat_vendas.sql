select
    idvenda,
    idcliente,
    idvendedor,
    idproduto,
    data,
    quantidade,
    valorunitario,
    desconto,
    valortotal,
    valor_liquido
from {{ ref('int_vendas_itens') }}