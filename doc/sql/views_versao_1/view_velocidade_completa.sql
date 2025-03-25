CREATE VIEW view_velocidade_completa AS
SELECT 
    -- Campos da tabela velocidade
    vel.id AS id,
    vel.empresa_id AS vel_empresa_id,
    vel.tipo_servico AS vel_tipo_servico,
    vel.velocidade AS vel_velocidade,
    vel.link AS vel_link,
    vel.estoque AS vel_estoque,
    vel.custo_unitario AS vel_custo_unitario,
    vel.active AS vel_active,
    vel.created_by AS vel_created_by,
    vel.created_by_name AS vel_created_by_name,
    vel.updated_by AS vel_updated_by,
    vel.updated_by_name AS vel_updated_by_name,
    vel.deleted_at AS deleted_at,
    vel.created_at AS created_at,
    vel.updated_at AS updated_at,
    -- Campos da tabela empresa
    emp.id AS emp_id,
    emp.contato_id AS emp_contato_id,
    emp.nome AS emp_nome,
    emp.data_inicio AS emp_data_inicio,
    emp.data_fim AS emp_data_fim,
    emp.active AS emp_active,
    emp.created_by AS emp_created_by,
    emp.created_by_name AS emp_created_by_name,
    emp.updated_by AS emp_updated_by,
    emp.updated_by_name AS emp_updated_by_name,
    emp.deleted_at AS emp_deleted_at,
    emp.created_at AS emp_created_at,
    emp.updated_at AS emp_updated_at,
    -- Campos da tabela contato
    cont.id AS cont_id,
    cont.setor_id AS cont_setor_id,
    cont.nome AS cont_nome,
    cont.email AS cont_email,
    cont.telefone AS cont_telefone,
    cont.data_inicio AS cont_data_inicio,
    cont.data_fim AS cont_data_fim,
    cont.active AS cont_active,
    cont.created_by AS cont_created_by,
    cont.created_by_name AS cont_created_by_name,
    cont.updated_by AS cont_updated_by,
    cont.updated_by_name AS cont_updated_by_name,
    cont.deleted_at AS cont_deleted_at,
    cont.created_at AS cont_created_at,
    cont.updated_at AS cont_updated_at,
    -- Campos da tabela setor
    st.id AS set_id,
    st.contato_id AS set_contato_id,
    st.nome AS set_nome,
    st.sigla AS set_sigla,
    st.endereco AS set_endereco,
    st.active AS set_active,
    st.created_by AS set_created_by,
    st.created_by_name AS set_created_by_name,
    st.updated_by AS set_updated_by,
    st.updated_by_name AS set_updated_by_name,
    st.deleted_at AS set_deleted_at,
    st.created_at AS set_created_at,
    st.updated_at AS set_updated_at
FROM 
    velocidade vel,
    empresa emp,
    contato cont,
    setor st
WHERE 
    vel.empresa_id = emp.id
    AND emp.contato_id = cont.id
    AND cont.setor_id = st.id
    AND vel.deleted_at IS NULL
    AND emp.deleted_at IS NULL
    AND cont.deleted_at IS NULL
    AND st.deleted_at IS NULL;