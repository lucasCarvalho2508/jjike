select
    idvenda,
    idcliente,
    idvendedor,
    idproduto,
    to_char(data, 'YYYYMMDD')::integer as id_tempo, -- Chave estrangeira para a dim_tempo
    data,
    quantidade,
    valorunitario,
    desconto,
    valortotal,
    valor_liquido
from {{ ref('int_vendas_itens') }}