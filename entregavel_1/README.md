# Cálculo de do ganho total 

Deve-se calcular o ganho total da empresa, o qual é obtido a partir da taxa administrativa do serviço de cartão de crédito para seus clientes. Esse ganho é calculado sobre um percentual das transações de cartão de crédito realizadas por eles. O cálculo é baseado no conjunto de dados abaixo, transacao, contrato e cliente da <a href="https://drive.google.com/file/d/1lA2eLHNMoMpApPGz6h7WQpphT9URWxB1/view?usp=sharing">Figura 1</a>.

## Resutado esperado 

consulta que retorne o ganho total da empresa por cliente que é 1.198,77 para o cliente A e 1,08 para o cliente B, conforme a <a href="https://drive.google.com/file/d/1KJ9SvkcRX94YQDyKI01ivG-5N3lZp3T1/view?usp=sharing">Figura 2</a>.

## Recursos 

 <a href="https://drive.google.com/file/d/1lqZZb9WgkyyL7qBZ5ZAPENVYoioK2hMs/view?usp=sharing">snippet de código</a> para criação da base de dados e dos dados exemplos (via SQL Server).

---
 # Solução

 Para o exercício utilizou-se a aplicação web <a href=http://sqlfiddle.com/>sqlfiddle</a>, foi utilizada a versão MS SQL SERVER 2017, foi necessário uma pequena adaptação no snippet pois a soluçaõ <a href=https://www.http://sqlfiddle.com/>sqlfiddle</a> não permite a criação de databases, foi utlizado somente as criações de tables do snippet citado acima, a [versão utilizada](snippet_web.sql) está anexada à pasta de solução deste entregável.

Conforme exposto em <a href="https://drive.google.com/file/d/1KJ9SvkcRX94YQDyKI01ivG-5N3lZp3T1/view?usp=sharing">Figura 2</a>, a [query de solução](solucao.sql) resulta em (vide comentários nesta query sobre os tratamentos necessário para chegar ao valor esperado):

| cliente_nome | valor   |
|:------------:|---------|
| Cliente A    | 1198.77 |
| Cliente D    | 1.08    |

#### Resultado 

![image](screenshot.png)

 
