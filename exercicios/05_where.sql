-- Selecione produtos que contêm 'churn' no nome

/* SELECT *
FROM produtos

WHERE DescNomeProduto = 'Churn_10pp' OR
DescNomeProduto = 'Churn_5pp' OR
DescNomeProduto = 'Churn_2pp'; */

/* SELECT *
FROM produtos

WHERE DescNomeProduto IN ('Churn_10pp', 'Churn_5pp', 'Churn_2pp') */

/* SELECT *
FROM produtos

WHERE DescNomeProduto LIKE 'Churn%' */

/* SELECT *
FROM produtos

WHERE DescNomeProduto LIKE '%pp' */

SELECT *
FROM produtos

WHERE DescNomeProduto LIKE '% - %'
