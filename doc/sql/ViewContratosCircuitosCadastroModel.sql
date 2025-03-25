select `cont`.`id` AS `id`,
    `cont`.`velocidade_id` AS `cont_velocidade_id`,
    `cont`.`cadastro_empresa_id` AS `cont_cadastro_empresa_id`,
    `cont`.`cadastro_cliente_id` AS `cont_cadastro_cliente_id`,
    `cont`.`active` AS `cont_active`,
    `cont`.`sei` AS `cont_sei`,
    `cont`.`nome` AS `cont_nome`,
    `cont`.`data_inicio` AS `cont_data_inicio`,
    `cont`.`data_fim` AS `cont_data_fim`,
    `cont`.`created_by` AS `cont_created_by`,
    `cont`.`created_by_name` AS `cont_created_by_name`,
    `cont`.`updated_by` AS `cont_updated_by`,
    `cont`.`updated_by_name` AS `cont_updated_by_name`,
    `cont`.`created_at` AS `created_at`,
    `cont`.`updated_at` AS `updated_at`,
    `cont`.`deleted_at` AS `deleted_at`,

    `vel`.`id` AS `vel_id`,
    `vel`.`cadastro_prestadora_id` AS `vel_cadastro_prestadora_id`,
    `vel`.`active` AS `vel_active`,
    `vel`.`tipo_servico` AS `vel_tipo_servico`,
    `vel`.`velocidade` AS `vel_velocidade`,
    `vel`.`link` AS `vel_link`,
    `vel`.`estoque` AS `vel_estoque`,
    `vel`.`custo_unitario` AS `vel_custo_unitario`,
    `vel`.`created_by` AS `vel_created_by`,
    `vel`.`created_by_name` AS `vel_created_by_name`,
    `vel`.`updated_by` AS `vel_updated_by`,
    `vel`.`updated_by_name` AS `vel_updated_by_name`,
    `vel`.`created_at` AS `vel_created_at`,
    `vel`.`updated_at` AS `vel_updated_at`,
    `vel`.`deleted_at` AS `vel_deleted_at`,

    `cad_empresa`.`id` AS `cad_empresa_id`,
    `cad_empresa`.`pro_origem_id` AS `cad_empresa_pro_origem_id`,
    `cad_empresa`.`tipo` AS `cad_empresa_tipo`,
    `cad_empresa`.`active` AS `cad_empresa_active`,
    `cad_empresa`.`sigla_pronome_tratamento` AS `cad_empresa_sigla_pronome_tratamento`,
    `cad_empresa`.`nome` AS `cad_empresa_nome`,
    `cad_empresa`.`cnpj_cpf` AS `cad_empresa_cnpj_cpf`,
    `cad_empresa`.`remember_token` AS `cad_empresa_remember_token`,
    `cad_empresa`.`created_by` AS `cad_empresa_created_by`,
    `cad_empresa`.`created_by_name` AS `cad_empresa_created_by_name`,
    `cad_empresa`.`updated_by` AS `cad_empresa_updated_by`,
    `cad_empresa`.`updated_by_name` AS `cad_empresa_updated_by_name`,
    `cad_empresa`.`created_at` AS `cad_empresa_created_at`,
    `cad_empresa`.`updated_at` AS `cad_empresa_updated_at`,
    `cad_empresa`.`deleted_at` AS `cad_empresa_deleted_at`,

    `cad_cliente`.`id` AS `cad_cliente_id`,
    `cad_cliente`.`pro_origem_id` AS `cad_cliente_pro_origem_id`,
    `cad_cliente`.`tipo` AS `cad_cliente_tipo`,
    `cad_cliente`.`active` AS `cad_cliente_active`,
    `cad_cliente`.`sigla_pronome_tratamento` AS `cad_cliente_sigla_pronome_tratamento`,
    `cad_cliente`.`nome` AS `cad_cliente_nome`,
    `cad_cliente`.`cnpj_cpf` AS `cad_cliente_cnpj_cpf`,
    `cad_cliente`.`remember_token` AS `cad_cliente_remember_token`,
    `cad_cliente`.`created_by` AS `cad_cliente_created_by`,
    `cad_cliente`.`created_by_name` AS `cad_cliente_created_by_name`,
    `cad_cliente`.`updated_by` AS `cad_cliente_updated_by`,
    `cad_cliente`.`updated_by_name` AS `cad_cliente_updated_by_name`,
    `cad_cliente`.`created_at` AS `cad_cliente_created_at`,
    `cad_cliente`.`updated_at` AS `cad_cliente_updated_at`,
    `cad_cliente`.`deleted_at` AS `cad_cliente_deleted_at`,

    `cad_prestadora`.`id` AS `cad_prestadora_id`,
    `cad_prestadora`.`pro_origem_id` AS `cad_prestadora_pro_origem_id`,
    `cad_prestadora`.`tipo` AS `cad_prestadora_tipo`,
    `cad_prestadora`.`active` AS `cad_prestadora_active`,
    `cad_prestadora`.`sigla_pronome_tratamento` AS `cad_prestadora_sigla_pronome_tratamento`,
    `cad_prestadora`.`nome` AS `cad_prestadora_nome`,
    `cad_prestadora`.`cnpj_cpf` AS `cad_prestadora_cnpj_cpf`,
    `cad_prestadora`.`remember_token` AS `cad_prestadora_remember_token`,
    `cad_prestadora`.`created_by` AS `cad_prestadora_created_by`,
    `cad_prestadora`.`created_by_name` AS `cad_prestadora_created_by_name`,
    `cad_prestadora`.`updated_by` AS `cad_prestadora_updated_by`,
    `cad_prestadora`.`updated_by_name` AS `cad_prestadora_updated_by_name`,
    `cad_prestadora`.`created_at` AS `cad_prestadora_created_at`,
    `cad_prestadora`.`updated_at` AS `cad_prestadora_updated_at`,
    `cad_prestadora`.`deleted_at` AS `cad_prestadora_deleted_at`
from (
        (
            (
                (
                    `pro_contrato` `cont`
                    left join `pro_velocidade` `vel` on((`cont`.`velocidade_id` = `vel`.`id`))
                )
                left join `pro_cadastro` `cad_empresa` on(
                    (
                        `cont`.`cadastro_empresa_id` = `cad_empresa`.`id`
                    )
                )
            )
            left join `pro_cadastro` `cad_cliente` on(
                (
                    `cont`.`cadastro_cliente_id` = `cad_cliente`.`id`
                )
            )
        )
        left join `pro_cadastro` `cad_prestadora` on(
            (
                `vel`.`cadastro_prestadora_id` = `cad_prestadora`.`id`
            )
        )
    )