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
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='SELECT COLUMN_NAME \r\nFROM INFORMATION_SCHEMA.COLUMNS \r\nWHERE TABLE_NAME = ''circuito'';';

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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='SELECT COLUMN_NAME \r\nFROM INFORMATION_SCHEMA.COLUMNS \r\nWHERE TABLE_NAME = ''cliente'';';

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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='SELECT COLUMN_NAME \r\nFROM INFORMATION_SCHEMA.COLUMNS \r\nWHERE TABLE_NAME = ''cobrancas'';';

CREATE TABLE IF NOT EXISTS `contato` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `setor_id` int unsigned DEFAULT NULL,
  `nome` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefone` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='SELECT COLUMN_NAME \r\nFROM INFORMATION_SCHEMA.COLUMNS \r\nWHERE TABLE_NAME = ''contato'';';

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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='SELECT COLUMN_NAME \r\nFROM INFORMATION_SCHEMA.COLUMNS \r\nWHERE TABLE_NAME = ''contatos_operadoras'';';

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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='SELECT COLUMN_NAME \r\nFROM INFORMATION_SCHEMA.COLUMNS \r\nWHERE TABLE_NAME = ''contrato'';';

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
  KEY `contato_id` (`contato_id`),
  CONSTRAINT `FK_empresa_contato` FOREIGN KEY (`contato_id`) REFERENCES `contato` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='SELECT COLUMN_NAME \r\nFROM INFORMATION_SCHEMA.COLUMNS \r\nWHERE TABLE_NAME = ''empresa'';';

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `setor` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `contato_id` int unsigned DEFAULT NULL,
  `nome` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sigla` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `endereco` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT (now()),
  `updated_at` datetime DEFAULT (now()) ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='SELECT COLUMN_NAME \r\nFROM INFORMATION_SCHEMA.COLUMNS \r\nWHERE TABLE_NAME = ''setor'';';

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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='SELECT COLUMN_NAME \r\nFROM INFORMATION_SCHEMA.COLUMNS \r\nWHERE TABLE_NAME = ''user'';';

CREATE TABLE IF NOT EXISTS `velocidade` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `empresa_id` int unsigned DEFAULT NULL,
  `tipo_servico` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `velocidade` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estoque` smallint unsigned DEFAULT NULL,
  `custo_unitario` decimal(12,2) unsigned DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT (now()),
  `updated_at` datetime DEFAULT (now()) ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `velocidade_empresa_id_index` (`empresa_id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='SELECT COLUMN_NAME \r\nFROM INFORMATION_SCHEMA.COLUMNS \r\nWHERE TABLE_NAME = ''velocidade'';';

CREATE TABLE `view_circuitos` (
	`id` INT UNSIGNED NOT NULL,
	`circ_nome` VARCHAR(1) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`circ_setor_id` INT UNSIGNED NULL,
	`circ_velocidade_id` INT UNSIGNED NULL,
	`circ_active` TINYINT(1) NOT NULL,
	`circ_data_ativacao` DATE NULL,
	`circ_data_cancelamento` DATE NULL,
	`circ_status` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`circ_sigla` VARCHAR(1) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`circ_endereco` VARCHAR(1) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`circ_SEI` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`circ_updated_by` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`circ_updated_by_name` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`circ_created_by` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`circ_created_by_name` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`deleted_at` DATETIME NULL,
	`created_at` DATETIME NULL,
	`updated_at` DATETIME NULL,
	`vel_id` INT UNSIGNED NOT NULL,
	`vel_empresa_id` INT UNSIGNED NULL,
	`vel_tipo_servico` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`vel_velocidade` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`vel_link` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`vel_estoque` SMALLINT UNSIGNED NULL,
	`vel_custo_unitario` DECIMAL(12,2) UNSIGNED NULL,
	`vel_active` TINYINT(1) NULL,
	`vel_created_by` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`vel_created_by_name` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`vel_updated_by` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`vel_updated_by_name` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`vel_deleted_at` DATETIME NULL,
	`vel_created_at` DATETIME NULL,
	`vel_updated_at` DATETIME NULL,
	`set_id` INT UNSIGNED NOT NULL,
	`set_contato_id` INT UNSIGNED NULL,
	`set_nome` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`set_sigla` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`set_endereco` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`set_active` TINYINT(1) NOT NULL,
	`set_created_by` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`set_created_by_name` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`set_updated_by` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`set_updated_by_name` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`set_deleted_at` DATETIME NULL,
	`set_created_at` DATETIME NULL,
	`set_updated_at` DATETIME NULL
) ENGINE=MyISAM;

CREATE TABLE `view_cliente_contato` (
	`id` INT UNSIGNED NOT NULL,
	`cli_contato_id` INT UNSIGNED NULL,
	`cli_nome` VARCHAR(1) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`cli_sigla` VARCHAR(1) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`cli_endereco` VARCHAR(1) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`cli_active` TINYINT(1) NOT NULL,
	`cli_created_by` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`cli_created_by_name` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`cli_updated_by` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`cli_updated_by_name` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`deleted_at` DATETIME NULL,
	`created_at` DATETIME NULL,
	`updated_at` DATETIME NULL,
	`cont_id` INT UNSIGNED NULL,
	`cont_setor_id` INT UNSIGNED NULL,
	`cont_nome` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`cont_email` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`cont_telefone` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`cont_data_inicio` DATE NULL,
	`cont_data_fim` DATE NULL,
	`cont_active` TINYINT(1) NULL,
	`cont_created_by` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`cont_created_by_name` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`cont_updated_by` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`cont_updated_by_name` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`cont_deleted_at` DATETIME NULL,
	`cont_created_at` DATETIME NULL,
	`cont_updated_at` DATETIME NULL
) ENGINE=MyISAM;

CREATE TABLE `view_cobrancas` (
	`id` BIGINT UNSIGNED NOT NULL,
	`cob_upload` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`cob_circuito_id` INT UNSIGNED NOT NULL,
	`cob_operadora_id` INT UNSIGNED NOT NULL,
	`cob_orgao_id` INT UNSIGNED NOT NULL,
	`cob_dia_cobrado` INT UNSIGNED NOT NULL,
	`cob_data_inicio` DATE NULL,
	`cob_data_fim` DATE NULL,
	`cob_custo_mensal` DECIMAL(12,2) UNSIGNED NOT NULL,
	`cob_created_by` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`cob_created_by_name` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`cob_updated_by` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`cob_updated_by_name` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`cob_active` TINYINT(1) NOT NULL,
	`cob_SEI` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`deleted_at` DATETIME NULL,
	`created_at` DATETIME NULL,
	`updated_at` DATETIME NULL,
	`cir_id` INT UNSIGNED NOT NULL,
	`cir_nome` VARCHAR(1) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`cir_setor_id` INT UNSIGNED NULL,
	`cir_velocidade_id` INT UNSIGNED NULL,
	`cir_active` TINYINT(1) NOT NULL,
	`cir_data_ativacao` DATE NULL,
	`cir_data_cancelamento` DATE NULL,
	`cir_status` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`cir_sigla` VARCHAR(1) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`cir_endereco` VARCHAR(1) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`cir_SEI` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`cir_updated_by` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`cir_updated_by_name` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`cir_created_by` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`cir_created_by_name` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`cir_deleted_at` DATETIME NULL,
	`cir_created_at` DATETIME NULL,
	`cir_updated_at` DATETIME NULL,
	`opr_id` INT UNSIGNED NOT NULL,
	`opr_contato_id` INT UNSIGNED NULL,
	`opr_nome` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`opr_data_inicio` DATE NULL,
	`opr_data_fim` DATE NULL,
	`opr_active` TINYINT(1) NOT NULL,
	`opr_created_by` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`opr_created_by_name` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`opr_updated_by` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`opr_updated_by_name` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`opr_deleted_at` DATETIME NULL,
	`opr_created_at` DATETIME NULL,
	`opr_updated_at` DATETIME NULL,
	`org_id` INT UNSIGNED NOT NULL,
	`org_contato_id` INT UNSIGNED NULL,
	`org_nome` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`org_sigla` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`org_endereco` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`org_active` TINYINT(1) NOT NULL,
	`org_created_by` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`org_created_by_name` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`org_updated_by` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`org_updated_by_name` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`org_deleted_at` DATETIME NULL,
	`org_created_at` DATETIME NULL,
	`org_updated_at` DATETIME NULL
) ENGINE=MyISAM;

CREATE TABLE `view_cobranca_circuito` 
) ENGINE=MyISAM;

CREATE TABLE `view_contatos_operadoras_empresa` (
	`id` INT UNSIGNED NOT NULL,
	`oc_empresa_id` INT UNSIGNED NOT NULL,
	`oc_nome` VARCHAR(1) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`oc_email` VARCHAR(1) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`oc_telefone` VARCHAR(1) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`oc_data_inicio` DATE NULL,
	`oc_data_fim` DATE NULL,
	`created_at` DATETIME NULL,
	`deleted_at` DATETIME NULL,
	`updated_at` DATETIME NULL,
	`emp_id` INT UNSIGNED NULL,
	`emp_contato_id` INT UNSIGNED NULL,
	`emp_nome` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`emp_data_inicio` DATE NULL,
	`emp_data_fim` DATE NULL,
	`emp_active` TINYINT(1) NULL,
	`emp_created_by` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`emp_created_by_name` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`emp_updated_by` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`emp_updated_by_name` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`emp_deleted_at` DATETIME NULL,
	`emp_created_at` DATETIME NULL,
	`emp_updated_at` DATETIME NULL
) ENGINE=MyISAM;

CREATE TABLE `view_contratos_velocidade` (
	`id` INT UNSIGNED NOT NULL,
	`cont_velocidade_id` INT UNSIGNED NULL,
	`cont_nome` VARCHAR(1) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`cont_active` TINYINT(1) NOT NULL,
	`cont_created_by` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`cont_created_by_name` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`cont_updated_by` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`cont_updated_by_name` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`deleted_at` DATETIME NULL,
	`created_at` DATETIME NULL,
	`updated_at` DATETIME NULL,
	`vel_id` INT UNSIGNED NULL,
	`vel_empresa_id` INT UNSIGNED NULL,
	`vel_tipo_servico` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`vel_velocidade` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`vel_link` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`vel_estoque` SMALLINT UNSIGNED NULL,
	`vel_custo_unitario` DECIMAL(12,2) UNSIGNED NULL,
	`vel_active` TINYINT(1) NULL,
	`vel_created_by` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`vel_created_by_name` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`vel_updated_by` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`vel_updated_by_name` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`vel_deleted_at` DATETIME NULL,
	`vel_created_at` DATETIME NULL,
	`vel_updated_at` DATETIME NULL
) ENGINE=MyISAM;

CREATE TABLE `view_empresa_contato` (
	`id` INT UNSIGNED NOT NULL,
	`emp_contato_id` INT UNSIGNED NULL,
	`emp_nome` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`emp_data_inicio` DATE NULL,
	`emp_data_fim` DATE NULL,
	`emp_active` TINYINT(1) NOT NULL,
	`emp_created_by` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`emp_created_by_name` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`emp_updated_by` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`emp_updated_by_name` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`deleted_at` DATETIME NULL,
	`created_at` DATETIME NULL,
	`updated_at` DATETIME NULL,
	`cont_id` INT UNSIGNED NULL,
	`cont_setor_id` INT UNSIGNED NULL,
	`cont_nome` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`cont_email` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`cont_telefone` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`cont_data_inicio` DATE NULL,
	`cont_data_fim` DATE NULL,
	`cont_active` TINYINT(1) NULL,
	`cont_created_by` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`cont_created_by_name` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`cont_updated_by` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`cont_updated_by_name` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`cont_deleted_at` DATETIME NULL,
	`cont_created_at` DATETIME NULL,
	`cont_updated_at` DATETIME NULL
) ENGINE=MyISAM;

CREATE TABLE `view_setor_contato` (
	`id` INT UNSIGNED NOT NULL,
	`st_contato_id` INT UNSIGNED NULL,
	`st_nome` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`st_sigla` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`st_endereco` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`st_active` TINYINT(1) NOT NULL,
	`st_created_by` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`st_created_by_name` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`st_updated_by` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`st_updated_by_name` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`deleted_at` DATETIME NULL,
	`created_at` DATETIME NULL,
	`updated_at` DATETIME NULL,
	`ct_id` INT UNSIGNED NULL,
	`ct_setor_id` INT UNSIGNED NULL,
	`ct_nome` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`ct_email` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`ct_telefone` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`ct_data_inicio` DATE NULL,
	`ct_data_fim` DATE NULL,
	`ct_active` TINYINT(1) NULL,
	`ct_created_by` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`ct_created_by_name` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`ct_updated_by` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`ct_updated_by_name` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`ct_deleted_at` DATETIME NULL,
	`ct_created_at` DATETIME NULL,
	`ct_updated_at` DATETIME NULL
) ENGINE=MyISAM;

CREATE TABLE `view_velocidade_completa` (
	`id` INT UNSIGNED NOT NULL,
	`vel_empresa_id` INT UNSIGNED NULL,
	`vel_tipo_servico` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`vel_velocidade` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`vel_link` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`vel_estoque` SMALLINT UNSIGNED NULL,
	`vel_custo_unitario` DECIMAL(12,2) UNSIGNED NULL,
	`vel_active` TINYINT(1) NULL,
	`vel_created_by` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`vel_created_by_name` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`vel_updated_by` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`vel_updated_by_name` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`deleted_at` DATETIME NULL,
	`created_at` DATETIME NULL,
	`updated_at` DATETIME NULL,
	`emp_id` INT UNSIGNED NOT NULL,
	`emp_contato_id` INT UNSIGNED NULL,
	`emp_nome` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`emp_data_inicio` DATE NULL,
	`emp_data_fim` DATE NULL,
	`emp_active` TINYINT(1) NOT NULL,
	`emp_created_by` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`emp_created_by_name` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`emp_updated_by` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`emp_updated_by_name` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`emp_deleted_at` DATETIME NULL,
	`emp_created_at` DATETIME NULL,
	`emp_updated_at` DATETIME NULL,
	`cont_id` INT UNSIGNED NOT NULL,
	`cont_setor_id` INT UNSIGNED NULL,
	`cont_nome` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`cont_email` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`cont_telefone` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`cont_data_inicio` DATE NULL,
	`cont_data_fim` DATE NULL,
	`cont_active` TINYINT(1) NOT NULL,
	`cont_created_by` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`cont_created_by_name` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`cont_updated_by` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`cont_updated_by_name` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`cont_deleted_at` DATETIME NULL,
	`cont_created_at` DATETIME NULL,
	`cont_updated_at` DATETIME NULL,
	`set_id` INT UNSIGNED NOT NULL,
	`set_contato_id` INT UNSIGNED NULL,
	`set_nome` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`set_sigla` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`set_endereco` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`set_active` TINYINT(1) NOT NULL,
	`set_created_by` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`set_created_by_name` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`set_updated_by` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`set_updated_by_name` VARCHAR(1) NULL COLLATE 'utf8mb4_unicode_ci',
	`set_deleted_at` DATETIME NULL,
	`set_created_at` DATETIME NULL,
	`set_updated_at` DATETIME NULL
) ENGINE=MyISAM;

DROP TABLE IF EXISTS `view_circuitos`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `view_circuitos` AS select `circ`.`id` AS `id`,`circ`.`nome` AS `circ_nome`,`circ`.`setor_id` AS `circ_setor_id`,`circ`.`velocidade_id` AS `circ_velocidade_id`,`circ`.`active` AS `circ_active`,`circ`.`data_ativacao` AS `circ_data_ativacao`,`circ`.`data_cancelamento` AS `circ_data_cancelamento`,`circ`.`status` AS `circ_status`,`circ`.`sigla` AS `circ_sigla`,`circ`.`endereco` AS `circ_endereco`,`circ`.`SEI` AS `circ_SEI`,`circ`.`updated_by` AS `circ_updated_by`,`circ`.`updated_by_name` AS `circ_updated_by_name`,`circ`.`created_by` AS `circ_created_by`,`circ`.`created_by_name` AS `circ_created_by_name`,`circ`.`deleted_at` AS `deleted_at`,`circ`.`created_at` AS `created_at`,`circ`.`updated_at` AS `updated_at`,`vel`.`id` AS `vel_id`,`vel`.`empresa_id` AS `vel_empresa_id`,`vel`.`tipo_servico` AS `vel_tipo_servico`,`vel`.`velocidade` AS `vel_velocidade`,`vel`.`link` AS `vel_link`,`vel`.`estoque` AS `vel_estoque`,`vel`.`custo_unitario` AS `vel_custo_unitario`,`vel`.`active` AS `vel_active`,`vel`.`created_by` AS `vel_created_by`,`vel`.`created_by_name` AS `vel_created_by_name`,`vel`.`updated_by` AS `vel_updated_by`,`vel`.`updated_by_name` AS `vel_updated_by_name`,`vel`.`deleted_at` AS `vel_deleted_at`,`vel`.`created_at` AS `vel_created_at`,`vel`.`updated_at` AS `vel_updated_at`,`st`.`id` AS `set_id`,`st`.`contato_id` AS `set_contato_id`,`st`.`nome` AS `set_nome`,`st`.`sigla` AS `set_sigla`,`st`.`endereco` AS `set_endereco`,`st`.`active` AS `set_active`,`st`.`created_by` AS `set_created_by`,`st`.`created_by_name` AS `set_created_by_name`,`st`.`updated_by` AS `set_updated_by`,`st`.`updated_by_name` AS `set_updated_by_name`,`st`.`deleted_at` AS `set_deleted_at`,`st`.`created_at` AS `set_created_at`,`st`.`updated_at` AS `set_updated_at` from ((`circuito` `circ` join `velocidade` `vel` on((`circ`.`velocidade_id` = `vel`.`id`))) join `setor` `st` on((`circ`.`setor_id` = `st`.`id`))) where ((`circ`.`deleted_at` is null) and (`vel`.`deleted_at` is null) and (`st`.`deleted_at` is null));

DROP TABLE IF EXISTS `view_cliente_contato`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `view_cliente_contato` AS select `cli`.`id` AS `id`,`cli`.`contato_id` AS `cli_contato_id`,`cli`.`nome` AS `cli_nome`,`cli`.`sigla` AS `cli_sigla`,`cli`.`endereco` AS `cli_endereco`,`cli`.`active` AS `cli_active`,`cli`.`created_by` AS `cli_created_by`,`cli`.`created_by_name` AS `cli_created_by_name`,`cli`.`updated_by` AS `cli_updated_by`,`cli`.`updated_by_name` AS `cli_updated_by_name`,`cli`.`deleted_at` AS `deleted_at`,`cli`.`created_at` AS `created_at`,`cli`.`updated_at` AS `updated_at`,`cont`.`id` AS `cont_id`,`cont`.`setor_id` AS `cont_setor_id`,`cont`.`nome` AS `cont_nome`,`cont`.`email` AS `cont_email`,`cont`.`telefone` AS `cont_telefone`,`cont`.`data_inicio` AS `cont_data_inicio`,`cont`.`data_fim` AS `cont_data_fim`,`cont`.`active` AS `cont_active`,`cont`.`created_by` AS `cont_created_by`,`cont`.`created_by_name` AS `cont_created_by_name`,`cont`.`updated_by` AS `cont_updated_by`,`cont`.`updated_by_name` AS `cont_updated_by_name`,`cont`.`deleted_at` AS `cont_deleted_at`,`cont`.`created_at` AS `cont_created_at`,`cont`.`updated_at` AS `cont_updated_at` from (`cliente` `cli` left join `contato` `cont` on((`cli`.`contato_id` = `cont`.`id`)));

DROP TABLE IF EXISTS `view_cobrancas`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `view_cobrancas` AS select `cob`.`id` AS `id`,`cob`.`upload` AS `cob_upload`,`cob`.`circuito_id` AS `cob_circuito_id`,`cob`.`operadora_id` AS `cob_operadora_id`,`cob`.`orgao_id` AS `cob_orgao_id`,`cob`.`dia_cobrado` AS `cob_dia_cobrado`,`cob`.`data_inicio` AS `cob_data_inicio`,`cob`.`data_fim` AS `cob_data_fim`,`cob`.`custo_mensal` AS `cob_custo_mensal`,`cob`.`created_by` AS `cob_created_by`,`cob`.`created_by_name` AS `cob_created_by_name`,`cob`.`updated_by` AS `cob_updated_by`,`cob`.`updated_by_name` AS `cob_updated_by_name`,`cob`.`active` AS `cob_active`,`cob`.`SEI` AS `cob_SEI`,`cob`.`deleted_at` AS `deleted_at`,`cob`.`created_at` AS `created_at`,`cob`.`updated_at` AS `updated_at`,`cir`.`id` AS `cir_id`,`cir`.`nome` AS `cir_nome`,`cir`.`setor_id` AS `cir_setor_id`,`cir`.`velocidade_id` AS `cir_velocidade_id`,`cir`.`active` AS `cir_active`,`cir`.`data_ativacao` AS `cir_data_ativacao`,`cir`.`data_cancelamento` AS `cir_data_cancelamento`,`cir`.`status` AS `cir_status`,`cir`.`sigla` AS `cir_sigla`,`cir`.`endereco` AS `cir_endereco`,`cir`.`SEI` AS `cir_SEI`,`cir`.`updated_by` AS `cir_updated_by`,`cir`.`updated_by_name` AS `cir_updated_by_name`,`cir`.`created_by` AS `cir_created_by`,`cir`.`created_by_name` AS `cir_created_by_name`,`cir`.`deleted_at` AS `cir_deleted_at`,`cir`.`created_at` AS `cir_created_at`,`cir`.`updated_at` AS `cir_updated_at`,`opr`.`id` AS `opr_id`,`opr`.`contato_id` AS `opr_contato_id`,`opr`.`nome` AS `opr_nome`,`opr`.`data_inicio` AS `opr_data_inicio`,`opr`.`data_fim` AS `opr_data_fim`,`opr`.`active` AS `opr_active`,`opr`.`created_by` AS `opr_created_by`,`opr`.`created_by_name` AS `opr_created_by_name`,`opr`.`updated_by` AS `opr_updated_by`,`opr`.`updated_by_name` AS `opr_updated_by_name`,`opr`.`deleted_at` AS `opr_deleted_at`,`opr`.`created_at` AS `opr_created_at`,`opr`.`updated_at` AS `opr_updated_at`,`org`.`id` AS `org_id`,`org`.`contato_id` AS `org_contato_id`,`org`.`nome` AS `org_nome`,`org`.`sigla` AS `org_sigla`,`org`.`endereco` AS `org_endereco`,`org`.`active` AS `org_active`,`org`.`created_by` AS `org_created_by`,`org`.`created_by_name` AS `org_created_by_name`,`org`.`updated_by` AS `org_updated_by`,`org`.`updated_by_name` AS `org_updated_by_name`,`org`.`deleted_at` AS `org_deleted_at`,`org`.`created_at` AS `org_created_at`,`org`.`updated_at` AS `org_updated_at` from (((`cobrancas` `cob` join `circuito` `cir` on((`cob`.`circuito_id` = `cir`.`id`))) join `empresa` `opr` on((`cob`.`operadora_id` = `opr`.`id`))) join `setor` `org` on((`cob`.`orgao_id` = `org`.`id`))) where ((`cob`.`deleted_at` is null) and (`cir`.`deleted_at` is null) and (`opr`.`deleted_at` is null) and (`org`.`deleted_at` is null));

DROP TABLE IF EXISTS `view_cobranca_circuito`;
CREATE ALGORITHM=UNDEFINED DEFINER=`SGC`@`%` SQL SECURITY DEFINER VIEW `view_cobranca_circuito` AS select `ct`.`id` AS `ContatoId`,`ct`.`nome` AS `ContatoNome`,`c`.`id` AS `CircuitoId`,`c`.`nome` AS `CircuitoNome`,`cb`.`operadora_id` AS `CobrancaOperadoraId`,`e`.`nome` AS `EmpresaNome`,`ct`.`data_inicio` AS `ContatoDataInicio`,`ct`.`data_fim` AS `ContatoDataFim`,`cb`.`custo_mensal` AS `CobrancaCustoMensal`,`c`.`velocidade_id` AS `CircuitoVelocidadeId`,`v`.`tipo_servico` AS `VelocidadeTipoServico`,`v`.`velocidade` AS `VelocidadeValor`,`v`.`custo_unitario` AS `VelocidadeCustoUnitario`,`v`.`link` AS `VelocidadeLink`,`v`.`estoque` AS `VelocidadeEstoque`,`v`.`empresa_id` AS `VelocidadeEmpresaId`,`v`.`created_at` AS `VelocidadeCreatedAt`,`v`.`updated_at` AS `VelocidadeUpdatedAt`,`v`.`deleted_at` AS `VelocidadeDeletedAt`,`v`.`created_by` AS `VelocidadeCreatedBy`,`v`.`created_by_name` AS `VelocidadeCreatedByName`,`v`.`updated_by` AS `VelocidadeUpdatedBy`,`v`.`updated_by_name` AS `VelocidadeUpdatedByName`,`v`.`active` AS `VelocidadeActive`,`c`.`created_at` AS `CircuitoCreatedAt`,`c`.`updated_at` AS `CircuitoUpdatedAt`,`c`.`deleted_at` AS `CircuitoDeletedAt`,`c`.`created_by` AS `CircuitoCreatedBy`,`c`.`created_by_name` AS `CircuitoCreatedByName`,`c`.`updated_by` AS `CircuitoUpdatedBy`,`c`.`updated_by_name` AS `CircuitoUpdatedByName`,`c`.`active` AS `CircuitoActive`,`c`.`data_ativacao` AS `CircuitoDataAtivacao`,`c`.`data_cancelamento` AS `CircuitoDataCancelamento`,`c`.`status` AS `CircuitoStatus`,`c`.`sigla` AS `CircuitoSigla`,`c`.`endereco` AS `CircuitoEndereco`,`c`.`SEI` AS `CircuitoSEI`,`s`.`id` AS `SetorId`,`c`.`setor_id` AS `CircuitoSetorId`,`s`.`nome` AS `SetorNome`,`s`.`sigla` AS `SetorSigla`,`s`.`endereco` AS `SetorEndereco`,`s`.`contato_id` AS `SetorContatoId`,`s`.`created_at` AS `SetorCreatedAt`,`s`.`updated_at` AS `SetorUpdatedAt`,`s`.`deleted_at` AS `SetorDeletedAt`,`s`.`created_by` AS `SetorCreatedBy`,`s`.`created_by_name` AS `SetorCreatedByName`,`s`.`updated_by` AS `SetorUpdatedBy`,`s`.`updated_by_name` AS `SetorUpdatedByName`,`s`.`active` AS `SetorActive`,`ct`.`setor_id` AS `ContatoSetorId`,`ct`.`email` AS `ContatoEmail`,`ct`.`telefone` AS `ContatoTelefone`,`ct`.`created_at` AS `ContatoCreatedAt`,`ct`.`updated_at` AS `ContatoUpdatedAt`,`ct`.`deleted_at` AS `ContatoDeletedAt`,`ct`.`created_by` AS `ContatoCreatedBy`,`ct`.`created_by_name` AS `ContatoCreatedByName`,`ct`.`updated_by` AS `ContatoUpdatedBy`,`ct`.`updated_by_name` AS `ContatoUpdatedByName`,`ct`.`active` AS `ContatoActive`,`cb`.`id` AS `CobrancaId`,`cb`.`circuito_id` AS `CobrancaCircuitoId`,`cb`.`orgao_id` AS `CobrancaOrgaoId`,`cb`.`dia_cobrado` AS `CobrancaDiaCobrado`,`cb`.`data_inicio` AS `CobrancaDataInicio`,`cb`.`data_fim` AS `CobrancaDataFim`,`cb`.`created_at` AS `CobrancaCreatedAt`,`cb`.`updated_at` AS `CobrancaUpdatedAt`,`cb`.`deleted_at` AS `CobrancaDeletedAt`,`cb`.`created_by` AS `CobrancaCreatedBy`,`cb`.`created_by_name` AS `CobrancaCreatedByName`,`cb`.`updated_by` AS `CobrancaUpdatedBy`,`cb`.`updated_by_name` AS `CobrancaUpdatedByName`,`cb`.`active` AS `CobrancaActive`,`cb`.`SEI` AS `CobrancaSEI`,`e`.`id` AS `EmpresaId`,`e`.`data_inicio` AS `EmpresaDataInicio`,`e`.`data_fim` AS `EmpresaDataFim`,`e`.`contato_id` AS `EmpresaContatoId`,`e`.`created_at` AS `EmpresaCreatedAt`,`e`.`updated_at` AS `EmpresaUpdatedAt`,`e`.`created_by` AS `EmpresaCreatedBy`,`e`.`created_by_name` AS `EmpresaCreatedByName`,`e`.`updated_by` AS `EmpresaUpdatedBy`,`e`.`updated_by_name` AS `EmpresaUpdatedByName`,`e`.`active` AS `EmpresaActive`,`e`.`deleted_at` AS `EmpresaDeletedAt` from (((((`circuito` `c` left join `setor` `s` on((`c`.`setor_id` = `s`.`id`))) left join `contato` `ct` on((`s`.`contato_id` = `ct`.`id`))) left join `cobrancas` `cb` on((`c`.`id` = `cb`.`circuito_id`))) left join `empresa` `e` on((`ct`.`id` = `e`.`contato_id`))) left join `velocidade` `v` on((`c`.`velocidade_id` = `v`.`id`))) where (`c`.`deleted_at` is null) order by `ct`.`nome` desc,`c`.`nome`,`c`.`velocidade_id`;

DROP TABLE IF EXISTS `view_contatos_operadoras_empresa`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `view_contatos_operadoras_empresa` AS select `oc`.`id` AS `id`,`oc`.`empresa_id` AS `oc_empresa_id`,`oc`.`nome` AS `oc_nome`,`oc`.`email` AS `oc_email`,`oc`.`telefone` AS `oc_telefone`,`oc`.`data_inicio` AS `oc_data_inicio`,`oc`.`data_fim` AS `oc_data_fim`,`oc`.`created_at` AS `created_at`,`oc`.`deleted_at` AS `deleted_at`,`oc`.`updated_at` AS `updated_at`,`emp`.`id` AS `emp_id`,`emp`.`contato_id` AS `emp_contato_id`,`emp`.`nome` AS `emp_nome`,`emp`.`data_inicio` AS `emp_data_inicio`,`emp`.`data_fim` AS `emp_data_fim`,`emp`.`active` AS `emp_active`,`emp`.`created_by` AS `emp_created_by`,`emp`.`created_by_name` AS `emp_created_by_name`,`emp`.`updated_by` AS `emp_updated_by`,`emp`.`updated_by_name` AS `emp_updated_by_name`,`emp`.`deleted_at` AS `emp_deleted_at`,`emp`.`created_at` AS `emp_created_at`,`emp`.`updated_at` AS `emp_updated_at` from (`contatos_operadoras` `oc` left join `empresa` `emp` on((`oc`.`empresa_id` = `emp`.`id`))) where (`oc`.`deleted_at` is null);

DROP TABLE IF EXISTS `view_contratos_velocidade`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `view_contratos_velocidade` AS select `cont`.`id` AS `id`,`cont`.`velocidade_id` AS `cont_velocidade_id`,`cont`.`nome` AS `cont_nome`,`cont`.`active` AS `cont_active`,`cont`.`created_by` AS `cont_created_by`,`cont`.`created_by_name` AS `cont_created_by_name`,`cont`.`updated_by` AS `cont_updated_by`,`cont`.`updated_by_name` AS `cont_updated_by_name`,`cont`.`deleted_at` AS `deleted_at`,`cont`.`created_at` AS `created_at`,`cont`.`updated_at` AS `updated_at`,`velo`.`id` AS `vel_id`,`velo`.`empresa_id` AS `vel_empresa_id`,`velo`.`tipo_servico` AS `vel_tipo_servico`,`velo`.`velocidade` AS `vel_velocidade`,`velo`.`link` AS `vel_link`,`velo`.`estoque` AS `vel_estoque`,`velo`.`custo_unitario` AS `vel_custo_unitario`,`velo`.`active` AS `vel_active`,`velo`.`created_by` AS `vel_created_by`,`velo`.`created_by_name` AS `vel_created_by_name`,`velo`.`updated_by` AS `vel_updated_by`,`velo`.`updated_by_name` AS `vel_updated_by_name`,`velo`.`deleted_at` AS `vel_deleted_at`,`velo`.`created_at` AS `vel_created_at`,`velo`.`updated_at` AS `vel_updated_at` from (`contrato` `cont` left join `velocidade` `velo` on((`cont`.`velocidade_id` = `velo`.`id`))) where (`cont`.`deleted_at` is null);

DROP TABLE IF EXISTS `view_empresa_contato`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `view_empresa_contato` AS select `emp`.`id` AS `id`,`emp`.`contato_id` AS `emp_contato_id`,`emp`.`nome` AS `emp_nome`,`emp`.`data_inicio` AS `emp_data_inicio`,`emp`.`data_fim` AS `emp_data_fim`,`emp`.`active` AS `emp_active`,`emp`.`created_by` AS `emp_created_by`,`emp`.`created_by_name` AS `emp_created_by_name`,`emp`.`updated_by` AS `emp_updated_by`,`emp`.`updated_by_name` AS `emp_updated_by_name`,`emp`.`deleted_at` AS `deleted_at`,`emp`.`created_at` AS `created_at`,`emp`.`updated_at` AS `updated_at`,`cont`.`id` AS `cont_id`,`cont`.`setor_id` AS `cont_setor_id`,`cont`.`nome` AS `cont_nome`,`cont`.`email` AS `cont_email`,`cont`.`telefone` AS `cont_telefone`,`cont`.`data_inicio` AS `cont_data_inicio`,`cont`.`data_fim` AS `cont_data_fim`,`cont`.`active` AS `cont_active`,`cont`.`created_by` AS `cont_created_by`,`cont`.`created_by_name` AS `cont_created_by_name`,`cont`.`updated_by` AS `cont_updated_by`,`cont`.`updated_by_name` AS `cont_updated_by_name`,`cont`.`deleted_at` AS `cont_deleted_at`,`cont`.`created_at` AS `cont_created_at`,`cont`.`updated_at` AS `cont_updated_at` from (`empresa` `emp` left join `contato` `cont` on((`emp`.`contato_id` = `cont`.`id`)));

DROP TABLE IF EXISTS `view_setor_contato`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `view_setor_contato` AS select `st`.`id` AS `id`,`st`.`contato_id` AS `st_contato_id`,`st`.`nome` AS `st_nome`,`st`.`sigla` AS `st_sigla`,`st`.`endereco` AS `st_endereco`,`st`.`active` AS `st_active`,`st`.`created_by` AS `st_created_by`,`st`.`created_by_name` AS `st_created_by_name`,`st`.`updated_by` AS `st_updated_by`,`st`.`updated_by_name` AS `st_updated_by_name`,`st`.`deleted_at` AS `deleted_at`,`st`.`created_at` AS `created_at`,`st`.`updated_at` AS `updated_at`,`ct`.`id` AS `ct_id`,`ct`.`setor_id` AS `ct_setor_id`,`ct`.`nome` AS `ct_nome`,`ct`.`email` AS `ct_email`,`ct`.`telefone` AS `ct_telefone`,`ct`.`data_inicio` AS `ct_data_inicio`,`ct`.`data_fim` AS `ct_data_fim`,`ct`.`active` AS `ct_active`,`ct`.`created_by` AS `ct_created_by`,`ct`.`created_by_name` AS `ct_created_by_name`,`ct`.`updated_by` AS `ct_updated_by`,`ct`.`updated_by_name` AS `ct_updated_by_name`,`ct`.`deleted_at` AS `ct_deleted_at`,`ct`.`created_at` AS `ct_created_at`,`ct`.`updated_at` AS `ct_updated_at` from (`setor` `st` left join `contato` `ct` on((`st`.`id` = `ct`.`setor_id`)));

DROP TABLE IF EXISTS `view_velocidade_completa`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `view_velocidade_completa` AS select `vel`.`id` AS `id`,`vel`.`empresa_id` AS `vel_empresa_id`,`vel`.`tipo_servico` AS `vel_tipo_servico`,`vel`.`velocidade` AS `vel_velocidade`,`vel`.`link` AS `vel_link`,`vel`.`estoque` AS `vel_estoque`,`vel`.`custo_unitario` AS `vel_custo_unitario`,`vel`.`active` AS `vel_active`,`vel`.`created_by` AS `vel_created_by`,`vel`.`created_by_name` AS `vel_created_by_name`,`vel`.`updated_by` AS `vel_updated_by`,`vel`.`updated_by_name` AS `vel_updated_by_name`,`vel`.`deleted_at` AS `deleted_at`,`vel`.`created_at` AS `created_at`,`vel`.`updated_at` AS `updated_at`,`emp`.`id` AS `emp_id`,`emp`.`contato_id` AS `emp_contato_id`,`emp`.`nome` AS `emp_nome`,`emp`.`data_inicio` AS `emp_data_inicio`,`emp`.`data_fim` AS `emp_data_fim`,`emp`.`active` AS `emp_active`,`emp`.`created_by` AS `emp_created_by`,`emp`.`created_by_name` AS `emp_created_by_name`,`emp`.`updated_by` AS `emp_updated_by`,`emp`.`updated_by_name` AS `emp_updated_by_name`,`emp`.`deleted_at` AS `emp_deleted_at`,`emp`.`created_at` AS `emp_created_at`,`emp`.`updated_at` AS `emp_updated_at`,`cont`.`id` AS `cont_id`,`cont`.`setor_id` AS `cont_setor_id`,`cont`.`nome` AS `cont_nome`,`cont`.`email` AS `cont_email`,`cont`.`telefone` AS `cont_telefone`,`cont`.`data_inicio` AS `cont_data_inicio`,`cont`.`data_fim` AS `cont_data_fim`,`cont`.`active` AS `cont_active`,`cont`.`created_by` AS `cont_created_by`,`cont`.`created_by_name` AS `cont_created_by_name`,`cont`.`updated_by` AS `cont_updated_by`,`cont`.`updated_by_name` AS `cont_updated_by_name`,`cont`.`deleted_at` AS `cont_deleted_at`,`cont`.`created_at` AS `cont_created_at`,`cont`.`updated_at` AS `cont_updated_at`,`st`.`id` AS `set_id`,`st`.`contato_id` AS `set_contato_id`,`st`.`nome` AS `set_nome`,`st`.`sigla` AS `set_sigla`,`st`.`endereco` AS `set_endereco`,`st`.`active` AS `set_active`,`st`.`created_by` AS `set_created_by`,`st`.`created_by_name` AS `set_created_by_name`,`st`.`updated_by` AS `set_updated_by`,`st`.`updated_by_name` AS `set_updated_by_name`,`st`.`deleted_at` AS `set_deleted_at`,`st`.`created_at` AS `set_created_at`,`st`.`updated_at` AS `set_updated_at` from (((`velocidade` `vel` join `empresa` `emp`) join `contato` `cont`) join `setor` `st`) where ((`vel`.`empresa_id` = `emp`.`id`) and (`emp`.`contato_id` = `cont`.`id`) and (`cont`.`setor_id` = `st`.`id`) and (`vel`.`deleted_at` is null) and (`emp`.`deleted_at` is null) and (`cont`.`deleted_at` is null) and (`st`.`deleted_at` is null));

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
