CREATE VIEW view_contatos_operadoras_empresa AS
SELECT 
    -- Colunas da tabela contatos_operadoras
    oc.id AS id,
    oc.empresa_id AS oc_empresa_id,
    oc.nome AS oc_nome,
    oc.email AS oc_email,
    oc.telefone AS oc_telefone,
    oc.data_inicio AS oc_data_inicio,
    oc.data_fim AS oc_data_fim,
    oc.created_at AS created_at,
    oc.deleted_at AS deleted_at,
    oc.updated_at AS updated_at,
    
    -- Colunas da tabela empresa
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
    emp.updated_at AS emp_updated_at
FROM 
    contatos_operadoras oc
    LEFT JOIN empresa emp ON oc.empresa_id = emp.id
WHERE 
    oc.deleted_at IS NULL;