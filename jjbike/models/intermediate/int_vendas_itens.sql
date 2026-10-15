select
    v.idvenda,
    v.idcliente,
    v.idvendedor,
    v.data,
    i.idproduto,
    i.quantidade,
    i.valorunitario,
    i.desconto,
    i.valortotal,
    (i.quantidade * i.valorunitario - coalesce(i.desconto, 0)) as valor_liquido
from {{ ref('stg_vendas') }} as v
inner join {{ ref('stg_itensvenda') }} as i
    on v.idvenda = i.idvenda