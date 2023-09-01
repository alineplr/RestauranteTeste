# RestauranteTeste
Restaurante Teste

Informações:
O arquivo de banco de dados RESTAURANTETESTE.FDB deve ficar na mesma pasta do executável

O arquivo do diagrama do banco de dados é DiagramaBD.pdf

Exemplos para executção das procedures

--Lista Vendas por cliente e mês/ano
select * from plvendas(cast('05/01/2023' as date),cast('08/30/2023' as date))

--Calcula valor total da receita
select * from plvalorreceita('R05')

--Lista os itens da receita
select PCDRECEITA,PDSRECEITA, PCDINSUMO, PDSINSUMO, PVLTOTAL from pllistareceita('R05')
