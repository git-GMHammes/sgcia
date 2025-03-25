CREATE VIEW view_cliente_contato AS
SELECT 
    -- Colunas da tabela cliente com prefixo cli
    cli.id AS id,
    cli.contato_id AS cli_contato_id,
    cli.nome AS cli_nome,
    cli.sigla AS cli_sigla,
    cli.endereco AS cli_endereco,
    cli.active AS cli_active,
    cli.created_by AS cli_created_by,
    cli.created_by_name AS cli_created_by_name,
    cli.updated_by AS cli_updated_by,
    cli.updated_by_name AS cli_updated_by_name,
    cli.deleted_at AS deleted_at,
    cli.created_at AS created_at,
    cli.updated_at AS updated_at,
    
    -- Colunas da tabela contato com prefixo cont
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

FROM cliente cli
LEFT JOIN contato cont ON cli.contato_id = cont.id;