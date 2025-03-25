CREATE VIEW view_contratos_velocidade AS
SELECT 
    cont.id AS id,
    cont.velocidade_id AS cont_velocidade_id,
    cont.nome AS cont_nome,
    cont.active AS cont_active,
    cont.created_by AS cont_created_by,
    cont.created_by_name AS cont_created_by_name,
    cont.updated_by AS cont_updated_by,
    cont.updated_by_name AS cont_updated_by_name,
    cont.deleted_at AS deleted_at,
    cont.created_at AS created_at,
    cont.updated_at AS updated_at,
    
    velo.id AS vel_id,
    velo.empresa_id AS vel_empresa_id,
    velo.tipo_servico AS vel_tipo_servico,
    velo.velocidade AS vel_velocidade,
    velo.link AS vel_link,
    velo.estoque AS vel_estoque,
    velo.custo_unitario AS vel_custo_unitario,
    velo.active AS vel_active,
    velo.created_by AS vel_created_by,
    velo.created_by_name AS vel_created_by_name,
    velo.updated_by AS vel_updated_by,
    velo.updated_by_name AS vel_updated_by_name,
    velo.deleted_at AS vel_deleted_at,
    velo.created_at AS vel_created_at,
    velo.updated_at AS vel_updated_at
FROM contrato cont
LEFT JOIN velocidade velo ON cont.velocidade_id = velo.id
WHERE cont.deleted_at IS NULL;
