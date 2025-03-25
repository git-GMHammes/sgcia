CREATE VIEW view_empresa_contato AS
SELECT
    -- Colunas da tabela empresa com prefixo emp_
    emp.id AS id,
    emp.contato_id AS emp_contato_id,
    emp.nome AS emp_nome,
    emp.data_inicio AS emp_data_inicio,
    emp.data_fim AS emp_data_fim,
    emp.active AS emp_active,
    emp.created_by AS emp_created_by,
    emp.created_by_name AS emp_created_by_name,
    emp.updated_by AS emp_updated_by,
    emp.updated_by_name AS emp_updated_by_name,
    emp.deleted_at AS deleted_at,
    emp.created_at AS created_at,
    emp.updated_at AS updated_at,
    
    -- Colunas da tabela contato com prefixo cont_
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
    cont.updated_at AS cont_updated_at

FROM empresa emp
LEFT JOIN contato cont ON emp.contato_id = cont.id;