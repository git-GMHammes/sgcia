CREATE VIEW view_cobrancas AS
SELECT 
    -- Campos da tabela cobrancas
    cob.id AS id,
    cob.upload AS cob_upload,
    cob.circuito_id AS cob_circuito_id,
    cob.operadora_id AS cob_operadora_id,
    cob.orgao_id AS cob_orgao_id,
    cob.dia_cobrado AS cob_dia_cobrado,
    cob.data_inicio AS cob_data_inicio,
    cob.data_fim AS cob_data_fim,
    cob.custo_mensal AS cob_custo_mensal,
    cob.created_by AS cob_created_by,
    cob.created_by_name AS cob_created_by_name,
    cob.updated_by AS cob_updated_by,
    cob.updated_by_name AS cob_updated_by_name,
    cob.active AS cob_active,
    cob.SEI AS cob_SEI,
    cob.deleted_at AS deleted_at,
    cob.created_at AS created_at,
    cob.updated_at AS updated_at,
    
    -- Campos da tabela circuito
    cir.id AS cir_id,
    cir.nome AS cir_nome,
    cir.setor_id AS cir_setor_id,
    cir.velocidade_id AS cir_velocidade_id,
    cir.active AS cir_active,
    cir.data_ativacao AS cir_data_ativacao,
    cir.data_cancelamento AS cir_data_cancelamento,
    cir.status AS cir_status,
    cir.sigla AS cir_sigla,
    cir.endereco AS cir_endereco,
    cir.SEI AS cir_SEI,
    cir.updated_by AS cir_updated_by,
    cir.updated_by_name AS cir_updated_by_name,
    cir.created_by AS cir_created_by,
    cir.created_by_name AS cir_created_by_name,
    cir.deleted_at AS cir_deleted_at,
    cir.created_at AS cir_created_at,
    cir.updated_at AS cir_updated_at,
    
    -- Campos da tabela empresa (operadora)
    opr.id AS opr_id,
    opr.contato_id AS opr_contato_id,
    opr.nome AS opr_nome,
    opr.data_inicio AS opr_data_inicio,
    opr.data_fim AS opr_data_fim,
    opr.active AS opr_active,
    opr.created_by AS opr_created_by,
    opr.created_by_name AS opr_created_by_name,
    opr.updated_by AS opr_updated_by,
    opr.updated_by_name AS opr_updated_by_name,
    opr.deleted_at AS opr_deleted_at,
    opr.created_at AS opr_created_at,
    opr.updated_at AS opr_updated_at,
    
    -- Campos da tabela setor (orgão)
    org.id AS org_id,
    org.contato_id AS org_contato_id,
    org.nome AS org_nome,
    org.sigla AS org_sigla,
    org.endereco AS org_endereco,
    org.active AS org_active,
    org.created_by AS org_created_by,
    org.created_by_name AS org_created_by_name,
    org.updated_by AS org_updated_by,
    org.updated_by_name AS org_updated_by_name,
    org.deleted_at AS org_deleted_at,
    org.created_at AS org_created_at,
    org.updated_at AS org_updated_at

FROM cobrancas cob
    INNER JOIN circuito cir ON cob.circuito_id = cir.id
    INNER JOIN empresa opr ON cob.operadora_id = opr.id
    INNER JOIN setor org ON cob.orgao_id = org.id
WHERE 
    cob.deleted_at IS NULL
    AND cir.deleted_at IS NULL
    AND opr.deleted_at IS NULL
    AND org.deleted_at IS NULL;