/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

CREATE DATABASE IF NOT EXISTS `circuito` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `circuito`;

DROP TABLE IF EXISTS `circuito`;
CREATE TABLE IF NOT EXISTS `circuito` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `setor_id` int unsigned DEFAULT NULL,
  `velocidade_id` int unsigned DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `data_ativacao` date DEFAULT NULL,
  `data_cancelamento` date DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sigla` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `endereco` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `SEI` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT (now()),
  `updated_at` datetime DEFAULT (now()) ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `circuito_setor_id_index` (`setor_id`),
  KEY `circuito_velocidade_id_index` (`velocidade_id`)
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `cliente`;
CREATE TABLE IF NOT EXISTS `cliente` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `contato_id` int unsigned DEFAULT NULL,
  `nome` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sigla` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `endereco` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT (now()),
  `updated_at` datetime DEFAULT (now()) ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `cliente_contato_id_index` (`contato_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `cobrancas`;
CREATE TABLE IF NOT EXISTS `cobrancas` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `upload` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `circuito_id` int unsigned NOT NULL,
  `operadora_id` int unsigned NOT NULL,
  `orgao_id` int unsigned NOT NULL,
  `dia_cobrado` int unsigned NOT NULL,
  `data_inicio` date DEFAULT NULL,
  `data_fim` date DEFAULT NULL,
  `custo_mensal` decimal(12,2) unsigned NOT NULL DEFAULT '0.00',
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `SEI` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT (now()),
  `updated_at` datetime DEFAULT (now()) ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `filter_index` (`data_inicio`,`data_fim`,`operadora_id`),
  KEY `cobrancas_circuito_id_index` (`circuito_id`),
  KEY `cobrancas_operadora_id_index` (`operadora_id`),
  KEY `cobrancas_orgao_id_index` (`orgao_id`),
  CONSTRAINT `cobrancas_circuito_id_foreign` FOREIGN KEY (`circuito_id`) REFERENCES `circuito` (`id`),
  CONSTRAINT `cobrancas_operadora_id_foreign` FOREIGN KEY (`operadora_id`) REFERENCES `empresa` (`id`),
  CONSTRAINT `cobrancas_orgao_id_foreign` FOREIGN KEY (`orgao_id`) REFERENCES `setor` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1763 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `contato`;
CREATE TABLE IF NOT EXISTS `contato` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `setor_id` int unsigned DEFAULT NULL,
  `nome` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefone` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `data_inicio` date DEFAULT NULL,
  `data_fim` date DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT (now()),
  `updated_at` datetime DEFAULT (now()) ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `contato_setor_id_foreign` (`setor_id`),
  CONSTRAINT `contato_setor_id_foreign` FOREIGN KEY (`setor_id`) REFERENCES `setor` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `contatos_operadoras`;
CREATE TABLE IF NOT EXISTS `contatos_operadoras` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `empresa_id` int unsigned NOT NULL,
  `nome` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `data_inicio` date DEFAULT NULL,
  `data_fim` date DEFAULT NULL,
  `created_at` datetime DEFAULT (now()),
  `deleted_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT (now()) ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `contatos_operadoras_empresa_id_foreign` (`empresa_id`),
  CONSTRAINT `contatos_operadoras_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `empresa` (`id`) ON DELETE CASCADE,
  CONSTRAINT `contatos_operadoras_ibfk_1` FOREIGN KEY (`empresa_id`) REFERENCES `empresa` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `contrato`;
CREATE TABLE IF NOT EXISTS `contrato` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `velocidade_id` int unsigned DEFAULT NULL,
  `nome` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT (now()),
  `updated_at` datetime DEFAULT (now()) ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `contrato_velocidade_id_index` (`velocidade_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `empresa`;
CREATE TABLE IF NOT EXISTS `empresa` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `contato_id` int unsigned DEFAULT NULL,
  `nome` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data_inicio` date DEFAULT NULL,
  `data_fim` date DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT (now()),
  `updated_at` datetime DEFAULT (now()) ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `empresa_contato_id_index` (`contato_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `setor`;
CREATE TABLE IF NOT EXISTS `setor` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sigla` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `endereco` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contato_id` int unsigned DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `setor_contato_id_index` (`contato_id`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cpf` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `remember_token` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT (now()),
  `updated_at` datetime DEFAULT (now()) ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_cpf_unique` (`cpf`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `velocidade`;
CREATE TABLE IF NOT EXISTS `velocidade` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `empresa_id` int unsigned DEFAULT NULL,
  `tipo_servico` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `velocidade` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `estoque` smallint unsigned NOT NULL,
  `custo_unitario` decimal(12,2) unsigned NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT (now()),
  `updated_at` datetime DEFAULT (now()) ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `velocidade_empresa_id_index` (`empresa_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP VIEW IF EXISTS `view_cobranca_circuito`;
CREATE TABLE `view_cobranca_circuito` 
) ENGINE=MyISAM;

DROP TABLE IF EXISTS `view_cobranca_circuito`;
CREATE ALGORITHM=UNDEFINED DEFINER=`SGC`@`%` SQL SECURITY DEFINER VIEW `view_cobranca_circuito` AS select `ct`.`id` AS `ContatoId`,`ct`.`nome` AS `ContatoNome`,`c`.`id` AS `CircuitoId`,`c`.`nome` AS `CircuitoNome`,`cb`.`operadora_id` AS `CobrancaOperadoraId`,`e`.`nome` AS `EmpresaNome`,`ct`.`data_inicio` AS `ContatoDataInicio`,`ct`.`data_fim` AS `ContatoDataFim`,`cb`.`custo_mensal` AS `CobrancaCustoMensal`,`c`.`velocidade_id` AS `CircuitoVelocidadeId`,`v`.`tipo_servico` AS `VelocidadeTipoServico`,`v`.`velocidade` AS `VelocidadeValor`,`v`.`custo_unitario` AS `VelocidadeCustoUnitario`,`v`.`link` AS `VelocidadeLink`,`v`.`estoque` AS `VelocidadeEstoque`,`v`.`empresa_id` AS `VelocidadeEmpresaId`,`v`.`created_at` AS `VelocidadeCreatedAt`,`v`.`updated_at` AS `VelocidadeUpdatedAt`,`v`.`deleted_at` AS `VelocidadeDeletedAt`,`v`.`created_by` AS `VelocidadeCreatedBy`,`v`.`created_by_name` AS `VelocidadeCreatedByName`,`v`.`updated_by` AS `VelocidadeUpdatedBy`,`v`.`updated_by_name` AS `VelocidadeUpdatedByName`,`v`.`active` AS `VelocidadeActive`,`c`.`created_at` AS `CircuitoCreatedAt`,`c`.`updated_at` AS `CircuitoUpdatedAt`,`c`.`deleted_at` AS `CircuitoDeletedAt`,`c`.`created_by` AS `CircuitoCreatedBy`,`c`.`created_by_name` AS `CircuitoCreatedByName`,`c`.`updated_by` AS `CircuitoUpdatedBy`,`c`.`updated_by_name` AS `CircuitoUpdatedByName`,`c`.`active` AS `CircuitoActive`,`c`.`data_ativacao` AS `CircuitoDataAtivacao`,`c`.`data_cancelamento` AS `CircuitoDataCancelamento`,`c`.`status` AS `CircuitoStatus`,`c`.`sigla` AS `CircuitoSigla`,`c`.`endereco` AS `CircuitoEndereco`,`c`.`SEI` AS `CircuitoSEI`,`s`.`id` AS `SetorId`,`c`.`setor_id` AS `CircuitoSetorId`,`s`.`nome` AS `SetorNome`,`s`.`sigla` AS `SetorSigla`,`s`.`endereco` AS `SetorEndereco`,`s`.`contato_id` AS `SetorContatoId`,`s`.`created_at` AS `SetorCreatedAt`,`s`.`updated_at` AS `SetorUpdatedAt`,`s`.`deleted_at` AS `SetorDeletedAt`,`s`.`created_by` AS `SetorCreatedBy`,`s`.`created_by_name` AS `SetorCreatedByName`,`s`.`updated_by` AS `SetorUpdatedBy`,`s`.`updated_by_name` AS `SetorUpdatedByName`,`s`.`active` AS `SetorActive`,`ct`.`setor_id` AS `ContatoSetorId`,`ct`.`email` AS `ContatoEmail`,`ct`.`telefone` AS `ContatoTelefone`,`ct`.`created_at` AS `ContatoCreatedAt`,`ct`.`updated_at` AS `ContatoUpdatedAt`,`ct`.`deleted_at` AS `ContatoDeletedAt`,`ct`.`created_by` AS `ContatoCreatedBy`,`ct`.`created_by_name` AS `ContatoCreatedByName`,`ct`.`updated_by` AS `ContatoUpdatedBy`,`ct`.`updated_by_name` AS `ContatoUpdatedByName`,`ct`.`active` AS `ContatoActive`,`cb`.`id` AS `CobrancaId`,`cb`.`circuito_id` AS `CobrancaCircuitoId`,`cb`.`orgao_id` AS `CobrancaOrgaoId`,`cb`.`dia_cobrado` AS `CobrancaDiaCobrado`,`cb`.`data_inicio` AS `CobrancaDataInicio`,`cb`.`data_fim` AS `CobrancaDataFim`,`cb`.`created_at` AS `CobrancaCreatedAt`,`cb`.`updated_at` AS `CobrancaUpdatedAt`,`cb`.`deleted_at` AS `CobrancaDeletedAt`,`cb`.`created_by` AS `CobrancaCreatedBy`,`cb`.`created_by_name` AS `CobrancaCreatedByName`,`cb`.`updated_by` AS `CobrancaUpdatedBy`,`cb`.`updated_by_name` AS `CobrancaUpdatedByName`,`cb`.`active` AS `CobrancaActive`,`cb`.`SEI` AS `CobrancaSEI`,`e`.`id` AS `EmpresaId`,`e`.`data_inicio` AS `EmpresaDataInicio`,`e`.`data_fim` AS `EmpresaDataFim`,`e`.`contato_id` AS `EmpresaContatoId`,`e`.`created_at` AS `EmpresaCreatedAt`,`e`.`updated_at` AS `EmpresaUpdatedAt`,`e`.`created_by` AS `EmpresaCreatedBy`,`e`.`created_by_name` AS `EmpresaCreatedByName`,`e`.`updated_by` AS `EmpresaUpdatedBy`,`e`.`updated_by_name` AS `EmpresaUpdatedByName`,`e`.`active` AS `EmpresaActive`,`e`.`deleted_at` AS `EmpresaDeletedAt` from (((((`circuito` `c` left join `setor` `s` on((`c`.`setor_id` = `s`.`id`))) left join `contato` `ct` on((`s`.`contato_id` = `ct`.`id`))) left join `cobrancas` `cb` on((`c`.`id` = `cb`.`circuito_id`))) left join `empresa` `e` on((`ct`.`id` = `e`.`contato_id`))) left join `velocidade` `v` on((`c`.`velocidade_id` = `v`.`id`))) where (`c`.`deleted_at` is null) order by `ct`.`nome` desc,`c`.`nome`,`c`.`velocidade_id`;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
