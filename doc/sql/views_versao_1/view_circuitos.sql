CREATE VIEW view_circuitos AS
SELECT -- Campos da tabela circuito
    circ.id AS id,
    circ.nome AS circ_nome,
    circ.setor_id AS circ_setor_id,
    circ.velocidade_id AS circ_velocidade_id,
    circ.active AS circ_active,
    circ.data_ativacao AS circ_data_ativacao,
    circ.data_cancelamento AS circ_data_cancelamento,
    circ.status AS circ_status,
    circ.sigla AS circ_sigla,
    circ.endereco AS circ_endereco,
    circ.SEI AS circ_SEI,
    circ.updated_by AS circ_updated_by,
    circ.updated_by_name AS circ_updated_by_name,
    circ.created_by AS circ_created_by,
    circ.created_by_name AS circ_created_by_name,
    circ.deleted_at AS deleted_at,
    circ.created_at AS created_at,
    circ.updated_at AS updated_at,
    -- Campos da tabela velocidade
    vel.id AS vel_id,
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
    vel.deleted_at AS vel_deleted_at,
    vel.created_at AS vel_created_at,
    vel.updated_at AS vel_updated_at,
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
FROM circuito circ
    INNER JOIN velocidade vel ON circ.velocidade_id = vel.id
    INNER JOIN setor st ON circ.setor_id = st.id
WHERE circ.deleted_at IS NULL
    AND vel.deleted_at IS NULL
    AND st.deleted_at IS NULL;