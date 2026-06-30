SELECT IdCliente,
    /* QtdePontos,
    QtdePontos + 10 AS QtdePontosPlus10,
    QtdePontos * 2, */
    DtCriacao,
    substr(DtCriacao, 1, 19) AS DtSubString,
    
    datetime(substr(DtCriacao, 1, 19)) AS dtCriacaoNova,

    strftime('%w', datetime(substr(DtCriacao, 1, 19))) AS DiaSemana

FROM clientes
