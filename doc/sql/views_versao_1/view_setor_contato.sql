CREATE VIEW view_setor_contato AS
SELECT 
    -- Colunas da tabela setor com prefixo st_
    st.id AS id,
    st.contato_id AS st_contato_id,
    st.nome AS st_nome,
    st.sigla AS st_sigla,
    st.endereco AS st_endereco,
    st.active AS st_active,
    st.created_by AS st_created_by,
    st.created_by_name AS st_created_by_name,
    st.updated_by AS st_updated_by,
    st.updated_by_name AS st_updated_by_name,
    st.deleted_at AS deleted_at,
    st.created_at AS created_at,
    st.updated_at AS updated_at,
    
    -- Colunas da tabela contato com prefixo ct_
    ct.id AS ct_id,
    ct.setor_id AS ct_setor_id,
    ct.nome AS ct_nome,
    ct.email AS ct_email,
    ct.telefone AS ct_telefone,
    ct.data_inicio AS ct_data_inicio,
    ct.data_fim AS ct_data_fim,
    ct.active AS ct_active,
    ct.created_by AS ct_created_by,
    ct.created_by_name AS ct_created_by_name,
    ct.updated_by AS ct_updated_by,
    ct.updated_by_name AS ct_updated_by_name,
    ct.deleted_at AS ct_deleted_at,
    ct.created_at AS ct_created_at,
    ct.updated_at AS ct_updated_at
FROM 
    setor st
LEFT JOIN 
    contato ct ON st.id = ct.setor_id;