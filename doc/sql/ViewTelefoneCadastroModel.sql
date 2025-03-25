SELECT 
    cad.id AS id,
    cad.pro_origem_id AS cad_pro_origem_id,
    cad.tipo AS cad_tipo,
    cad.active AS cad_active,
    cad.sigla_pronome_tratamento AS cad_sigla_pronome_tratamento,
    cad.nome AS cad_nome,
    cad.cnpj_cpf AS cad_cnpj_cpf,
    cad.remember_token AS cad_remember_token,
    cad.created_by AS cad_created_by,
    cad.created_by_name AS cad_created_by_name,
    cad.updated_by AS cad_updated_by,
    cad.updated_by_name AS cad_updated_by_name,
    cad.created_at AS created_at,
    cad.updated_at AS updated_at,
    cad.deleted_at AS deleted_at,
    
    tel.id AS tel_id,
    tel.cadastro_id AS tel_cadastro_id,
    tel.favorito AS tel_favorito,
    tel.tipo AS tel_tipo,
    tel.numero AS tel_numero,
    tel.created_by AS tel_created_by,
    tel.created_by_name AS tel_created_by_name,
    tel.updated_by AS tel_updated_by,
    tel.updated_by_name AS tel_updated_by_name,
    tel.created_at AS tel_created_at,
    tel.updated_at AS tel_updated_at,
    tel.deleted_at AS tel_deleted_at
FROM 
    pro_cadastro cad
LEFT JOIN 
    pro_cad_telefone tel ON cad.id = tel.cadastro_id;