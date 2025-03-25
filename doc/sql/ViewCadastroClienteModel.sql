select `cad`.`id` AS `id`,
    `orig`.`id` AS `orig_id`,
    `orig`.`form_on` AS `orig_form_on`,
    `orig`.`descricao` AS `orig_descricao`,
    `orig`.`informação` AS `orig_informação`,
    `orig`.`created_by` AS `orig_created_by`,
    `orig`.`created_by_name` AS `orig_created_by_name`,
    `orig`.`updated_by` AS `orig_updated_by`,
    `orig`.`updated_by_name` AS `orig_updated_by_name`,
    `orig`.`created_at` AS `orig_created_at`,
    `orig`.`updated_at` AS `orig_updated_at`,
    `orig`.`deleted_at` AS `orig_deleted_at`,
    `cad`.`pro_origem_id` AS `cad_pro_origem_id`,
    `cad`.`tipo` AS `cad_tipo`,
    `cad`.`active` AS `cad_active`,
    `cad`.`sigla_pronome_tratamento` AS `cad_sigla_pronome_tratamento`,
    `cad`.`nome` AS `cad_nome`,
    `cad`.`cnpj_cpf` AS `cad_cnpj_cpf`,
    `cad`.`remember_token` AS `cad_remember_token`,
    `cad`.`created_by` AS `cad_created_by`,
    `cad`.`created_by_name` AS `cad_created_by_name`,
    `cad`.`updated_by` AS `cad_updated_by`,
    `cad`.`updated_by_name` AS `cad_updated_by_name`,
    `cad`.`created_at` AS `created_at`,
    `cad`.`updated_at` AS `updated_at`,
    `cad`.`deleted_at` AS `deleted_at`,
    `mail`.`id` AS `mail_id`,
    `mail`.`favorito` AS `mail_favorito`,
    `mail`.`cadastro_id` AS `mail_cadastro_id`,
    `mail`.`email` AS `mail_email`,
    `mail`.`created_by` AS `mail_created_by`,
    `mail`.`created_by_name` AS `mail_created_by_name`,
    `mail`.`updated_by` AS `mail_updated_by`,
    `mail`.`updated_by_name` AS `mail_updated_by_name`,
    `mail`.`created_at` AS `mail_created_at`,
    `mail`.`updated_at` AS `mail_updated_at`,
    `mail`.`deleted_at` AS `mail_deleted_at`,
    `tel`.`id` AS `tel_id`,
    `tel`.`favorito` AS `tel_favorito`,
    `tel`.`cadastro_id` AS `tel_cadastro_id`,
    `tel`.`tipo` AS `tel_tipo`,
    `tel`.`numero` AS `tel_numero`,
    `tel`.`created_by` AS `tel_created_by`,
    `tel`.`created_by_name` AS `tel_created_by_name`,
    `tel`.`updated_by` AS `tel_updated_by`,
    `tel`.`updated_by_name` AS `tel_updated_by_name`,
    `tel`.`created_at` AS `tel_created_at`,
    `tel`.`updated_at` AS `tel_updated_at`,
    `tel`.`deleted_at` AS `tel_deleted_at`,
    `end`.`id` AS `end_id`,
    `end`.`favorito` AS `end_favorito`,
    `end`.`cadastro_id` AS `end_cadastro_id`,
    `end`.`cep` AS `end_cep`,
    `end`.`tipo_logradouro` AS `end_tipo_logradouro`,
    `end`.`logradouro` AS `end_logradouro`,
    `end`.`numero` AS `end_numero`,
    `end`.`complemento` AS `end_complemento`,
    `end`.`bairro` AS `end_bairro`,
    `end`.`cidade` AS `end_cidade`,
    `end`.`estado` AS `end_estado`,
    `end`.`pais` AS `end_pais`,
    `end`.`ponto_referencia` AS `end_ponto_referencia`,
    `end`.`latitude` AS `end_latitude`,
    `end`.`longitude` AS `end_longitude`,
    `end`.`regiao` AS `end_regiao`,
    `end`.`tipo_imovel` AS `end_tipo_imovel`,
    `end`.`informacao_acesso` AS `end_informacao_acesso`,
    `end`.`area_risco` AS `end_area_risco`,
    `end`.`created_by` AS `end_created_by`,
    `end`.`created_by_name` AS `end_created_by_name`,
    `end`.`updated_by` AS `end_updated_by`,
    `end`.`updated_by_name` AS `end_updated_by_name`,
    `end`.`created_at` AS `end_created_at`,
    `end`.`updated_at` AS `end_updated_at`,
    `end`.`deleted_at` AS `end_deleted_at`
from (
        (
            (
                (
                    `pro_cadastro` `cad`
                    join `pro_cad_email` `mail` on(
                        (
                            (`cad`.`id` = `mail`.`cadastro_id`)
                            and (`mail`.`favorito` = 'Y')
                        )
                    )
                )
                join `pro_cad_telefone` `tel` on(
                    (
                        (`cad`.`id` = `tel`.`cadastro_id`)
                        and (`tel`.`favorito` = 'Y')
                    )
                )
            )
            join `pro_cad_origem` `orig` on((`cad`.`id` = `orig`.`id`))
        )
        join `pro_cad_endereco` `end` on(
            (
                (`cad`.`id` = `end`.`cadastro_id`)
                and (`end`.`favorito` = 'Y')
            )
        )
    );