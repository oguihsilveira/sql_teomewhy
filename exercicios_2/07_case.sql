-- Intervalos
-- 0 a 500      -> padawan
-- 501 a 1000   -> cavaleiro jedi
-- 1001 a 5000  -> mestre jedi
-- 5001 a 10000 -> mestre do conselho jedi
-- +10001       -> grão-mestre jesi

SELECT IdCliente,
        QtdePontos,

        CASE
            WHEN QtdePontos >= 0 AND QtdePontos <= 500 THEN 'Padawan'
            WHEN QtdePontos >= 501 AND QtdePontos <= 1000 THEN 'Cavaleiro Jedi'
            WHEN QtdePontos >= 1001 AND QtdePontos <= 5000 THEN 'Mestre Jedi'
            WHEN QtdePontos >= 5001 AND QtdePontos <= 10000 THEN 'Mestre do Conselho'
            WHEN QtdePontos >= 10001 THEN 'Grão-Mestre Jedi'
            ELSE 'Lorde Sith'
        END AS NomeGrupo,

        CASE 
            WHEN QtdePontos <= 500 THEN 1
            ELSE 0
        END AS flPadawan

        CASE
            WHEN QtdePontos > 500 THEN 1
            ELSE 0
        END AS flJedi

FROM clientes

WHERE flJedi = 1

ORDER BY QtdePontos DESC