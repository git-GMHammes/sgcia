select `ct`.`id` AS `ContatoId`,
    `ct`.`nome` AS `ContatoNome`,
    `c`.`id` AS `CircuitoId`,
    `c`.`nome` AS `CircuitoNome`,
    `cb`.`operadora_id` AS `CobrancaOperadoraId`,
    `e`.`nome` AS `EmpresaNome`,
    `ct`.`data_inicio` AS `ContatoDataInicio`,
    `ct`.`data_fim` AS `ContatoDataFim`,
    `cb`.`custo_mensal` AS `CobrancaCustoMensal`,
    `c`.`velocidade_id` AS `CircuitoVelocidadeId`,
    `v`.`tipo_servico` AS `VelocidadeTipoServico`,
    `v`.`velocidade` AS `VelocidadeValor`,
    `v`.`custo_unitario` AS `VelocidadeCustoUnitario`,
    `v`.`link` AS `VelocidadeLink`,
    `v`.`estoque` AS `VelocidadeEstoque`,
    `v`.`empresa_id` AS `VelocidadeEmpresaId`,
    `v`.`created_at` AS `VelocidadeCreatedAt`,
    `v`.`updated_at` AS `VelocidadeUpdatedAt`,
    `v`.`deleted_at` AS `VelocidadeDeletedAt`,
    `v`.`created_by` AS `VelocidadeCreatedBy`,
    `v`.`created_by_name` AS `VelocidadeCreatedByName`,
    `v`.`updated_by` AS `VelocidadeUpdatedBy`,
    `v`.`updated_by_name` AS `VelocidadeUpdatedByName`,
    `v`.`active` AS `VelocidadeActive`,
    `c`.`created_at` AS `CircuitoCreatedAt`,
    `c`.`updated_at` AS `CircuitoUpdatedAt`,
    `c`.`deleted_at` AS `CircuitoDeletedAt`,
    `c`.`created_by` AS `CircuitoCreatedBy`,
    `c`.`created_by_name` AS `CircuitoCreatedByName`,
    `c`.`updated_by` AS `CircuitoUpdatedBy`,
    `c`.`updated_by_name` AS `CircuitoUpdatedByName`,
    `c`.`active` AS `CircuitoActive`,
    `c`.`data_ativacao` AS `CircuitoDataAtivacao`,
    `c`.`data_cancelamento` AS `CircuitoDataCancelamento`,
    `c`.`status` AS `CircuitoStatus`,
    `c`.`sigla` AS `CircuitoSigla`,
    `c`.`endereco` AS `CircuitoEndereco`,
    `c`.`SEI` AS `CircuitoSEI`,
    `s`.`id` AS `SetorId`,
    `c`.`setor_id` AS `CircuitoSetorId`,
    `s`.`nome` AS `SetorNome`,
    `s`.`sigla` AS `SetorSigla`,
    `s`.`endereco` AS `SetorEndereco`,
    `s`.`contato_id` AS `SetorContatoId`,
    `s`.`created_at` AS `SetorCreatedAt`,
    `s`.`updated_at` AS `SetorUpdatedAt`,
    `s`.`deleted_at` AS `SetorDeletedAt`,
    `s`.`created_by` AS `SetorCreatedBy`,
    `s`.`created_by_name` AS `SetorCreatedByName`,
    `s`.`updated_by` AS `SetorUpdatedBy`,
    `s`.`updated_by_name` AS `SetorUpdatedByName`,
    `s`.`active` AS `SetorActive`,
    `ct`.`setor_id` AS `ContatoSetorId`,
    `ct`.`email` AS `ContatoEmail`,
    `ct`.`telefone` AS `ContatoTelefone`,
    `ct`.`created_at` AS `ContatoCreatedAt`,
    `ct`.`updated_at` AS `ContatoUpdatedAt`,
    `ct`.`deleted_at` AS `ContatoDeletedAt`,
    `ct`.`created_by` AS `ContatoCreatedBy`,
    `ct`.`created_by_name` AS `ContatoCreatedByName`,
    `ct`.`updated_by` AS `ContatoUpdatedBy`,
    `ct`.`updated_by_name` AS `ContatoUpdatedByName`,
    `ct`.`active` AS `ContatoActive`,
    `cb`.`id` AS `CobrancaId`,
    `cb`.`circuito_id` AS `CobrancaCircuitoId`,
    `cb`.`orgao_id` AS `CobrancaOrgaoId`,
    `cb`.`dia_cobrado` AS `CobrancaDiaCobrado`,
    `cb`.`data_inicio` AS `CobrancaDataInicio`,
    `cb`.`data_fim` AS `CobrancaDataFim`,
    `cb`.`created_at` AS `CobrancaCreatedAt`,
    `cb`.`updated_at` AS `CobrancaUpdatedAt`,
    `cb`.`deleted_at` AS `CobrancaDeletedAt`,
    `cb`.`created_by` AS `CobrancaCreatedBy`,
    `cb`.`created_by_name` AS `CobrancaCreatedByName`,
    `cb`.`updated_by` AS `CobrancaUpdatedBy`,
    `cb`.`updated_by_name` AS `CobrancaUpdatedByName`,
    `cb`.`active` AS `CobrancaActive`,
    `cb`.`SEI` AS `CobrancaSEI`,
    `e`.`id` AS `EmpresaId`,
    `e`.`data_inicio` AS `EmpresaDataInicio`,
    `e`.`data_fim` AS `EmpresaDataFim`,
    `e`.`contato_id` AS `EmpresaContatoId`,
    `e`.`created_at` AS `EmpresaCreatedAt`,
    `e`.`updated_at` AS `EmpresaUpdatedAt`,
    `e`.`created_by` AS `EmpresaCreatedBy`,
    `e`.`created_by_name` AS `EmpresaCreatedByName`,
    `e`.`updated_by` AS `EmpresaUpdatedBy`,
    `e`.`updated_by_name` AS `EmpresaUpdatedByName`,
    `e`.`active` AS `EmpresaActive`,
    `e`.`deleted_at` AS `EmpresaDeletedAt`
from (
        (
            (
                (
                    (
                        `circuito` `c`
                        left join `setor` `s` on((`c`.`setor_id` = `s`.`id`))
                    )
                    left join `contato` `ct` on((`s`.`contato_id` = `ct`.`id`))
                )
                left join `cobrancas` `cb` on((`c`.`id` = `cb`.`circuito_id`))
            )
            left join `empresa` `e` on((`ct`.`id` = `e`.`contato_id`))
        )
        left join `velocidade` `v` on((`c`.`velocidade_id` = `v`.`id`))
    )
where (`c`.`deleted_at` is null)
order by `ct`.`nome` desc,
    `c`.`nome`,
    `c`.`velocidade_id`