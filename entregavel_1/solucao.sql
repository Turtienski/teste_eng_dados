with ganho as (
  select t1.contrato_id, 
  cliente_id, 
  /* foi necessário fazer tratamento na variável percentual_desconto da tabela transacao, 
     também tratar os valores percentuais nas tabelas de transacao e contrato, dividindo os por 100
     Variável abaixo -> valor
  */
  sum((t1.percentual*(t2.valor_total*(1-isnull(t2.percentual_desconto, 0)/100)))/100) as valor
    from contrato as t1
      inner join transacao as t2
        on(t1.contrato_id = t2.contrato_id)
  where t1.ativo = 'true'
    group by cliente_id, t1.contrato_id) 

select cliente.nome cliente_nome, 
       format(ganho.valor, '0.00') valor
from ganho 
  inner join cliente on(ganho.cliente_id=cliente.cliente_id)