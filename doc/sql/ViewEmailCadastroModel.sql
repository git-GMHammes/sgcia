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
    
    email.id AS email_id,
    email.cadastro_id AS email_cadastro_id,
    email.favorito AS email_favorito,
    email.tipo AS email_tipo,
    email.email AS email_email,
    email.created_by AS email_created_by,
    email.created_by_name AS email_created_by_name,
    email.updated_by AS email_updated_by,
    email.updated_by_name AS email_updated_by_name,
    email.created_at AS email_created_at,
    email.updated_at AS email_updated_at,
    email.deleted_at AS email_deleted_at
FROM 
    pro_cadastro cad
LEFT JOIN 
    pro_cad_email email ON cad.id = email.cadastro_id;