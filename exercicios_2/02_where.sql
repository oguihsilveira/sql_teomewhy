/* SELECT *
FROM transacoes
WHERE QtdePontos = 1 */

-- Seleciona as informações desejadas da tabela de transações
SELECT  
        -- Retorna o identificador único da transação
        IdTransacao, 
        
        -- Retorna a data de criação da transação
        DtCriacao,

        -- Extrai o dia da semana da data de criação
        -- substr(DtCriacao, 1, 19): pega os 19 primeiros caracteres da data
        -- datetime(...): converte o texto para formato de data/hora
        -- strftime('%w', ...): retorna o dia da semana em número
        -- 0 = domingo, 1 = segunda, 2 = terça, 3 = quarta,
        -- 4 = quinta, 5 = sexta, 6 = sábado
        strftime('%w', datetime(substr(DtCriacao, 1, 19))) AS DiaSemana

-- Define a tabela de onde os dados serão buscados
FROM transacoes

 -- IN ('6', '0') significa:
    -- mantenha apenas os registros em que o dia da semana seja
    -- '6' sábado ou '0' domingo
WHERE strftime('%w', datetime(substr(DtCriacao, 1, 19))) IN ('6', '0')

/* SELECT  
        IdTransacao, 
        DtCriacao,
        strftime('%w', datetime(substr(DtCriacao, 1, 19))) AS DiaSemana
FROM transacoes
WHERE DiaSemana IN ('6', '0');  */