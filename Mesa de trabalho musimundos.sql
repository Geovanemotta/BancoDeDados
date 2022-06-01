#1
SELECT *
	FROM faturas
    WHERE cidade_cobranca = 'oslo'
	ORDER BY valor_total DESC
    LIMIT 1;
#2
SELECT valor_total, 
	MIN(valor_total) AS menorfatura 
	FROM faturas;

#3
SELECT 
	AVG(valor_total) AS valormedio 
    FROM faturas 
    WHERE pais_cobranca = 'Canada';

#4
SELECT 
COUNT(*) AS qtd_faturas_canada
FROM faturas
WHERE pais_cobranca = 'Canada'; 
 
#5
SELECT 
SUM(valor_total) AS Total_Global
FROM faturas
WHERE pais_cobranca = 'Canada';

#6
SELECT 
	id, 
	data_fatura, 
	valor_total 
FROM faturas 
WHERE valor_total < (SELECT AVG(valor_total) FROM faturas);

#7


SELECT * 
	FROM empregados;

SELECT data_nascimento 
	FROM empregados 
	ORDER BY data_nascimento DESC LIMIT 1;

SELECT data_nascimento 
	FROM empregados 
	ORDER BY data_nascimento ASC LIMIT 1;
    
    
    
#13
    select 
    count(*) as qtd,
    cidade
    from clientes
    where cidade = 'São Paulo'
    group by 
		cidade


#15
select
	count(*) as email
    from clientes
    where email like '%@yahoo%';














