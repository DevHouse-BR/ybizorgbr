-- phpMyAdmin SQL Dump
-- version 4.0.10.14
-- http://www.phpmyadmin.net
--
-- Máquina: localhost:3306
-- Data de Criação: 08-Jun-2016 às 16:30
-- Versão do servidor: 5.5.49-cll
-- versão do PHP: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de Dados: `ybizorgb_joomla`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `irqdj_assets`
--

CREATE TABLE IF NOT EXISTS `irqdj_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=106 ;

--
-- Extraindo dados da tabela `irqdj_assets`
--

INSERT INTO `irqdj_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 0, 201, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.login.offline":{"6":1},"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 8, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(4, 1, 9, 10, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(5, 1, 11, 12, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(6, 1, 13, 14, 1, 'com_config', 'com_config', '{}'),
(7, 1, 15, 22, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(8, 1, 23, 72, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(9, 1, 73, 74, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 75, 76, 1, 'com_installer', 'com_installer', '{"core.admin":[],"core.manage":{"7":0},"core.delete":{"7":0},"core.edit.state":{"7":0}}'),
(11, 1, 77, 78, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(12, 1, 79, 80, 1, 'com_login', 'com_login', '{}'),
(13, 1, 81, 82, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 83, 84, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 85, 86, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1}}'),
(16, 1, 87, 88, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(17, 1, 89, 90, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(18, 1, 91, 92, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(19, 1, 93, 98, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(20, 1, 99, 100, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1},"core.manage":[],"core.edit":[],"core.edit.state":[]}'),
(21, 1, 101, 102, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1},"core.manage":[]}'),
(22, 1, 103, 104, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(23, 1, 105, 106, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(24, 1, 107, 110, 1, 'com_users', 'com_users', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(25, 1, 111, 178, 1, 'com_weblinks', 'com_weblinks', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(26, 1, 179, 180, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 24, 25, 2, 'com_content.category.2', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(28, 3, 4, 7, 2, 'com_banners.category.3', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(29, 7, 16, 21, 2, 'com_contact.category.4', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(30, 19, 94, 97, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(31, 25, 112, 177, 2, 'com_weblinks.category.6', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(32, 24, 108, 109, 1, 'com_users.category.7', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(33, 1, 181, 182, 1, 'com_finder', 'com_finder', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(34, 1, 183, 184, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{"core.admin":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(35, 1, 185, 186, 1, 'com_tags', 'com_tags', '{"core.admin":[],"core.manage":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(37, 8, 26, 35, 2, 'com_content.category.16', 'YABT Brasil', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(38, 28, 5, 6, 3, 'com_content.category.3', 'Biblioteca', ''),
(39, 29, 17, 20, 3, 'com_content.category.4', 'Casos de Sucesso', ''),
(40, 30, 95, 96, 3, 'com_content.category.5', 'Imprensa', ''),
(41, 31, 113, 176, 3, 'com_content.category.6', 'Notícias', ''),
(42, 95, 37, 48, 3, 'com_content.category.7', 'Treinamentos YABT Brasil', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(43, 1, 187, 188, 1, 'com_content.category.8', 'Salvador - Laboratório Empresarial® - YABT Brasil', ''),
(44, 37, 27, 28, 3, 'com_content.article.1', 'Quem Somos', ''),
(45, 37, 29, 30, 3, 'com_content.article.2', 'Equipe YABT Brasil', ''),
(46, 37, 31, 32, 3, 'com_content.article.3', 'Áreas de Atuação', ''),
(47, 95, 59, 60, 3, 'com_content.article.4', 'Business Labs', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(48, 42, 38, 39, 4, 'com_content.article.5', 'Laboratórios Empresariais Avançados', ''),
(49, 42, 40, 41, 4, 'com_content.article.6', 'Laboratórios Empresariais Avançados preparatórios para programas trainee', ''),
(50, 41, 114, 115, 4, 'com_content.article.7', 'Calendário de treinamentos gerenciais YABT Brasil 2007', ''),
(51, 41, 116, 117, 4, 'com_content.article.8', 'YABT Brasil Realizará o 1o Chá das Mulheres Empreendedoras em Salvador, BA', ''),
(52, 41, 118, 119, 4, 'com_content.article.9', 'YABT Brasil assina acordo com a Bernard Sistemas', ''),
(53, 41, 120, 121, 4, 'com_content.article.10', 'Programa Laboratórios Empresariais traz resultados positivos para jovens de Salvador', ''),
(54, 41, 122, 123, 4, 'com_content.article.11', 'O YABT Brasil inicia projeto de Treinamentos Gratuitos para 2007', ''),
(55, 41, 124, 125, 4, 'com_content.article.12', 'O YABT Brasil lança treinamento preparatório para processos seletivos trainee', ''),
(56, 41, 126, 127, 4, 'com_content.article.13', 'YABT Brasil realizará evento com Secretário de Indústria e Comércio do Estado da Bahia', ''),
(57, 41, 128, 129, 4, 'com_content.article.14', 'YABT Brasil assina acordo de parceria com a DataMall Marketing de Relacionamento', ''),
(58, 41, 130, 131, 4, 'com_content.article.15', ' 	  Salvador irá hospedar sofisticado evento de fomento ao Networking Feminino no dia internacional ', ''),
(59, 41, 132, 133, 4, 'com_content.article.16', 'Salvador sediou um sofisticado evento de fomento ao Networking Feminino no dia internacional da mulh', ''),
(60, 41, 134, 135, 4, 'com_content.article.17', 'Empreendedorismo e Novos Investimentos Será Tema da Palestra do Secretário de Ind. e Com. Rafael Amo', ''),
(61, 41, 136, 137, 4, 'com_content.article.18', 'Diretores do YABT Brasil participam de reuniões em Washington, DC', ''),
(62, 41, 138, 139, 4, 'com_content.article.19', 'Membros do Conselho do YABT Brasil se reuniram em Assembléia Geral Ordinária em em Salvador, BA', ''),
(63, 41, 140, 141, 4, 'com_content.article.20', 'YABT Brasil realizará mais uma edição do seu premiado programa Laboratórios Empresariais', ''),
(64, 41, 142, 143, 4, 'com_content.article.21', 'Jovens Universitários dão seus primeiros passos no mundo dos negócios', ''),
(65, 41, 144, 145, 4, 'com_content.article.22', 'Talent Invovation Competition 2011', ''),
(66, 41, 146, 147, 4, 'com_content.article.23', 'Duas equipes do Brasil são finalistas do Concurso TIC Americas no Panámá', ''),
(67, 41, 148, 149, 4, 'com_content.article.24', 'Divulgada a lista de vencedores da etapa final do Programa TIC Americas', ''),
(68, 41, 150, 151, 4, 'com_content.article.25', 'Apresentação do   Young Americas Business Trust no Fórum do Setor Privado da OEA', ''),
(69, 41, 152, 153, 4, 'com_content.article.26', 'Empresa Brasileira é uma das vencedoras do TIC Americas', ''),
(70, 41, 154, 155, 4, 'com_content.article.27', 'Tulio Severo Jr representou o YABT Brasil  no RIAL 2008 Seminário Americano Sobre Empregabilidade Ju', ''),
(71, 41, 156, 157, 4, 'com_content.article.28', 'CONAJE tem novo presidente 2011', ''),
(72, 41, 158, 159, 4, 'com_content.article.29', 'Fórum Novos Lideres 2009', ''),
(73, 41, 160, 161, 4, 'com_content.article.30', 'Conselheiro do YABT Brasil se reune com diretoria do YABT USA', ''),
(74, 41, 162, 163, 4, 'com_content.article.31', 'Jovens recebem capacitação em empreendedorismo em Salvador - TV Aratu Online', ''),
(75, 41, 164, 165, 4, 'com_content.article.32', 'Programa internacional capacita jovens   - Diário Oficial Municipio de Salvador', ''),
(76, 41, 166, 167, 4, 'com_content.article.33', 'VIII Fórum da Mulher Contabilista da Bahia', ''),
(77, 97, 63, 64, 3, 'com_content.article.34', 'Participe do YABT Brasil', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(78, 37, 33, 34, 3, 'com_content.article.35', 'Quatro áreas de atuação - A base do trabalho do YABT Brasil', ''),
(79, 42, 42, 43, 4, 'com_content.article.36', 'Eventos', ''),
(80, 41, 168, 169, 4, 'com_content.article.37', 'YABT Brasil sediou debate internacional sobre anti-corrupção', ''),
(81, 42, 44, 45, 4, 'com_content.article.38', 'Laboratórios Técnico-Empresariais', ''),
(82, 42, 46, 47, 4, 'com_content.article.39', 'Treinamentos Online Gratuitos (em inglês)', ''),
(83, 39, 18, 19, 4, 'com_content.article.40', 'Cases de sucesso de jovens empresários', ''),
(84, 97, 65, 66, 3, 'com_content.article.41', 'Parceiros', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(85, 97, 67, 68, 3, 'com_content.article.42', 'Contato', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(86, 41, 170, 171, 4, 'com_content.article.43', 'VIII Fórum da Mulher Contabilista da Bahia', ''),
(87, 41, 172, 173, 4, 'com_content.article.44', 'Programa internacional capacita jovens   - Diário Oficial Municipio de Salvador', ''),
(88, 41, 174, 175, 4, 'com_content.article.45', 'Jovens recebem capacitação em empreendedorismo em Salvador - TV Aratu Online', ''),
(89, 93, 52, 53, 4, 'com_content.article.46', 'JULHO e AGOSTO', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(90, 93, 56, 57, 4, 'com_content.article.47', 'SETEMBRO e OUTUBRO', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(91, 93, 54, 55, 4, 'com_content.article.48', 'NOVEMBRO', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(92, 93, 50, 51, 4, 'com_content.article.49', 'ASSISTA AOS VIDEO CLIPES DE CADA TURMA NO YOUTUBE AGORA:', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(93, 95, 49, 58, 3, 'com_content.category.17', 'Salvador - Laboratório Empresarial® - YABT Brasil', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(95, 8, 36, 61, 2, 'com_content.category.19', 'Programas', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(97, 8, 62, 71, 2, 'com_content.category.20', 'Sem Categoria', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(98, 1, 189, 190, 1, 'com_gantry', 'gantry', '{}'),
(99, 97, 69, 70, 3, 'com_content.article.50', 'Home', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(100, 1, 191, 192, 1, 'com_phocadownload', 'com_phocadownload', '{"core.admin":[],"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(102, 1, 193, 194, 1, 'com_chronoforms', 'chronoforms', '{}'),
(103, 1, 195, 196, 1, 'com_contenthistory', 'com_contenthistory', '{}'),
(104, 1, 197, 198, 1, 'com_ajax', 'com_ajax', '{}'),
(105, 1, 199, 200, 1, 'com_postinstall', 'com_postinstall', '{}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `irqdj_associations`
--

CREATE TABLE IF NOT EXISTS `irqdj_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `irqdj_banners`
--

CREATE TABLE IF NOT EXISTS `irqdj_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `irqdj_banner_clients`
--

CREATE TABLE IF NOT EXISTS `irqdj_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `irqdj_banner_tracks`
--

CREATE TABLE IF NOT EXISTS `irqdj_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `irqdj_categories`
--

CREATE TABLE IF NOT EXISTS `irqdj_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Extraindo dados da tabela `irqdj_categories`
--

INSERT INTO `irqdj_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 11, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(3, 38, 3, 6, 15, 2, 'uncategorised', 'com_content', 'Biblioteca', 'biblioteca', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '{"page_title":"","author":"","robots":""}', 176, '2011-01-01 00:00:01', 176, '2013-07-24 10:54:38', 0, '*', 1),
(4, 39, 4, 13, 14, 1, 'uncategorised', 'com_content', 'Casos de Sucesso', 'casos-de-sucesso', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '{"page_title":"","author":"","robots":""}', 176, '2011-01-01 00:00:01', 176, '2013-07-24 10:54:38', 0, '*', 1),
(5, 40, 5, 15, 16, 1, 'uncategorised', 'com_content', 'Imprensa', 'imprensa', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '{"page_title":"","author":"","robots":""}', 176, '2011-01-01 00:00:01', 176, '2013-07-24 10:54:38', 0, '*', 1),
(6, 41, 6, 17, 18, 1, 'uncategorised', 'com_content', 'Notícias', 'noticias', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '{"page_title":"","author":"","robots":""}', 176, '2011-01-01 00:00:01', 176, '2013-07-24 10:54:38', 2, '*', 1),
(7, 42, 19, 4, 5, 2, 'biblioteca/programas/treinamentos-yabt-brasil', 'com_content', 'Treinamentos YABT Brasil', 'treinamentos-yabt-brasil', '', '<p>Treinamentos com foco na atividade prática, desenhados para maximizar o desempenho de empreendedores e intra-empreendedores.</p>\r\n<p>Inscrições e informações através do e-mail <a href="mailto: contato@ybiz.org.br">contato@ybiz.org.br</a>.</p>', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":"","tags":null}', 176, '2011-01-01 00:00:01', 176, '2013-07-24 11:41:02', 1, '*', 1),
(16, 37, 1, 1, 2, 1, 'yabt-brasil', 'com_content', 'YABT Brasil', 'yabt-brasil', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":"","tags":null}', 176, '0000-00-00 00:00:00', 176, '2013-07-24 11:03:53', 0, '*', 1),
(17, 93, 19, 6, 7, 2, 'programas/biblioteca/salvador-laboratorio-empresarial-yabt-brasil', 'com_content', 'Salvador - Laboratório Empresarial® - YABT Brasil', 'salvador-laboratorio-empresarial-yabt-brasil', '', '<p>Curso de Empreendedorismo do YABT Brasil implementado através do Laboratório Empresarial® é dividido em módulos com os conteúdos de Liderança, Comunicação, Recursos Humanos, Marketing, Planejamento Financeiro, Contabilidade e Crédito, totalizando 20 horas de treinamento durante 5 dias de curso. O curso será oferecido a cerca de 300 jovens de baixa renda por ano , com idades entre 17 e 27 anos. São fornecidos aos alunos lanches todos os dias e certificados de conclusão em evento de formatura semestral.</p>\r\n<p><strong>Material Didático do Laboratório Empresarial® Brasileiro</strong></p>\r\n<p>A metodologia do Business Labs YABT foi adaptada a realidade Brasileira de planejamento de negócios e ao macro ambiente da economia. Foram introduzidos aspectos tributários específicos no módulo de contabilidade como o sistema "Simples" e "Super Simples" de tributação simplificada bem como o portal do empreendedor autônomo ( www.portaldoempreendedor.com.br ) implementado pelo governo Brasileiro a fim de diminuir a informalidade, facilitando o registro dos autônomos como pequenos empreendimentos, o qual iniciou seu funcionamento em Agosto de 2009. Cabe salientar que até o final do mês de outubro de 2009 o governo da Bahia ainda não havia realizado os acordos necessários para permitir aos bahianos os registros no portal.<br />Além disso, foi introduzido também na grade de aulas e no material didático, informações sobre crédito disponíveis aos microempreendedores, principalmente o microcrédito. Nesse sentido realizamos parcerias com a Desenbahia – Agencia de desenvolvimento da Bahia e com o CEADe – Centro Ecumênico de Desenvolvimento Humano, que atuam fornecendo os profissionais para a aplicação do módulo de crédito.</p>\r\n<p><strong>ATIVIDADES DO ANO DE 2009. </strong></p>\r\n<p>Foram as seguintes as atividades realizadas no ano de 2009:</p>', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":"","tags":null}', 176, '2013-07-24 11:05:09', 176, '2013-07-24 11:41:26', 1, '*', 1),
(19, 95, 1, 3, 8, 1, 'biblioteca/programas', 'com_content', 'Programas', 'programas', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":"","tags":null}', 176, '2013-07-24 11:40:15', 0, '0000-00-00 00:00:00', 0, '*', 1),
(20, 97, 1, 9, 10, 1, 'biblioteca/sem-categoria', 'com_content', 'Sem Categoria', 'sem-categoria', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":"","tags":null}', 176, '2013-07-24 11:59:11', 0, '0000-00-00 00:00:00', 0, '*', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `irqdj_chronoforms`
--

CREATE TABLE IF NOT EXISTS `irqdj_chronoforms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `form_type` tinyint(1) NOT NULL,
  `content` longtext NOT NULL,
  `wizardcode` longtext,
  `events_actions_map` longtext,
  `params` longtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `app` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Extraindo dados da tabela `irqdj_chronoforms`
--

INSERT INTO `irqdj_chronoforms` (`id`, `name`, `form_type`, `content`, `wizardcode`, `events_actions_map`, `params`, `published`, `app`) VALUES
(3, 'cadastro', 1, '<div class="ccms_form_element cfdiv_text" id="nome_completo1_container_div" style=""><label>Nome Completo</label><input maxlength="150" size="30" class=" validate[''required'']" title="" type="text" value="" name="nome_completo" />\n<div class="clear"></div><div id="error-message-nome_completo"></div></div><div class="ccms_form_element cfdiv_textarea" id="endereco1_container_div" style=""><label>Endereço</label><textarea cols="45" rows="12" class=" validate[''required'']" title="" name="endereco"></textarea>\n<div class="clear"></div><div id="error-message-endereco"></div></div><div class="ccms_form_element cfdiv_text" id="bairro1_container_div" style=""><label>Bairro</label><input maxlength="150" size="30" class=" validate[''required'']" title="" type="text" value="" name="bairro" />\n<div class="clear"></div><div id="error-message-bairro"></div></div><div class="ccms_form_element cfdiv_text" id="cep1_container_div" style=""><label>CEP</label><input maxlength="8" size="30" class=" validate[''required'',''digit'']" title="" type="text" value="" name="cep" />\n<div class="clear"></div><div id="error-message-cep"></div></div><div class="ccms_form_element cfdiv_text" id="email1_container_div" style=""><label>Email</label><input maxlength="150" size="30" class=" validate[''required'',''email'']" title="" type="text" value="" name="email" />\n<div class="clear"></div><div id="error-message-email"></div></div><div class="ccms_form_element cfdiv_text" id="email_alternativo1_container_div" style=""><label>Email Alternativo</label><input maxlength="150" size="30" class=" validate[''email'']" title="" type="text" value="" name="email_alternativo" />\n<div class="clear"></div><div id="error-message-email_alternativo"></div></div><div class="ccms_form_element cfdiv_text" id="rg1_container_div" style=""><label>RG</label><input maxlength="150" size="30" class=" validate[''required'']" title="" type="text" value="" name="rg" />\n<div class="clear"></div><div id="error-message-rg"></div></div><div class="ccms_form_element cfdiv_text" id="cpf1_container_div" style=""><label>CPF</label><input maxlength="150" size="30" class=" validate[''required'']" title="" type="text" value="" name="cpf" />\n<div class="clear"></div><div id="error-message-cpf"></div></div><div class="ccms_form_element cfdiv_text" id="telefone1_container_div" style=""><label>Telefone</label><input maxlength="150" size="30" class="" title="" type="text" value="" name="telefone" />\n<div class="clear"></div><div id="error-message-telefone"></div></div><div class="ccms_form_element cfdiv_text" id="celular1_container_div" style=""><label>Celular</label><input maxlength="150" size="30" class="" title="" type="text" value="" name="celular" />\n<div class="clear"></div><div id="error-message-celular"></div></div><div class="ccms_form_element cfdiv_datetime" id="nascimento1_container_div" style=""><label>Data de Nascimento</label><input maxlength="150" size="16" class="cf_date_picker" title="" type="text" value="" name="nascimento" />\n<div class="clear"></div><div id="error-message-nascimento"></div></div><div class="ccms_form_element cfdiv_radio" id="sexo1_container_div" style=""><label>Sexo</label><input type="hidden" name="sexo" value="" alt="ghost" />\n<div style="float:left; clear:none;"><input type="radio" name="sexo" id="sexo_0" title="" value="Masculino" class="validate[''required'']" />\n<label for="sexo_0">Masculino</label>\n<input type="radio" name="sexo" id="sexo_1" title="" value="Feminino" class="validate[''required'']" />\n<label for="sexo_1">Feminino</label>\n</div><div class="clear"></div><div id="error-message-sexo"></div></div><div class="ccms_form_element cfdiv_textarea" id="profissao1_container_div" style=""><label>Profissão</label><textarea cols="45" rows="12" class="" title="" name="profissao"></textarea>\n<div class="clear"></div><div id="error-message-profissao"></div></div><div class="ccms_form_element cfdiv_radio" id="escolaridade1_container_div" style=""><label>Escolaridade</label><input type="hidden" name="escolaridade" value="" alt="ghost" />\n<div style="float:left; clear:none;"><input type="radio" name="escolaridade" id="escolaridade_0" title="" value="Primeiro Grau/Ensino Básico" class="" />\n<label for="escolaridade_0">Primeiro Grau/Ensino Básico</label>\n<input type="radio" name="escolaridade" id="escolaridade_1" title="" value="Segundo Grau/Ensino Fundamental" class="" />\n<label for="escolaridade_1">Segundo Grau/Ensino Fundamental</label>\n<input type="radio" name="escolaridade" id="escolaridade_2" title="" value="Superior" class="" />\n<label for="escolaridade_2">Superior</label>\n</div><div class="clear"></div><div id="error-message-escolaridade"></div></div><div class="ccms_form_element cfdiv_text" id="ensino_superior1_container_div" style=""><label>Caso Ensino Superior Informe o Curso</label><input maxlength="150" size="30" class="" title="" type="text" value="" name="ensino_superior" />\n<div class="clear"></div><div id="error-message-ensino_superior"></div></div><div class="ccms_form_element cfdiv_radio" id="faixa_renda1_container_div" style=""><label>Faixa de Renda</label><input type="hidden" name="faixa_renda" value="" alt="ghost" />\n<div style="float:left; clear:none;"><input type="radio" name="faixa_renda" id="faixa_renda_0" title="" value="até 3 salários mínimos" class="" />\n<label for="faixa_renda_0">até 3 salários mínimos</label>\n<input type="radio" name="faixa_renda" id="faixa_renda_1" title="" value="de 3 a 5 salários mínimos" class="" />\n<label for="faixa_renda_1">de 3 a 5 salários mínimos</label>\n<input type="radio" name="faixa_renda" id="faixa_renda_2" title="" value="mais de 5 salários mínimos" class="" />\n<label for="faixa_renda_2">mais de 5 salários mínimos</label>\n</div><div class="clear"></div><div id="error-message-faixa_renda"></div></div><div class="ccms_form_element cfdiv_radio" id="empresa_propria1_container_div" style=""><label>Tem empresa própria</label><input type="hidden" name="empresa_propria" value="" alt="ghost" />\n<div style="float:left; clear:none;"><input type="radio" name="empresa_propria" id="empresa_propria_0" title="" value="Sim" class="" />\n<label for="empresa_propria_0">Sim</label>\n<input type="radio" name="empresa_propria" id="empresa_propria_1" title="" value="Não" class="" />\n<label for="empresa_propria_1">Não</label>\n</div><div class="clear"></div><div id="error-message-empresa_propria"></div></div><div class="ccms_form_element cfdiv_radio" id="trababalhando1_container_div" style=""><label>Está trabalhando?</label><input type="hidden" name="trababalhando" value="" alt="ghost" />\n<div style="float:left; clear:none;"><input type="radio" name="trababalhando" id="trababalhando_0" title="" value="Sim" class="" />\n<label for="trababalhando_0">Sim</label>\n<input type="radio" name="trababalhando" id="trababalhando_1" title="" value="Não" class="" />\n<label for="trababalhando_1">Não</label>\n</div><div class="clear"></div><div id="error-message-trababalhando"></div></div><div class="ccms_form_element cfdiv_radio" id="computador1_container_div" style=""><label>Usa computador e internet?</label><input type="hidden" name="computador" value="" alt="ghost" />\n<div style="float:left; clear:none;"><input type="radio" name="computador" id="computador_0" title="" value="Sim" class="" />\n<label for="computador_0">Sim</label>\n<input type="radio" name="computador" id="computador_1" title="" value="Não" class="" />\n<label for="computador_1">Não</label>\n</div><div class="clear"></div><div id="error-message-computador"></div></div><div class="ccms_form_element cfdiv_radio" id="empresa1_container_div" style=""><label>Alguém da família tem empresa própria?</label><input type="hidden" name="empresa" value="" alt="ghost" />\n<div style="float:left; clear:none;"><input type="radio" name="empresa" id="empresa_0" title="" value="Sim" class="" />\n<label for="empresa_0">Sim</label>\n<input type="radio" name="empresa" id="empresa_1" title="" value="Não" class="" />\n<label for="empresa_1">Não</label>\n</div><div class="clear"></div><div id="error-message-empresa"></div></div><div class="ccms_form_element cfdiv_radio" id="motivo1_container_div" style=""><label>Porque deseja fazer o curso?</label><input type="hidden" name="motivo" value="" alt="ghost" />\n<div style="float:left; clear:none;"><input type="radio" name="motivo" id="motivo_0" title="" value="Curiosidade" class="" />\n<label for="motivo_0">Curiosidade</label>\n<input type="radio" name="motivo" id="motivo_1" title="" value="Desejo montar um negócio próprio" class="" />\n<label for="motivo_1">Desejo montar um negócio próprio</label>\n<input type="radio" name="motivo" id="motivo_2" title="" value="Desejo melhorar o negócio da família" class="" />\n<label for="motivo_2">Desejo melhorar o negócio da família</label>\n<input type="radio" name="motivo" id="motivo_3" title="" value="Desejo montar uma sociedade. Um negócio com outra pessoa" class="" />\n<label for="motivo_3">Desejo montar uma sociedade. Um negócio com outra pessoa</label>\n</div><div class="clear"></div><div id="error-message-motivo"></div></div><div class="ccms_form_element cfdiv_radio" id="conhecimento_curso1_container_div" style=""><label>Como ficou sabendo do curso?</label><input type="hidden" name="conhecimento_curso" value="" alt="ghost" />\n<div style="float:left; clear:none;"><input type="radio" name="conhecimento_curso" id="conhecimento_curso_0" title="" value="Fui convidado por uma entidade parceira" class="" />\n<label for="conhecimento_curso_0">Fui convidado por uma entidade parceira</label>\n<input type="radio" name="conhecimento_curso" id="conhecimento_curso_1" title="" value="Pela internet" class="" />\n<label for="conhecimento_curso_1">Pela internet</label>\n<input type="radio" name="conhecimento_curso" id="conhecimento_curso_2" title="" value="Por email" class="" />\n<label for="conhecimento_curso_2">Por email</label>\n</div><div class="clear"></div><div id="error-message-conhecimento_curso"></div></div><div class="ccms_form_element cfdiv_text" id="chrono_verification1_container_div" style=""><label>Digite o código</label><input maxlength="5" size="5" class="chrono_captcha_input" title="" type="text" value="" name="chrono_verification" />\n{chronocaptcha_img}<div class="clear"></div><div id="error-message-chrono_verification"></div></div><div class="ccms_form_element cfdiv_submit" id="input_submit_241_container_div" style="text-align:left"><input name="input_submit_24" class="" value="Enviar" type="submit" />\n<div class="clear"></div><div id="error-message-input_submit_24"></div></div><div class="ccms_form_element cfdiv_empty" id="empty_container_div" style=""><div class="clear"></div><div id="error-message-empty"></div></div>', 'array (\n  ''field_1'' => \n  array (\n    ''input_text_1_input_id'' => '''',\n    ''input_text_1_label_text'' => ''Nome Completo'',\n    ''input_text_1_input_name'' => ''nome_completo'',\n    ''input_text_1_input_value'' => '''',\n    ''input_text_1_input_maxlength'' => ''150'',\n    ''input_text_1_input_size'' => ''30'',\n    ''input_text_1_input_class'' => '''',\n    ''input_text_1_input_title'' => '''',\n    ''input_text_1_label_over'' => ''0'',\n    ''input_text_1_hide_label'' => ''0'',\n    ''input_text_1_multiline_start'' => ''0'',\n    ''input_text_1_multiline_add'' => ''0'',\n    ''input_text_1_validations'' => ''required'',\n    ''input_text_1_instructions'' => '''',\n    ''input_text_1_tooltip'' => '''',\n    ''tag'' => ''input'',\n    ''type'' => ''text'',\n    ''container_id'' => ''0'',\n  ),\n  ''field_2'' => \n  array (\n    ''input_textarea_2_input_id'' => '''',\n    ''input_textarea_2_label_text'' => ''Endereço'',\n    ''input_textarea_2_input_name'' => ''endereco'',\n    ''input_textarea_2_input_value'' => '''',\n    ''input_textarea_2_input_class'' => '''',\n    ''input_textarea_2_input_title'' => '''',\n    ''input_textarea_2_label_over'' => ''0'',\n    ''input_textarea_2_hide_label'' => ''0'',\n    ''input_textarea_2_input_cols'' => ''45'',\n    ''input_textarea_2_input_rows'' => ''12'',\n    ''input_textarea_2_wysiwyg_editor'' => ''0'',\n    ''input_textarea_2_editor_buttons'' => ''1'',\n    ''input_textarea_2_editor_width'' => ''400'',\n    ''input_textarea_2_editor_height'' => ''200'',\n    ''input_textarea_2_multiline_start'' => ''0'',\n    ''input_textarea_2_multiline_add'' => ''0'',\n    ''input_textarea_2_validations'' => ''required'',\n    ''input_textarea_2_instructions'' => '''',\n    ''input_textarea_2_tooltip'' => '''',\n    ''tag'' => ''input'',\n    ''type'' => ''textarea'',\n    ''container_id'' => ''0'',\n  ),\n  ''field_3'' => \n  array (\n    ''input_text_3_input_id'' => '''',\n    ''input_text_3_label_text'' => ''Bairro'',\n    ''input_text_3_input_name'' => ''bairro'',\n    ''input_text_3_input_value'' => '''',\n    ''input_text_3_input_maxlength'' => ''150'',\n    ''input_text_3_input_size'' => ''30'',\n    ''input_text_3_input_class'' => '''',\n    ''input_text_3_input_title'' => '''',\n    ''input_text_3_label_over'' => ''0'',\n    ''input_text_3_hide_label'' => ''0'',\n    ''input_text_3_multiline_start'' => ''0'',\n    ''input_text_3_multiline_add'' => ''0'',\n    ''input_text_3_validations'' => ''required'',\n    ''input_text_3_instructions'' => '''',\n    ''input_text_3_tooltip'' => '''',\n    ''tag'' => ''input'',\n    ''type'' => ''text'',\n    ''container_id'' => ''0'',\n  ),\n  ''field_4'' => \n  array (\n    ''input_text_4_input_id'' => '''',\n    ''input_text_4_label_text'' => ''CEP'',\n    ''input_text_4_input_name'' => ''cep'',\n    ''input_text_4_input_value'' => '''',\n    ''input_text_4_input_maxlength'' => ''8'',\n    ''input_text_4_input_size'' => ''30'',\n    ''input_text_4_input_class'' => '''',\n    ''input_text_4_input_title'' => '''',\n    ''input_text_4_label_over'' => ''0'',\n    ''input_text_4_hide_label'' => ''0'',\n    ''input_text_4_multiline_start'' => ''0'',\n    ''input_text_4_multiline_add'' => ''0'',\n    ''input_text_4_validations'' => ''required,digit'',\n    ''input_text_4_instructions'' => '''',\n    ''input_text_4_tooltip'' => '''',\n    ''tag'' => ''input'',\n    ''type'' => ''text'',\n    ''container_id'' => ''0'',\n  ),\n  ''field_5'' => \n  array (\n    ''input_text_5_input_id'' => '''',\n    ''input_text_5_label_text'' => ''Email'',\n    ''input_text_5_input_name'' => ''email'',\n    ''input_text_5_input_value'' => '''',\n    ''input_text_5_input_maxlength'' => ''150'',\n    ''input_text_5_input_size'' => ''30'',\n    ''input_text_5_input_class'' => '''',\n    ''input_text_5_input_title'' => '''',\n    ''input_text_5_label_over'' => ''0'',\n    ''input_text_5_hide_label'' => ''0'',\n    ''input_text_5_multiline_start'' => ''0'',\n    ''input_text_5_multiline_add'' => ''0'',\n    ''input_text_5_validations'' => ''required,email'',\n    ''input_text_5_instructions'' => '''',\n    ''input_text_5_tooltip'' => '''',\n    ''tag'' => ''input'',\n    ''type'' => ''text'',\n    ''container_id'' => ''0'',\n  ),\n  ''field_6'' => \n  array (\n    ''input_text_6_input_id'' => '''',\n    ''input_text_6_label_text'' => ''Email Alternativo'',\n    ''input_text_6_input_name'' => ''email_alternativo'',\n    ''input_text_6_input_value'' => '''',\n    ''input_text_6_input_maxlength'' => ''150'',\n    ''input_text_6_input_size'' => ''30'',\n    ''input_text_6_input_class'' => '''',\n    ''input_text_6_input_title'' => '''',\n    ''input_text_6_label_over'' => ''0'',\n    ''input_text_6_hide_label'' => ''0'',\n    ''input_text_6_multiline_start'' => ''0'',\n    ''input_text_6_multiline_add'' => ''0'',\n    ''input_text_6_validations'' => ''email'',\n    ''input_text_6_instructions'' => '''',\n    ''input_text_6_tooltip'' => '''',\n    ''tag'' => ''input'',\n    ''type'' => ''text'',\n    ''container_id'' => ''0'',\n  ),\n  ''field_7'' => \n  array (\n    ''input_text_7_input_id'' => '''',\n    ''input_text_7_label_text'' => ''RG'',\n    ''input_text_7_input_name'' => ''rg'',\n    ''input_text_7_input_value'' => '''',\n    ''input_text_7_input_maxlength'' => ''150'',\n    ''input_text_7_input_size'' => ''30'',\n    ''input_text_7_input_class'' => '''',\n    ''input_text_7_input_title'' => '''',\n    ''input_text_7_label_over'' => ''0'',\n    ''input_text_7_hide_label'' => ''0'',\n    ''input_text_7_multiline_start'' => ''0'',\n    ''input_text_7_multiline_add'' => ''0'',\n    ''input_text_7_validations'' => ''required'',\n    ''input_text_7_instructions'' => '''',\n    ''input_text_7_tooltip'' => '''',\n    ''tag'' => ''input'',\n    ''type'' => ''text'',\n    ''container_id'' => ''0'',\n  ),\n  ''field_8'' => \n  array (\n    ''input_text_8_input_id'' => '''',\n    ''input_text_8_label_text'' => ''CPF'',\n    ''input_text_8_input_name'' => ''cpf'',\n    ''input_text_8_input_value'' => '''',\n    ''input_text_8_input_maxlength'' => ''150'',\n    ''input_text_8_input_size'' => ''30'',\n    ''input_text_8_input_class'' => '''',\n    ''input_text_8_input_title'' => '''',\n    ''input_text_8_label_over'' => ''0'',\n    ''input_text_8_hide_label'' => ''0'',\n    ''input_text_8_multiline_start'' => ''0'',\n    ''input_text_8_multiline_add'' => ''0'',\n    ''input_text_8_validations'' => ''required'',\n    ''input_text_8_instructions'' => '''',\n    ''input_text_8_tooltip'' => '''',\n    ''tag'' => ''input'',\n    ''type'' => ''text'',\n    ''container_id'' => ''0'',\n  ),\n  ''field_9'' => \n  array (\n    ''input_text_9_input_id'' => '''',\n    ''input_text_9_label_text'' => ''Telefone'',\n    ''input_text_9_input_name'' => ''telefone'',\n    ''input_text_9_input_value'' => '''',\n    ''input_text_9_input_maxlength'' => ''150'',\n    ''input_text_9_input_size'' => ''30'',\n    ''input_text_9_input_class'' => '''',\n    ''input_text_9_input_title'' => '''',\n    ''input_text_9_label_over'' => ''0'',\n    ''input_text_9_hide_label'' => ''0'',\n    ''input_text_9_multiline_start'' => ''0'',\n    ''input_text_9_multiline_add'' => ''0'',\n    ''input_text_9_validations'' => '''',\n    ''input_text_9_instructions'' => '''',\n    ''input_text_9_tooltip'' => '''',\n    ''tag'' => ''input'',\n    ''type'' => ''text'',\n    ''container_id'' => ''0'',\n  ),\n  ''field_10'' => \n  array (\n    ''input_text_10_input_id'' => '''',\n    ''input_text_10_label_text'' => ''Celular'',\n    ''input_text_10_input_name'' => ''celular'',\n    ''input_text_10_input_value'' => '''',\n    ''input_text_10_input_maxlength'' => ''150'',\n    ''input_text_10_input_size'' => ''30'',\n    ''input_text_10_input_class'' => '''',\n    ''input_text_10_input_title'' => '''',\n    ''input_text_10_label_over'' => ''0'',\n    ''input_text_10_hide_label'' => ''0'',\n    ''input_text_10_multiline_start'' => ''0'',\n    ''input_text_10_multiline_add'' => ''0'',\n    ''input_text_10_validations'' => '''',\n    ''input_text_10_instructions'' => '''',\n    ''input_text_10_tooltip'' => '''',\n    ''tag'' => ''input'',\n    ''type'' => ''text'',\n    ''container_id'' => ''0'',\n  ),\n  ''field_11'' => \n  array (\n    ''input_datetime_11_input_id'' => '''',\n    ''input_datetime_11_label_text'' => ''Data de Nascimento'',\n    ''input_datetime_11_input_name'' => ''nascimento'',\n    ''input_datetime_11_input_value'' => '''',\n    ''input_datetime_11_input_maxlength'' => ''150'',\n    ''input_datetime_11_input_size'' => ''16'',\n    ''input_datetime_11_input_class'' => '''',\n    ''input_datetime_11_input_title'' => '''',\n    ''input_datetime_11_label_over'' => ''0'',\n    ''input_datetime_11_hide_label'' => ''0'',\n    ''input_datetime_11_timeonly'' => ''0'',\n    ''input_datetime_11_addtime'' => ''0'',\n    ''input_datetime_11_multiline_start'' => ''0'',\n    ''input_datetime_11_multiline_add'' => ''0'',\n    ''input_datetime_11_validations'' => '''',\n    ''input_datetime_11_instructions'' => '''',\n    ''input_datetime_11_tooltip'' => '''',\n    ''tag'' => ''input'',\n    ''type'' => ''datetime'',\n    ''container_id'' => ''0'',\n  ),\n  ''field_12'' => \n  array (\n    ''input_radio_12_input_id'' => '''',\n    ''input_radio_12_label_text'' => ''Sexo'',\n    ''input_radio_12_input_name'' => ''sexo'',\n    ''input_radio_12_input_value'' => '''',\n    ''input_radio_12_radios_over'' => ''0'',\n    ''input_radio_12_legend'' => '''',\n    ''input_radio_12_ghost'' => ''1'',\n    ''input_radio_12_ghost_value'' => '''',\n    ''input_radio_12_input_title'' => '''',\n    ''input_radio_12_label_over'' => ''0'',\n    ''input_radio_12_hide_label'' => ''0'',\n    ''input_radio_12_multiline_start'' => ''0'',\n    ''input_radio_12_multiline_add'' => ''0'',\n    ''input_radio_12_enable_dynamic_data'' => ''0'',\n    ''input_radio_12_data_path'' => '''',\n    ''input_radio_12_value_key'' => '''',\n    ''input_radio_12_text_key'' => '''',\n    ''input_radio_12_options'' => ''Masculino=Masculino\r\nFeminino=Feminino'',\n    ''input_radio_12_validations'' => ''required'',\n    ''input_radio_12_instructions'' => '''',\n    ''input_radio_12_tooltip'' => '''',\n    ''tag'' => ''input'',\n    ''type'' => ''radio'',\n    ''container_id'' => ''0'',\n  ),\n  ''field_13'' => \n  array (\n    ''input_textarea_13_input_id'' => '''',\n    ''input_textarea_13_label_text'' => ''Profissão'',\n    ''input_textarea_13_input_name'' => ''profissao'',\n    ''input_textarea_13_input_value'' => '''',\n    ''input_textarea_13_input_class'' => '''',\n    ''input_textarea_13_input_title'' => '''',\n    ''input_textarea_13_label_over'' => ''0'',\n    ''input_textarea_13_hide_label'' => ''0'',\n    ''input_textarea_13_input_cols'' => ''45'',\n    ''input_textarea_13_input_rows'' => ''12'',\n    ''input_textarea_13_wysiwyg_editor'' => ''0'',\n    ''input_textarea_13_editor_buttons'' => ''1'',\n    ''input_textarea_13_editor_width'' => ''400'',\n    ''input_textarea_13_editor_height'' => ''200'',\n    ''input_textarea_13_multiline_start'' => ''0'',\n    ''input_textarea_13_multiline_add'' => ''0'',\n    ''input_textarea_13_validations'' => '''',\n    ''input_textarea_13_instructions'' => '''',\n    ''input_textarea_13_tooltip'' => '''',\n    ''tag'' => ''input'',\n    ''type'' => ''textarea'',\n    ''container_id'' => ''0'',\n  ),\n  ''field_14'' => \n  array (\n    ''input_radio_14_input_id'' => '''',\n    ''input_radio_14_label_text'' => ''Escolaridade'',\n    ''input_radio_14_input_name'' => ''escolaridade'',\n    ''input_radio_14_input_value'' => '''',\n    ''input_radio_14_radios_over'' => ''0'',\n    ''input_radio_14_legend'' => '''',\n    ''input_radio_14_ghost'' => ''1'',\n    ''input_radio_14_ghost_value'' => '''',\n    ''input_radio_14_input_title'' => '''',\n    ''input_radio_14_label_over'' => ''0'',\n    ''input_radio_14_hide_label'' => ''0'',\n    ''input_radio_14_multiline_start'' => ''0'',\n    ''input_radio_14_multiline_add'' => ''0'',\n    ''input_radio_14_enable_dynamic_data'' => ''0'',\n    ''input_radio_14_data_path'' => '''',\n    ''input_radio_14_value_key'' => '''',\n    ''input_radio_14_text_key'' => '''',\n    ''input_radio_14_options'' => ''Primeiro Grau/Ensino Básico=Primeiro Grau/Ensino Básico\r\nSegundo Grau/Ensino Fundamental=Segundo Grau/Ensino Fundamental\r\nSuperior=Superior'',\n    ''input_radio_14_validations'' => '''',\n    ''input_radio_14_instructions'' => '''',\n    ''input_radio_14_tooltip'' => '''',\n    ''tag'' => ''input'',\n    ''type'' => ''radio'',\n    ''container_id'' => ''0'',\n  ),\n  ''field_15'' => \n  array (\n    ''input_text_15_input_id'' => '''',\n    ''input_text_15_label_text'' => ''Caso Ensino Superior Informe o Curso'',\n    ''input_text_15_input_name'' => ''ensino_superior'',\n    ''input_text_15_input_value'' => '''',\n    ''input_text_15_input_maxlength'' => ''150'',\n    ''input_text_15_input_size'' => ''30'',\n    ''input_text_15_input_class'' => '''',\n    ''input_text_15_input_title'' => '''',\n    ''input_text_15_label_over'' => ''0'',\n    ''input_text_15_hide_label'' => ''0'',\n    ''input_text_15_multiline_start'' => ''0'',\n    ''input_text_15_multiline_add'' => ''0'',\n    ''input_text_15_validations'' => '''',\n    ''input_text_15_instructions'' => '''',\n    ''input_text_15_tooltip'' => '''',\n    ''tag'' => ''input'',\n    ''type'' => ''text'',\n    ''container_id'' => ''0'',\n  ),\n  ''field_16'' => \n  array (\n    ''input_radio_16_input_id'' => '''',\n    ''input_radio_16_label_text'' => ''Faixa de Renda'',\n    ''input_radio_16_input_name'' => ''faixa_renda'',\n    ''input_radio_16_input_value'' => '''',\n    ''input_radio_16_radios_over'' => ''0'',\n    ''input_radio_16_legend'' => '''',\n    ''input_radio_16_ghost'' => ''1'',\n    ''input_radio_16_ghost_value'' => '''',\n    ''input_radio_16_input_title'' => '''',\n    ''input_radio_16_label_over'' => ''0'',\n    ''input_radio_16_hide_label'' => ''0'',\n    ''input_radio_16_multiline_start'' => ''0'',\n    ''input_radio_16_multiline_add'' => ''0'',\n    ''input_radio_16_enable_dynamic_data'' => ''0'',\n    ''input_radio_16_data_path'' => '''',\n    ''input_radio_16_value_key'' => '''',\n    ''input_radio_16_text_key'' => '''',\n    ''input_radio_16_options'' => ''até 3 salários mínimos=até 3 salários mínimos\r\nde 3 a 5 salários mínimos=de 3 a 5 salários mínimos\r\nmais de 5 salários mínimos=mais de 5 salários mínimos'',\n    ''input_radio_16_validations'' => '''',\n    ''input_radio_16_instructions'' => '''',\n    ''input_radio_16_tooltip'' => '''',\n    ''tag'' => ''input'',\n    ''type'' => ''radio'',\n    ''container_id'' => ''0'',\n  ),\n  ''field_17'' => \n  array (\n    ''input_radio_17_input_id'' => '''',\n    ''input_radio_17_label_text'' => ''Tem empresa própria'',\n    ''input_radio_17_input_name'' => ''empresa_propria'',\n    ''input_radio_17_input_value'' => '''',\n    ''input_radio_17_radios_over'' => ''0'',\n    ''input_radio_17_legend'' => '''',\n    ''input_radio_17_ghost'' => ''1'',\n    ''input_radio_17_ghost_value'' => '''',\n    ''input_radio_17_input_title'' => '''',\n    ''input_radio_17_label_over'' => ''0'',\n    ''input_radio_17_hide_label'' => ''0'',\n    ''input_radio_17_multiline_start'' => ''0'',\n    ''input_radio_17_multiline_add'' => ''0'',\n    ''input_radio_17_enable_dynamic_data'' => ''0'',\n    ''input_radio_17_data_path'' => '''',\n    ''input_radio_17_value_key'' => '''',\n    ''input_radio_17_text_key'' => '''',\n    ''input_radio_17_options'' => ''Sim=Sim\r\nNão=Não'',\n    ''input_radio_17_validations'' => '''',\n    ''input_radio_17_instructions'' => '''',\n    ''input_radio_17_tooltip'' => '''',\n    ''tag'' => ''input'',\n    ''type'' => ''radio'',\n    ''container_id'' => ''0'',\n  ),\n  ''field_18'' => \n  array (\n    ''input_radio_18_input_id'' => '''',\n    ''input_radio_18_label_text'' => ''Está trabalhando?'',\n    ''input_radio_18_input_name'' => ''trababalhando'',\n    ''input_radio_18_input_value'' => '''',\n    ''input_radio_18_radios_over'' => ''0'',\n    ''input_radio_18_legend'' => '''',\n    ''input_radio_18_ghost'' => ''1'',\n    ''input_radio_18_ghost_value'' => '''',\n    ''input_radio_18_input_title'' => '''',\n    ''input_radio_18_label_over'' => ''0'',\n    ''input_radio_18_hide_label'' => ''0'',\n    ''input_radio_18_multiline_start'' => ''0'',\n    ''input_radio_18_multiline_add'' => ''0'',\n    ''input_radio_18_enable_dynamic_data'' => ''0'',\n    ''input_radio_18_data_path'' => '''',\n    ''input_radio_18_value_key'' => '''',\n    ''input_radio_18_text_key'' => '''',\n    ''input_radio_18_options'' => ''Sim=Sim\r\nNão=Não'',\n    ''input_radio_18_validations'' => '''',\n    ''input_radio_18_instructions'' => '''',\n    ''input_radio_18_tooltip'' => '''',\n    ''tag'' => ''input'',\n    ''type'' => ''radio'',\n    ''container_id'' => ''0'',\n  ),\n  ''field_19'' => \n  array (\n    ''input_radio_19_input_id'' => '''',\n    ''input_radio_19_label_text'' => ''Usa computador e internet?'',\n    ''input_radio_19_input_name'' => ''computador'',\n    ''input_radio_19_input_value'' => '''',\n    ''input_radio_19_radios_over'' => ''0'',\n    ''input_radio_19_legend'' => '''',\n    ''input_radio_19_ghost'' => ''1'',\n    ''input_radio_19_ghost_value'' => '''',\n    ''input_radio_19_input_title'' => '''',\n    ''input_radio_19_label_over'' => ''0'',\n    ''input_radio_19_hide_label'' => ''0'',\n    ''input_radio_19_multiline_start'' => ''0'',\n    ''input_radio_19_multiline_add'' => ''0'',\n    ''input_radio_19_enable_dynamic_data'' => ''0'',\n    ''input_radio_19_data_path'' => '''',\n    ''input_radio_19_value_key'' => '''',\n    ''input_radio_19_text_key'' => '''',\n    ''input_radio_19_options'' => ''Sim=Sim\r\nNão=Não'',\n    ''input_radio_19_validations'' => '''',\n    ''input_radio_19_instructions'' => '''',\n    ''input_radio_19_tooltip'' => '''',\n    ''tag'' => ''input'',\n    ''type'' => ''radio'',\n    ''container_id'' => ''0'',\n  ),\n  ''field_20'' => \n  array (\n    ''input_radio_20_input_id'' => '''',\n    ''input_radio_20_label_text'' => ''Alguém da família tem empresa própria?'',\n    ''input_radio_20_input_name'' => ''empresa'',\n    ''input_radio_20_input_value'' => '''',\n    ''input_radio_20_radios_over'' => ''0'',\n    ''input_radio_20_legend'' => '''',\n    ''input_radio_20_ghost'' => ''1'',\n    ''input_radio_20_ghost_value'' => '''',\n    ''input_radio_20_input_title'' => '''',\n    ''input_radio_20_label_over'' => ''0'',\n    ''input_radio_20_hide_label'' => ''0'',\n    ''input_radio_20_multiline_start'' => ''0'',\n    ''input_radio_20_multiline_add'' => ''0'',\n    ''input_radio_20_enable_dynamic_data'' => ''0'',\n    ''input_radio_20_data_path'' => '''',\n    ''input_radio_20_value_key'' => '''',\n    ''input_radio_20_text_key'' => '''',\n    ''input_radio_20_options'' => ''Sim=Sim\r\nNão=Não'',\n    ''input_radio_20_validations'' => '''',\n    ''input_radio_20_instructions'' => '''',\n    ''input_radio_20_tooltip'' => '''',\n    ''tag'' => ''input'',\n    ''type'' => ''radio'',\n    ''container_id'' => ''0'',\n  ),\n  ''field_21'' => \n  array (\n    ''input_radio_21_input_id'' => '''',\n    ''input_radio_21_label_text'' => ''Porque deseja fazer o curso?'',\n    ''input_radio_21_input_name'' => ''motivo'',\n    ''input_radio_21_input_value'' => '''',\n    ''input_radio_21_radios_over'' => ''0'',\n    ''input_radio_21_legend'' => '''',\n    ''input_radio_21_ghost'' => ''1'',\n    ''input_radio_21_ghost_value'' => '''',\n    ''input_radio_21_input_title'' => '''',\n    ''input_radio_21_label_over'' => ''0'',\n    ''input_radio_21_hide_label'' => ''0'',\n    ''input_radio_21_multiline_start'' => ''0'',\n    ''input_radio_21_multiline_add'' => ''0'',\n    ''input_radio_21_enable_dynamic_data'' => ''0'',\n    ''input_radio_21_data_path'' => '''',\n    ''input_radio_21_value_key'' => '''',\n    ''input_radio_21_text_key'' => '''',\n    ''input_radio_21_options'' => ''Curiosidade=Curiosidade\r\nDesejo montar um negócio próprio=Desejo montar um negócio próprio\r\nDesejo melhorar o negócio da família=Desejo melhorar o negócio da família\r\nDesejo montar uma sociedade. Um negócio com outra pessoa=Desejo montar uma sociedade. Um negócio com outra pessoa'',\n    ''input_radio_21_validations'' => '''',\n    ''input_radio_21_instructions'' => '''',\n    ''input_radio_21_tooltip'' => '''',\n    ''tag'' => ''input'',\n    ''type'' => ''radio'',\n    ''container_id'' => ''0'',\n  ),\n  ''field_22'' => \n  array (\n    ''input_radio_22_input_id'' => '''',\n    ''input_radio_22_label_text'' => ''Como ficou sabendo do curso?'',\n    ''input_radio_22_input_name'' => ''conhecimento_curso'',\n    ''input_radio_22_input_value'' => '''',\n    ''input_radio_22_radios_over'' => ''0'',\n    ''input_radio_22_legend'' => '''',\n    ''input_radio_22_ghost'' => ''1'',\n    ''input_radio_22_ghost_value'' => '''',\n    ''input_radio_22_input_title'' => '''',\n    ''input_radio_22_label_over'' => ''0'',\n    ''input_radio_22_hide_label'' => ''0'',\n    ''input_radio_22_multiline_start'' => ''0'',\n    ''input_radio_22_multiline_add'' => ''0'',\n    ''input_radio_22_enable_dynamic_data'' => ''0'',\n    ''input_radio_22_data_path'' => '''',\n    ''input_radio_22_value_key'' => '''',\n    ''input_radio_22_text_key'' => '''',\n    ''input_radio_22_options'' => ''Fui convidado por uma entidade parceira=Fui convidado por uma entidade parceira\r\nPela internet=Pela internet\r\nPor email=Por email'',\n    ''input_radio_22_validations'' => '''',\n    ''input_radio_22_instructions'' => '''',\n    ''input_radio_22_tooltip'' => '''',\n    ''tag'' => ''input'',\n    ''type'' => ''radio'',\n    ''container_id'' => ''0'',\n  ),\n  ''field_23'' => \n  array (\n    ''input_captcha_23_input_id'' => '''',\n    ''input_captcha_23_label_text'' => ''Digite o código'',\n    ''input_captcha_23_input_name'' => ''chrono_verification'',\n    ''input_captcha_23_input_value'' => '''',\n    ''input_captcha_23_input_maxlength'' => ''5'',\n    ''input_captcha_23_input_size'' => ''5'',\n    ''input_captcha_23_input_class'' => ''chrono_captcha_input'',\n    ''input_captcha_23_input_title'' => '''',\n    ''input_captcha_23_label_over'' => ''0'',\n    ''input_captcha_23_hide_label'' => ''0'',\n    ''input_captcha_23_validations'' => '''',\n    ''input_captcha_23_instructions'' => '''',\n    ''input_captcha_23_tooltip'' => '''',\n    ''tag'' => ''input'',\n    ''type'' => ''captcha'',\n    ''real_type'' => ''text'',\n    ''after'' => ''{chronocaptcha_img}'',\n    ''container_id'' => ''0'',\n  ),\n  ''field_24'' => \n  array (\n    ''input_submit_24_input_id'' => '''',\n    ''input_submit_24_input_name'' => ''input_submit_24'',\n    ''input_submit_24_input_value'' => ''Enviar'',\n    ''input_submit_24_input_class'' => '''',\n    ''input_submit_24_button_type'' => ''submit'',\n    ''input_submit_24_button_align'' => ''left'',\n    ''input_submit_24_back_button'' => ''0'',\n    ''input_submit_24_reset_button'' => ''0'',\n    ''input_submit_24_back_button_value'' => ''Back'',\n    ''input_submit_24_reset_button_value'' => ''Reset'',\n    ''input_submit_24_multiline_start'' => ''0'',\n    ''input_submit_24_multiline_add'' => ''0'',\n    ''tag'' => ''input'',\n    ''type'' => ''submit'',\n    ''container_id'' => ''0'',\n  ),\n)', 'YToxOntzOjY6ImV2ZW50cyI7YToyOntzOjQ6ImxvYWQiO2E6MTp7czo3OiJhY3Rpb25zIjthOjE6e3M6MjA6ImNmYWN0aW9uX3Nob3dfaHRtbF8yIjtzOjA6IiI7fX1zOjY6InN1Ym1pdCI7YToxOntzOjc6ImFjdGlvbnMiO2E6Mjp7czoxODoiY2ZhY3Rpb25fZGJfc2F2ZV8wIjtzOjA6IiI7czoxNjoiY2ZhY3Rpb25fZW1haWxfMSI7czowOiIiO319fX0=', '{"form_mode":"advanced","form_method":"post","auto_detect_settings":"1","load_files":"1","tight_layout":"0","action_url":"","form_tag_attach":"","add_form_tags":"1","relative_url":"1","dynamic_files":"0","show_top_errors":"1","datepicker_config":"","datepicker_type":"0","datepicker_moo_style":"datepicker_dashboard","enable_jsvalidation":"1","jsvalidation_errors":"1","jsvalidation_theme":"classic","jsvalidation_lang":"pt","jsvalidation_showErrors":"0","jsvalidation_errorsLocation":"1","adminview_actions":"","dataview_actions":"","app_exclusive":"0"}', 1, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `irqdj_chronoforms_data_cadastro`
--

CREATE TABLE IF NOT EXISTS `irqdj_chronoforms_data_cadastro` (
  `cf_id` int(11) NOT NULL AUTO_INCREMENT,
  `cf_uid` varchar(255) NOT NULL,
  `cf_created` datetime NOT NULL,
  `cf_modified` datetime NOT NULL,
  `cf_created_by` int(11) NOT NULL,
  `cf_modified_by` int(11) NOT NULL,
  `cf_ipaddress` varchar(255) NOT NULL,
  `cf_user_id` int(11) NOT NULL,
  `nome_completo` varchar(255) NOT NULL,
  `endereco` varchar(255) NOT NULL,
  `bairro` varchar(255) NOT NULL,
  `cep` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_alternativo` varchar(255) NOT NULL,
  `rg` varchar(255) NOT NULL,
  `cpf` varchar(255) NOT NULL,
  `telefone` varchar(255) NOT NULL,
  `celular` varchar(255) NOT NULL,
  `nascimento` varchar(255) NOT NULL,
  `sexo` varchar(255) NOT NULL,
  `profissao` varchar(255) NOT NULL,
  `escolaridade` varchar(255) NOT NULL,
  `ensino_superior` varchar(255) NOT NULL,
  `faixa_renda` varchar(255) NOT NULL,
  `empresa_propria` varchar(255) NOT NULL,
  `trababalhando` varchar(255) NOT NULL,
  `computador` varchar(255) NOT NULL,
  `empresa` varchar(255) NOT NULL,
  `motivo` varchar(255) NOT NULL,
  `conhecimento_curso` varchar(255) NOT NULL,
  `chrono_verification` varchar(255) NOT NULL,
  `input_submit_24` varchar(255) NOT NULL,
  PRIMARY KEY (`cf_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `irqdj_chronoform_actions`
--

CREATE TABLE IF NOT EXISTS `irqdj_chronoform_actions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `chronoform_id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `params` longtext NOT NULL,
  `order` int(11) NOT NULL,
  `content1` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Extraindo dados da tabela `irqdj_chronoform_actions`
--

INSERT INTO `irqdj_chronoform_actions` (`id`, `chronoform_id`, `type`, `enabled`, `params`, `order`, `content1`) VALUES
(3, 3, 'show_html', 1, '{"data_republish":"1","display_errors":"1","curly_replacer":"1","load_token":"1","keep_alive":"0","submit_event":"submit","page_number":"1","form_container":""}', 2, ''),
(4, 3, 'db_save', 1, '{"table_name":"irqdj_chronoforms_data_cadastro","model_id":"chronoform_data","save_under_modelid":"0","params_fields":"","ndb_enable":"0","ndb_driver":"mysql","ndb_host":"localhost","ndb_user":"","ndb_password":"","ndb_database":"","ndb_table_name":"","ndb_prefix":"jos_"}', 0, ''),
(5, 3, 'email', 1, '{"to":"tulims@mandic.com.br","cc":"","bcc":"","subject":"Novo Cadastro no Site","fromname":"cadastro","fromemail":"tulims@mandic.com.br","replytoname":"","replytoemail":"","dto":"","dcc":"","dbcc":"","dsubject":"","dfromname":"","dfromemail":"","dreplytoname":"","dreplytoemail":"","recordip":"1","attachments":"","sendas":"html","action_label":"Enviar Email","encrypt_enabled":"0","gpg_sec_key":"","replace_nulls":"0"}', 1, '<table cellpadding="5" cellspacing="5" border="0">\r\n	<tr>\r\n		<td>\r\n			<strong>Nome Completo</strong>\r\n		</td>\r\n		<td>\r\n			{nome_completo}\r\n		</td>\r\n	</tr>\r\n	<tr>\r\n		<td>\r\n			<strong>Endereço</strong>\r\n		</td>\r\n		<td>\r\n			{endereco}\r\n		</td>\r\n	</tr>\r\n	<tr>\r\n		<td>\r\n			<strong>Bairro</strong>\r\n		</td>\r\n		<td>\r\n			{bairro}\r\n		</td>\r\n	</tr>\r\n	<tr>\r\n		<td>\r\n			<strong>CEP</strong>\r\n		</td>\r\n		<td>\r\n			{cep}\r\n		</td>\r\n	</tr>\r\n	<tr>\r\n		<td>\r\n			<strong>Email</strong>\r\n		</td>\r\n		<td>\r\n			{email}\r\n		</td>\r\n	</tr>\r\n	<tr>\r\n		<td>\r\n			<strong>Email Alternativo</strong>\r\n		</td>\r\n		<td>\r\n			{email_alternativo}\r\n		</td>\r\n	</tr>\r\n	<tr>\r\n		<td>\r\n			<strong>RG</strong>\r\n		</td>\r\n		<td>\r\n			{rg}\r\n		</td>\r\n	</tr>\r\n	<tr>\r\n		<td>\r\n			<strong>CPF</strong>\r\n		</td>\r\n		<td>\r\n			{cpf}\r\n		</td>\r\n	</tr>\r\n	<tr>\r\n		<td>\r\n			<strong>Telefone</strong>\r\n		</td>\r\n		<td>\r\n			{telefone}\r\n		</td>\r\n	</tr>\r\n	<tr>\r\n		<td>\r\n			<strong>Celular</strong>\r\n		</td>\r\n		<td>\r\n			{celular}\r\n		</td>\r\n	</tr>\r\n	<tr>\r\n		<td>\r\n			<strong>Data de Nascimento</strong>\r\n		</td>\r\n		<td>\r\n			{nascimento}\r\n		</td>\r\n	</tr>\r\n	<tr>\r\n		<td>\r\n			<strong>Sexo</strong>\r\n		</td>\r\n		<td>\r\n			{sexo}\r\n		</td>\r\n	</tr>\r\n	<tr>\r\n		<td>\r\n			<strong>Profissão</strong>\r\n		</td>\r\n		<td>\r\n			{profissao}\r\n		</td>\r\n	</tr>\r\n	<tr>\r\n		<td>\r\n			<strong>Escolaridade</strong>\r\n		</td>\r\n		<td>\r\n			{escolaridade}\r\n		</td>\r\n	</tr>\r\n	<tr>\r\n		<td>\r\n			<strong>Caso Ensino Superior Informe o Curso</strong>\r\n		</td>\r\n		<td>\r\n			{ensino_superior}\r\n		</td>\r\n	</tr>\r\n	<tr>\r\n		<td>\r\n			<strong>Faixa de Renda</strong>\r\n		</td>\r\n		<td>\r\n			{faixa_renda}\r\n		</td>\r\n	</tr>\r\n	<tr>\r\n		<td>\r\n			<strong>Tem empresa própria</strong>\r\n		</td>\r\n		<td>\r\n			{empresa_propria}\r\n		</td>\r\n	</tr>\r\n	<tr>\r\n		<td>\r\n			<strong>Está trabalhando?</strong>\r\n		</td>\r\n		<td>\r\n			{trababalhando}\r\n		</td>\r\n	</tr>\r\n	<tr>\r\n		<td>\r\n			<strong>Usa computador e internet?</strong>\r\n		</td>\r\n		<td>\r\n			{computador}\r\n		</td>\r\n	</tr>\r\n	<tr>\r\n		<td>\r\n			<strong>Alguém da família tem empresa própria?</strong>\r\n		</td>\r\n		<td>\r\n			{empresa}\r\n		</td>\r\n	</tr>\r\n	<tr>\r\n		<td>\r\n			<strong>Porque deseja fazer o curso?</strong>\r\n		</td>\r\n		<td>\r\n			{motivo}\r\n		</td>\r\n	</tr>\r\n	<tr>\r\n		<td>\r\n			<strong>Como ficou sabendo do curso?</strong>\r\n		</td>\r\n		<td>\r\n			{conhecimento_curso}\r\n		</td>\r\n	</tr>\r\n	<tr>\r\n		<td>\r\n			<strong>Digite o código</strong>\r\n		</td>\r\n		<td>\r\n			{chrono_verification}\r\n		</td>\r\n	</tr>\r\n</table>');

-- --------------------------------------------------------

--
-- Estrutura da tabela `irqdj_contact_details`
--

CREATE TABLE IF NOT EXISTS `irqdj_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `irqdj_content`
--

CREATE TABLE IF NOT EXISTS `irqdj_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=51 ;

--
-- Extraindo dados da tabela `irqdj_content`
--

INSERT INTO `irqdj_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(1, 44, 'Quem Somos', 'quem-somos', '<p style="text-align: center;"><img alt="teamdc" src="images/stories/teamdc.jpg" height="173" width="500" /></p>\r\n<p>Fundado em 1999, o Young Americas Business Trust (YABT), uma iniciativa privada da Secretaria Geral da Organização dos Estados Americanos, com sede em Washington DC,&nbsp; atua como um catalizador do empreendedorismo na América Latina e no Caribe com o intuito de reduzir a pobreza e dinamizar a economia da região. Estando presente em 34 países, o YABT fundou em julho de 2004 a unidade nacional YABT Brasil, com sede em Salvador, BA.<br /><br />Desde a sua fundação, milhares de empreendedores, empresas e profissionais já se beneficiaram dos programas do YABT.<br /><br /></p>\r\n<h4>Prioridades das Cúpulas Presidenciais das Américas</h4>\r\n<p><br />Na Declaração da Segunda Cúpula Presidencial das Américas, os presidentes enfatizaram que "subjugar a pobreza continua sendo o maior desafio enfrentado em nosso Hemisfério”. Os países membros da Organização dos Estados Americanos (OEA), de acordo com o plano de ação traçado na Cúpula presidencial, prometeram reforçar a preparação e o treinamento no mundo do trabalho, incluindo o desenvolvimento de habilidades empreendedoras para a juventude.<br /><br />Tais prioridades, estabelecidas pela OEA durante as Cúpulas Presidenciais das Américas bem como em outras importantes reuniões, resultaram na criação do Young Americas Business Trust - YABT - (Fundo Para Jovens Empresários das Américas). O YABT possui, como sua missão, agir como um catalisador para o desenvolvimento do empreendedorismo entre os jovens das Américas e do Caribe.<br /><br /></p>\r\n<h4>Sustentabilidade</h4>\r\n<p><br />Caracterizado legalmente no Brasil como uma OSCIP - Organização da Sociedade Civil de Interesse Público - o YABT Brasil obtêm recursos para as suas atividades através de doações de organizações públicas, privadas e não governamentais, além da receita oriunda da área de treinamentos empresariais. <a href="index.php?option=com_content&amp;view=article&amp;id=34&amp;Itemid=13">Clique aqui</a> e veja os benefícios de patrocinar atividades do YABT.</p>', '', 1, 16, '2010-04-25 17:38:39', 176, '', '2010-06-01 18:49:26', 176, 0, '0000-00-00 00:00:00', '2010-04-25 17:38:39', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_section":"","link_section":"","show_category":"","link_category":"","show_vote":"","show_author":"","show_create_date":"","show_modify_date":"","show_pdf_icon":"","show_print_icon":"","show_email_icon":"","language":"","keyref":"","readmore":""}', 7, 2, '', '', 1, 1228, '{"robots":"","author":""}', 0, '*', ''),
(2, 45, 'Equipe YABT Brasil', 'equipe-yabt-brasil', '<p style="text-align: center;"><img alt="equipe" src="images/stories/equipe.jpg" height="202" width="500" /></p>\r\n<table style="width: 100%;" border="0" cellpadding="4" cellspacing="4">\r\n<tbody>\r\n<tr>\r\n<td colspan="2">\r\n<h4>Conselho de Administração</h4>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td valign="top"><img alt="roy" src="images/stories/roy.jpg" height="168" width="130" /></td>\r\n<td valign="top">Roy Lynn Thomasson (Presidente)&nbsp; - Principal Especialista em Juventude da Secretaria Geral da Organização dos Estados Americanos, Roy Thomasson é graduado em Desenvolvimento Internacional na University of North Carolina at Chapel Hill, EUA e atua há mais de 20 anos no desenvolvimento da juventude nas Américas. Casado com uma peruana, com quem teve duas filhas, Roy é fundador e Diretor Presidente do Young Americas Business Trust Internacional e vive em Potomac Falls, VA, EUA. Fala Inglês e Espanhol.</td>\r\n</tr>\r\n<tr>\r\n<td valign="top"><img alt="tulio" src="images/stories/tulio.jpg" height="168" width="130" /></td>\r\n<td valign="top">Antônio Túlio Lima Severo Júnior - Fundador do YABT Brasil a convite de Roy Thomasson. Empresário do ramo de seguros e marketing de relacionamento. Iniciou sua carreira aos 15 anos na Sabemi Seguradora S.A., aonde foi Diretor de Produção e Diretor Comercial por 17 anos e hoje é acionista. É certificado pela School of Insurance – New York e pelo PDG/MBA IBMEC em Gestão de Negócios. Fundou em 1996 da AJE- Rio – Associação de Jovens Empresários da cidade do Rio de Janeiro, foi Vice- Presidente da ACRJ. É o Guardião da medalha Pedro Ernesto pela Câmara Municipal do Rio de Janeiro, recebida pelos 10 anos de fundação da AJE-Rio e CONJOVE RJ da qual foi fundador e seu primeiro presidente em 1996. Trabalha no Rio de Janeiro, mora em Joinville/SC, casado, é pai de duas filhas. Fala Português, Inglês e Espanhol.</td>\r\n</tr>\r\n<tr>\r\n<td></td>\r\n<td></td>\r\n</tr>\r\n<tr>\r\n<td colspan="2">\r\n<h4></h4>\r\n<h4>Conselho Fiscal</h4>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td valign="top"><img src="images/stories/franca.jpg" alt="Franca" title="Franca" /></td>\r\n<td valign="top">José Lago França (Presidente) - Administrador e Economista, com especializações na UCLA, Los Angeles e FGV, São Paulo, França trabalhou por 8 anos no Citibank, foi Diretor Financeiro da Corrêa Ribeiro, cargo que também ocupou na Paes Mendonça S.A. Ocupou postos executivos em diversas empresas de serviços financeiros e, atualmente, é Superintendente Executivo da ACBEU-BA - Associação Cultural Brasil Estados Unidos. Pai de 3 filhas, França vive em Salvador,BA. Fala Português e Inglês.</td>\r\n</tr>\r\n<tr>\r\n<td></td>\r\n<td></td>\r\n</tr>\r\n<tr>\r\n<td colspan="2">\r\n<h4>Diretoria</h4>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td valign="top"><img alt="tulio" src="images/stories/tulio.jpg" height="168" width="130" /></td>\r\n<td valign="top">Antônio Túlio Lima Severo Júnior - Fundador do YABT Brasil a convite de  Roy Thomasson. Empresário do ramo de seguros e marketing de  relacionamento. Iniciou sua carreira aos 15 anos na Sabemi Seguradora  S.A., aonde foi Diretor de Produção e Diretor Comercial por 17 anos e  hoje é acionista. É certificado pela School of Insurance – New York e  pelo PDG/MBA IBMEC em Gestão de Negócios. Fundou em 1996 da AJE- Rio –  Associação de Jovens Empresários da cidade do Rio de Janeiro, foi Vice-  Presidente da ACRJ. É o Guardião da medalha Pedro Ernesto pela Câmara  Municipal do Rio de Janeiro, recebida pelos 10 anos de fundação da  AJE-Rio e CONJOVE RJ da qual foi fundador e seu primeiro presidente em  1996. Trabalha no Rio de Janeiro, mora em Joinville/SC, casado, é pai de  duas filhas. Fala Português, Inglês e Espanhol.</td>\r\n</tr>\r\n<tr>\r\n<td></td>\r\n<td></td>\r\n</tr>\r\n<tr>\r\n<td colspan="2">\r\n<h4></h4>\r\n<h4>Consultores Externos e Voluntários dos Laboratórios Empresariais</h4>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td colspan="2" valign="top">Félix Muniz – Ex - Gerente Executivo do YABT Brasil - Internacionalista pela Faculdade Jorge Amado, Salvador, BA, Félix é ex-Coordenador de Relações Internacionais da AMCHAM Câmara Americana de Comércio para o Brasil - Bahia. Felix nasceu em Itabuna,BA e viveu em Lake Tahoe, CA, e Deaweyville,TX EUA , tendo atuado até Outubro de 2009 com coordenador de relações internacionais da Prefeitura de Salvador. Fala Português, Inglês e Espanhol.</td>\r\n</tr>\r\n<tr>\r\n<td colspan="2" valign="top">Marcelo Cruvinel – Administrador pela UFBA, ex-diretor e consultor da Empresa Jr da UFBA, é empresário, sócio da Esfera Quatro Consultoria Ltda, agraciado com primeiro lugar no TIC Américas 2006, Competição para Talentos Inovadores do YABT USA. Mora em Salvador e fala Inglês e Espanhol. É Adviser de Marketing no Laboratório Empresarial e mentor do YABT Brasil.</td>\r\n</tr>\r\n<tr>\r\n<td colspan="2" valign="top">Gustavo Espinheira – Administrador pela UFBA, ex- diretor financeiro da AIESEC Salvador, consultor de empresas, Adviser de Recursos Humanos e Liderança no Laboratório Empresarial, é mentor do YABT Brasil desde Agosto de 2009.</td>\r\n</tr>\r\n<tr>\r\n<td colspan="2">Marilia Mendonça – Contabilista e auditora, consultora empresarial, com experiência na Espanha, ex-coordenadora do Laboratório Empresarial e Adviser de RH, Liderança e Comunicação. Mentora do YABT desde Maio de 2009.</td>\r\n</tr>\r\n<tr>\r\n<td colspan="2">Guilherme Sento-Sé – Formado em Marketing pela UCSAL, atuou na Secretaria de Cultura do Estado como coordenador e produtor de projetos, é coordenador do Laboratorio Empresarial desde Setembro de 2009, é Adviser nas matérias de RH, Liderança, Comunicação e Novos Negócios.</td>\r\n</tr>\r\n<tr>\r\n<td colspan="2">Joseli Passos – Professora de Contabilidade na Faculdade Jorge Amado, Contadora e Auditora, é membro do Conselho da Mulher Contabilista do CRC Salvador, é Adviser de Contabilidade.</td>\r\n</tr>\r\n<tr>\r\n<td colspan="2">Cecilia Emilia – Contabilista, Professora, Consultora, Palestrante, atua no Conselho da Mulher Contabilista do CRC Salvador, é Adviser de Planejamento Financeiro e mentora do YABT Brasil desde Julho de 2009.</td>\r\n</tr>\r\n<tr>\r\n<td></td>\r\n<td></td>\r\n</tr>\r\n<tr>\r\n<td colspan="2">\r\n<h4></h4>\r\n<h4>Conselho Consultivo</h4>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td valign="top"><img src="images/stories/daniel.jpg" alt="daniel" title="daniel" /></td>\r\n<td valign="top">Daniel Murta Coelho Messeder - Nascido em Salvador, BA, Messeder vive em Folson, CA, EUA e trabalha para a Intel. É formado em Administração pela Universidade Federal da Bahia, atuando no movimento de empreendedorismo quando ingressou na Empresa Júnior ADM-UFBA. Em 2003, Messeder trabalhou na sede Internacional do YABT em Washington D.C. nos Estados Unidos como Assessor de Projetos. É fundador do YABT Brasil, da qual foi Diretor Executivo até abril de 2007. Fala Português, Inglês e Espanhol.</td>\r\n</tr>\r\n<tr>\r\n<td valign="top"><img src="images/stories/llgomes.jpg" alt="llgomes" title="llgomes" /></td>\r\n<td valign="top">Leonardo Laranjeira Gomes - Ex-Gerente de Desenvolvimento Organizacional do YABT Internacional, Administrador pela Universidade Federal da Bahia, quando na faculdade ingressou na Empresa Júnior ADM-UFBA. Trabalhou nos EUA com o Program Officer do YABT Internacional. É fundador do YABT Brasil, da qual foi Diretor Executivo até abril de 2007. Fala Português, Inglês e Espanhol.</td>\r\n</tr>\r\n<tr>\r\n<td valign="top"><img src="images/stories/luciano.jpg" alt="luciano" title="luciano" /></td>\r\n<td valign="top">Luciano de Almeida Freitas -&nbsp; Um dos fundadores do YABT Brasil. Advogado com Mestrado em Direito Bancário e Financeiro pela Boston University, MA, foi Assessor Jurídico do Young Americas Business Trust em Washington, DC e, posteriormente assessorou a OEA nas licitações do Programa de Redemocratização do Haiti. Casado e pai de uma filha, vive atualmente em São Paulo, onde foi Superintendente de Aprovação de Empreendimentos da CDHU - Companhia de Desenvolvimento Habitacional e Urbano do Estado de São Paulo, é Assessor da Presidência da EMURB - Empresa Municipal de Urbanização de São Paulo, advoga para o Abreu Sampaio Advogados e é Assistente de Tesoureiro da IABA - Inter-American Bar Association em Washington. Fala Português, Inglês e Espanhol.</td>\r\n</tr>\r\n<tr>\r\n<td valign="top"><img src="images/stories/vandermir.gif" alt="vandermir" title="vandermir" /></td>\r\n<td valign="top">Vandermir Francesconi Júnior - Engenheiro com MBA na Universidade de Harvard, EUA, Vandermir é empresário do setor industrial e diretor do CIESP - Centro das Indústrias do Estado de São Paulo. Vive em Jundiaí, SP. Fala Português, Inglês e Espanhol.</td>\r\n</tr>\r\n<tr>\r\n<td valign="top"><img src="images/stories/caruso.jpg" alt="caruso" title="caruso" /></td>\r\n<td valign="top">Alexandre Moura Caruso - Nascido em Santos, Administrador de Empresas, Alexandre foi&nbsp; Diretor Regional N-NE da Hapag-Lloyd Navegação, um dos principais armadores do mundo. Caruso vive em Salvador, BA, é casado e pai de uma filha. Fala Português e Inglês.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<div style="position: absolute; left: -10000px; top: 0px; width: 1px; height: 1px; overflow: hidden;" id="_mcePaste">\r\n<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />\r\n<meta name="ProgId" content="Word.Document" />\r\n<meta name="Generator" content="Microsoft Word 12" />\r\n<meta name="Originator" content="Microsoft Word 12" />\r\n<link rel="File-List" href="file:///C:%5CDOCUME%7E1%5CADMINI%7E1%5CCONFIG%7E1%5CTemp%5Cmsohtmlclip1%5C01%5Cclip_filelist.xml" />\r\n<link rel="themeData" href="file:///C:%5CDOCUME%7E1%5CADMINI%7E1%5CCONFIG%7E1%5CTemp%5Cmsohtmlclip1%5C01%5Cclip_themedata.thmx" />\r\n<link rel="colorSchemeMapping" href="file:///C:%5CDOCUME%7E1%5CADMINI%7E1%5CCONFIG%7E1%5CTemp%5Cmsohtmlclip1%5C01%5Cclip_colorschememapping.xml" />\r\n<!--[if gte mso 9]><xml> <w:WordDocument> <w:View>Normal</w:View> <w:Zoom>0</w:Zoom> <w:TrackMoves /> <w:TrackFormatting /> <w:HyphenationZone>21</w:HyphenationZone> <w:PunctuationKerning /> <w:ValidateAgainstSchemas /> <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid> <w:IgnoreMixedContent>false</w:IgnoreMixedContent> <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText> <w:DoNotPromoteQF /> <w:LidThemeOther>PT-BR</w:LidThemeOther> <w:LidThemeAsian>X-NONE</w:LidThemeAsian> <w:LidThemeComplexScript>X-NONE</w:LidThemeComplexScript> <w:Compatibility> <w:BreakWrappedTables /> <w:SnapToGridInCell /> <w:WrapTextWithPunct /> <w:UseAsianBreakRules /> <w:DontGrowAutofit /> <w:SplitPgBreakAndParaMark /> <w:DontVertAlignCellWithSp /> <w:DontBreakConstrainedForcedTables /> <w:DontVertAlignInTxbx /> <w:Word11KerningPairs /> <w:CachedColBalance /> </w:Compatibility> <w:BrowserLevel>MicrosoftInternetExplorer4</w:BrowserLevel> <m:mathPr> <m:mathFont m:val="Cambria Math" /> <m:brkBin m:val="before" /> <m:brkBinSub m:val="&#45;-" /> <m:smallFrac m:val="off" /> <m:dispDef /> <m:lMargin m:val="0" /> <m:rMargin m:val="0" /> <m:defJc m:val="centerGroup" /> <m:wrapIndent m:val="1440" /> <m:intLim m:val="subSup" /> <m:naryLim m:val="undOvr" /> </m:mathPr></w:WordDocument> </xml><![endif]--><!--[if gte mso 9]><xml> <w:LatentStyles DefLockedState="false" DefUnhideWhenUsed="true"   DefSemiHidden="true" DefQFormat="false" DefPriority="99"   LatentStyleCount="267"> <w:LsdException Locked="false" Priority="0" SemiHidden="false"    UnhideWhenUsed="false" QFormat="true" Name="Normal" /> <w:LsdException Locked="false" Priority="9" SemiHidden="false"    UnhideWhenUsed="false" QFormat="true" Name="heading 1" /> <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 2" /> <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 3" /> <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 4" /> <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 5" /> <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 6" /> <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 7" /> <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 8" /> <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 9" /> <w:LsdException Locked="false" Priority="39" Name="toc 1" /> <w:LsdException Locked="false" Priority="39" Name="toc 2" /> <w:LsdException Locked="false" Priority="39" Name="toc 3" /> <w:LsdException Locked="false" Priority="39" Name="toc 4" /> <w:LsdException Locked="false" Priority="39" Name="toc 5" /> <w:LsdException Locked="false" Priority="39" Name="toc 6" /> <w:LsdException Locked="false" Priority="39" Name="toc 7" /> <w:LsdException Locked="false" Priority="39" Name="toc 8" /> <w:LsdException Locked="false" Priority="39" Name="toc 9" /> <w:LsdException Locked="false" Priority="35" QFormat="true" Name="caption" /> <w:LsdException Locked="false" Priority="10" SemiHidden="false"    UnhideWhenUsed="false" QFormat="true" Name="Title" /> <w:LsdException Locked="false" Priority="1" Name="Default Paragraph Font" /> <w:LsdException Locked="false" Priority="11" SemiHidden="false"    UnhideWhenUsed="false" QFormat="true" Name="Subtitle" /> <w:LsdException Locked="false" Priority="22" SemiHidden="false"    UnhideWhenUsed="false" QFormat="true" Name="Strong" /> <w:LsdException Locked="false" Priority="20" SemiHidden="false"    UnhideWhenUsed="false" QFormat="true" Name="Emphasis" /> <w:LsdException Locked="false" Priority="59" SemiHidden="false"    UnhideWhenUsed="false" Name="Table Grid" /> <w:LsdException Locked="false" UnhideWhenUsed="false" Name="Placeholder Text" /> <w:LsdException Locked="false" Priority="1" SemiHidden="false"    UnhideWhenUsed="false" QFormat="true" Name="No Spacing" /> <w:LsdException Locked="false" Priority="60" SemiHidden="false"    UnhideWhenUsed="false" Name="Light Shading" /> <w:LsdException Locked="false" Priority="61" SemiHidden="false"    UnhideWhenUsed="false" Name="Light List" /> <w:LsdException Locked="false" Priority="62" SemiHidden="false"    UnhideWhenUsed="false" Name="Light Grid" /> <w:LsdException Locked="false" Priority="63" SemiHidden="false"    UnhideWhenUsed="false" Name="Medium Shading 1" /> <w:LsdException Locked="false" Priority="64" SemiHidden="false"    UnhideWhenUsed="false" Name="Medium Shading 2" /> <w:LsdException Locked="false" Priority="65" SemiHidden="false"    UnhideWhenUsed="false" Name="Medium List 1" /> <w:LsdException Locked="false" Priority="66" SemiHidden="false"    UnhideWhenUsed="false" Name="Medium List 2" /> <w:LsdException Locked="false" Priority="67" SemiHidden="false"    UnhideWhenUsed="false" Name="Medium Grid 1" /> <w:LsdException Locked="false" Priority="68" SemiHidden="false"    UnhideWhenUsed="false" Name="Medium Grid 2" /> <w:LsdException Locked="false" Priority="69" SemiHidden="false"    UnhideWhenUsed="false" Name="Medium Grid 3" /> <w:LsdException Locked="false" Priority="70" SemiHidden="false"    UnhideWhenUsed="false" Name="Dark List" /> <w:LsdException Locked="false" Priority="71" SemiHidden="false"    UnhideWhenUsed="false" Name="Colorful Shading" /> <w:LsdException Locked="false" Priority="72" SemiHidden="false"    UnhideWhenUsed="false" Name="Colorful List" /> <w:LsdException Locked="false" Priority="73" SemiHidden="false"    UnhideWhenUsed="false" Name="Colorful Grid" /> <w:LsdException Locked="false" Priority="60" SemiHidden="false"    UnhideWhenUsed="false" Name="Light Shading Accent 1" /> <w:LsdException Locked="false" Priority="61" SemiHidden="false"    UnhideWhenUsed="false" Name="Light List Accent 1" /> <w:LsdException Locked="false" Priority="62" SemiHidden="false"    UnhideWhenUsed="false" Name="Light Grid Accent 1" /> <w:LsdException Locked="false" Priority="63" SemiHidden="false"    UnhideWhenUsed="false" Name="Medium Shading 1 Accent 1" /> <w:LsdException Locked="false" Priority="64" SemiHidden="false"    UnhideWhenUsed="false" Name="Medium Shading 2 Accent 1" /> <w:LsdException Locked="false" Priority="65" SemiHidden="false"    UnhideWhenUsed="false" Name="Medium List 1 Accent 1" /> <w:LsdException Locked="false" UnhideWhenUsed="false" Name="Revision" /> <w:LsdException Locked="false" Priority="34" SemiHidden="false"    UnhideWhenUsed="false" QFormat="true" Name="List Paragraph" /> <w:LsdException Locked="false" Priority="29" SemiHidden="false"    UnhideWhenUsed="false" QFormat="true" Name="Quote" /> <w:LsdException Locked="false" Priority="30" SemiHidden="false"    UnhideWhenUsed="false" QFormat="true" Name="Intense Quote" /> <w:LsdException Locked="false" Priority="66" SemiHidden="false"    UnhideWhenUsed="false" Name="Medium List 2 Accent 1" /> <w:LsdException Locked="false" Priority="67" SemiHidden="false"    UnhideWhenUsed="false" Name="Medium Grid 1 Accent 1" /> <w:LsdException Locked="false" Priority="68" SemiHidden="false"    UnhideWhenUsed="false" Name="Medium Grid 2 Accent 1" /> <w:LsdException Locked="false" Priority="69" SemiHidden="false"    UnhideWhenUsed="false" Name="Medium Grid 3 Accent 1" /> <w:LsdException Locked="false" Priority="70" SemiHidden="false"    UnhideWhenUsed="false" Name="Dark List Accent 1" /> <w:LsdException Locked="false" Priority="71" SemiHidden="false"    UnhideWhenUsed="false" Name="Colorful Shading Accent 1" /> <w:LsdException Locked="false" Priority="72" SemiHidden="false"    UnhideWhenUsed="false" Name="Colorful List Accent 1" /> <w:LsdException Locked="false" Priority="73" SemiHidden="false"    UnhideWhenUsed="false" Name="Colorful Grid Accent 1" /> <w:LsdException Locked="false" Priority="60" SemiHidden="false"    UnhideWhenUsed="false" Name="Light Shading Accent 2" /> <w:LsdException Locked="false" Priority="61" SemiHidden="false"    UnhideWhenUsed="false" Name="Light List Accent 2" /> <w:LsdException Locked="false" Priority="62" SemiHidden="false"    UnhideWhenUsed="false" Name="Light Grid Accent 2" /> <w:LsdException Locked="false" Priority="63" SemiHidden="false"    UnhideWhenUsed="false" Name="Medium Shading 1 Accent 2" /> <w:LsdException Locked="false" Priority="64" SemiHidden="false"    UnhideWhenUsed="false" Name="Medium Shading 2 Accent 2" /> <w:LsdException Locked="false" Priority="65" SemiHidden="false"    UnhideWhenUsed="false" Name="Medium List 1 Accent 2" /> <w:LsdException Locked="false" Priority="66" SemiHidden="false"    UnhideWhenUsed="false" Name="Medium List 2 Accent 2" /> <w:LsdException Locked="false" Priority="67" SemiHidden="false"    UnhideWhenUsed="false" Name="Medium Grid 1 Accent 2" /> <w:LsdException Locked="false" Priority="68" SemiHidden="false"    UnhideWhenUsed="false" Name="Medium Grid 2 Accent 2" /> <w:LsdException Locked="false" Priority="69" SemiHidden="false"    UnhideWhenUsed="false" Name="Medium Grid 3 Accent 2" /> <w:LsdException Locked="false" Priority="70" SemiHidden="false"    UnhideWhenUsed="false" Name="Dark List Accent 2" /> <w:LsdException Locked="false" Priority="71" SemiHidden="false"    UnhideWhenUsed="false" Name="Colorful Shading Accent 2" /> <w:LsdException Locked="false" Priority="72" SemiHidden="false"    UnhideWhenUsed="false" Name="Colorful List Accent 2" /> <w:LsdException Locked="false" Priority="73" SemiHidden="false"    UnhideWhenUsed="false" Name="Colorful Grid Accent 2" /> <w:LsdException Locked="false" Priority="60" SemiHidden="false"    UnhideWhenUsed="false" Name="Light Shading Accent 3" /> <w:LsdException Locked="false" Priority="61" SemiHidden="false"    UnhideWhenUsed="false" Name="Light List Accent 3" /> <w:LsdException Locked="false" Priority="62" SemiHidden="false"    UnhideWhenUsed="false" Name="Light Grid Accent 3" /> <w:LsdException Locked="false" Priority="63" SemiHidden="false"    UnhideWhenUsed="false" Name="Medium Shading 1 Accent 3" /> <w:LsdException Locked="false" Priority="64" SemiHidden="false"    UnhideWhenUsed="false" Name="Medium Shading 2 Accent 3" /> <w:LsdException Locked="false" Priority="65" SemiHidden="false"    UnhideWhenUsed="false" Name="Medium List 1 Accent 3" /> <w:LsdException Locked="false" Priority="66" SemiHidden="false"    UnhideWhenUsed="false" Name="Medium List 2 Accent 3" /> <w:LsdException Locked="false" Priority="67" SemiHidden="false"    UnhideWhenUsed="false" Name="Medium Grid 1 Accent 3" /> <w:LsdException Locked="false" Priority="68" SemiHidden="false"    UnhideWhenUsed="false" Name="Medium Grid 2 Accent 3" /> <w:LsdException Locked="false" Priority="69" SemiHidden="false"    UnhideWhenUsed="false" Name="Medium Grid 3 Accent 3" /> <w:LsdException Locked="false" Priority="70" SemiHidden="false"    UnhideWhenUsed="false" Name="Dark List Accent 3" /> <w:LsdException Locked="false" Priority="71" SemiHidden="false"    UnhideWhenUsed="false" Name="Colorful Shading Accent 3" /> <w:LsdException Locked="false" Priority="72" SemiHidden="false"    UnhideWhenUsed="false" Name="Colorful List Accent 3" /> <w:LsdException Locked="false" Priority="73" SemiHidden="false"    UnhideWhenUsed="false" Name="Colorful Grid Accent 3" /> <w:LsdException Locked="false" Priority="60" SemiHidden="false"    UnhideWhenUsed="false" Name="Light Shading Accent 4" /> <w:LsdException Locked="false" Priority="61" SemiHidden="false"    UnhideWhenUsed="false" Name="Light List Accent 4" /> <w:LsdException Locked="false" Priority="62" SemiHidden="false"    UnhideWhenUsed="false" Name="Light Grid Accent 4" /> <w:LsdException Locked="false" Priority="63" SemiHidden="false"    UnhideWhenUsed="false" Name="Medium Shading 1 Accent 4" /> <w:LsdException Locked="false" Priority="64" SemiHidden="false"    UnhideWhenUsed="false" Name="Medium Shading 2 Accent 4" /> <w:LsdException Locked="false" Priority="65" SemiHidden="false"    UnhideWhenUsed="false" Name="Medium List 1 Accent 4" /> <w:LsdException Locked="false" Priority="66" SemiHidden="false"    UnhideWhenUsed="false" Name="Medium List 2 Accent 4" /> <w:LsdException Locked="false" Priority="67" SemiHidden="false"    UnhideWhenUsed="false" Name="Medium Grid 1 Accent 4" /> <w:LsdException Locked="false" Priority="68" SemiHidden="false"    UnhideWhenUsed="false" Name="Medium Grid 2 Accent 4" /> <w:LsdException Locked="false" Priority="69" SemiHidden="false"    UnhideWhenUsed="false" Name="Medium Grid 3 Accent 4" /> <w:LsdException Locked="false" Priority="70" SemiHidden="false"    UnhideWhenUsed="false" Name="Dark List Accent 4" /> <w:LsdException Locked="false" Priority="71" SemiHidden="false"    UnhideWhenUsed="false" Name="Colorful Shading Accent 4" /> <w:LsdException Locked="false" Priority="72" SemiHidden="false"    UnhideWhenUsed="false" Name="Colorful List Accent 4" /> <w:LsdException Locked="false" Priority="73" SemiHidden="false"    UnhideWhenUsed="false" Name="Colorful Grid Accent 4" /> <w:LsdException Locked="false" Priority="60" SemiHidden="false"    UnhideWhenUsed="false" Name="Light Shading Accent 5" /> <w:LsdException Locked="false" Priority="61" SemiHidden="false"    UnhideWhenUsed="false" Name="Light List Accent 5" /> <w:LsdException Locked="false" Priority="62" SemiHidden="false"    UnhideWhenUsed="false" Name="Light Grid Accent 5" /> <w:LsdException Locked="false" Priority="63" SemiHidden="false"    UnhideWhenUsed="false" Name="Medium Shading 1 Accent 5" /> <w:LsdException Locked="false" Priority="64" SemiHidden="false"    UnhideWhenUsed="false" Name="Medium Shading 2 Accent 5" /> <w:LsdException Locked="false" Priority="65" SemiHidden="false"    UnhideWhenUsed="false" Name="Medium List 1 Accent 5" /> <w:LsdException Locked="false" Priority="66" SemiHidden="false"    UnhideWhenUsed="false" Name="Medium List 2 Accent 5" /> <w:LsdException Locked="false" Priority="67" SemiHidden="false"    UnhideWhenUsed="false" Name="Medium Grid 1 Accent 5" /> <w:LsdException Locked="false" Priority="68" SemiHidden="false"    UnhideWhenUsed="false" Name="Medium Grid 2 Accent 5" /> <w:LsdException Locked="false" Priority="69" SemiHidden="false"    UnhideWhenUsed="false" Name="Medium Grid 3 Accent 5" /> <w:LsdException Locked="false" Priority="70" SemiHidden="false"    UnhideWhenUsed="false" Name="Dark List Accent 5" /> <w:LsdException Locked="false" Priority="71" SemiHidden="false"    UnhideWhenUsed="false" Name="Colorful Shading Accent 5" /> <w:LsdException Locked="false" Priority="72" SemiHidden="false"    UnhideWhenUsed="false" Name="Colorful List Accent 5" /> <w:LsdException Locked="false" Priority="73" SemiHidden="false"    UnhideWhenUsed="false" Name="Colorful Grid Accent 5" /> <w:LsdException Locked="false" Priority="60" SemiHidden="false"    UnhideWhenUsed="false" Name="Light Shading Accent 6" /> <w:LsdException Locked="false" Priority="61" SemiHidden="false"    UnhideWhenUsed="false" Name="Light List Accent 6" /> <w:LsdException Locked="false" Priority="62" SemiHidden="false"    UnhideWhenUsed="false" Name="Light Grid Accent 6" /> <w:LsdException Locked="false" Priority="63" SemiHidden="false"    UnhideWhenUsed="false" Name="Medium Shading 1 Accent 6" /> <w:LsdException Locked="false" Priority="64" SemiHidden="false"    UnhideWhenUsed="false" Name="Medium Shading 2 Accent 6" /> <w:LsdException Locked="false" Priority="65" SemiHidden="false"    UnhideWhenUsed="false" Name="Medium List 1 Accent 6" /> <w:LsdException Locked="false" Priority="66" SemiHidden="false"    UnhideWhenUsed="false" Name="Medium List 2 Accent 6" /> <w:LsdException Locked="false" Priority="67" SemiHidden="false"    UnhideWhenUsed="false" Name="Medium Grid 1 Accent 6" /> <w:LsdException Locked="false" Priority="68" SemiHidden="false"    UnhideWhenUsed="false" Name="Medium Grid 2 Accent 6" /> <w:LsdException Locked="false" Priority="69" SemiHidden="false"    UnhideWhenUsed="false" Name="Medium Grid 3 Accent 6" /> <w:LsdException Locked="false" Priority="70" SemiHidden="false"    UnhideWhenUsed="false" Name="Dark List Accent 6" /> <w:LsdException Locked="false" Priority="71" SemiHidden="false"    UnhideWhenUsed="false" Name="Colorful Shading Accent 6" /> <w:LsdException Locked="false" Priority="72" SemiHidden="false"    UnhideWhenUsed="false" Name="Colorful List Accent 6" /> <w:LsdException Locked="false" Priority="73" SemiHidden="false"    UnhideWhenUsed="false" Name="Colorful Grid Accent 6" /> <w:LsdException Locked="false" Priority="19" SemiHidden="false"    UnhideWhenUsed="false" QFormat="true" Name="Subtle Emphasis" /> <w:LsdException Locked="false" Priority="21" SemiHidden="false"    UnhideWhenUsed="false" QFormat="true" Name="Intense Emphasis" /> <w:LsdException Locked="false" Priority="31" SemiHidden="false"    UnhideWhenUsed="false" QFormat="true" Name="Subtle Reference" /> <w:LsdException Locked="false" Priority="32" SemiHidden="false"    UnhideWhenUsed="false" QFormat="true" Name="Intense Reference" /> <w:LsdException Locked="false" Priority="33" SemiHidden="false"    UnhideWhenUsed="false" QFormat="true" Name="Book Title" /> <w:LsdException Locked="false" Priority="37" Name="Bibliography" /> <w:LsdException Locked="false" Priority="39" QFormat="true" Name="TOC Heading" /> </w:LatentStyles> </xml><![endif]--><!--[if gte mso 10]> <![endif]-->\r\n<p class="MsoNormal"><span style="font-size: 11pt; font-family: &amp;amp;amp;">JOSELI PASSOS – Professora de Contabilidade na Faculdade Jorge Amado, Contadora e Auditora, é membro do Conselho da Mulher Contabilista do CRC Salvador, é Adviser de Contabilidade.<o:p></o:p></span></p>\r\n</div>', '', 1, 16, '2010-05-31 03:00:00', 176, '', '2010-06-01 19:05:30', 176, 0, '0000-00-00 00:00:00', '2010-05-31 03:00:00', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_section":"","link_section":"","show_category":"","link_category":"","show_vote":"","show_author":"","show_create_date":"","show_modify_date":"","show_pdf_icon":"","show_print_icon":"","show_email_icon":"","language":"","keyref":"","readmore":""}', 14, 3, '', '', 1, 1478, '{"robots":"","author":""}', 0, '*', ''),
(3, 46, 'Áreas de Atuação', 'areas-de-atuacao', '<h4></h4>\r\n<h4>Quatro áreas de atuação - A base do trabalho do YABT Brasil</h4>\r\n<br />\r\n<ul>\r\n<li>Treinamento</li>\r\n<li>Redes de Liderança</li>\r\n<li>Conhecimento</li>\r\n<li>Tecnologia </li>\r\n</ul>\r\n<p><br />Veja a seguir o portifólio completo do YABT Brasil:<br /><br /></p>\r\n<p> </p>\r\n<h4>Treinamento</h4>\r\n<p><br /><strong>Laboratórios Empresariais</strong>: Um programa prático em empreendedorismo, no qual o participante vivencia diversas etapas da criação e gestão de um pequeno negócio.<br /><br />O programa Laboratórios Empresariais é um projeto pioneiro na área do desenvolvimento do empreendedorismo, atuando em parceria entre ambos setores público e privado. O principal objetivo deste projeto, além de motivar os empreendedores e capacitá-los, é o de promover o desenvolvimento econômico, social e gerar empregos, proporcionando aos participantes as ferramentas e habilidades necessárias que os permitam cultivar o empreendedorismo.<br /><br />O Laboratórios Empresariais Avançado acrescenta ao treinamento básico, o desenvolvimento de habilidades interpessoais motivando e preparando o participante para interagir da melhor forma com situações reais. &lt;clique aqui&gt; e saiba mais sobre o programa.<br /><br /><strong>Leadership Labs - Treinamentos</strong>: Treinamentos abertos e “in-company” desenhados para maximizar o desempenho de profissionais que necessitam obter grandes resultados em todas as cadeias e seguimentos empresariais. Principais soluções: Habilidades Interpessoais, Comunicação Verbal para Executivos, Habilidades de Negociação e Liderança Gerencial. &lt;clique aqui&gt; e saiba mais sobre o programa.<br /><br /><strong>Educação à distância</strong>: Para abarcar um maior número de participantes no território Nacional, o YABT realiza parcerias com diversas instituições para proporcionar o acesso a cursos online gratuitos focados no empreendedorismo e gestão de negócios. Algumas instituições parceiras: Massachusets Institute of Technology (MIT), Instituto Banco Mundial, entre outros que se encontram disponíveis no nosso site internacional http://www.myybiz.net/educationcenter/educationhome/<br /><br /><br /></p>\r\n<h4>Redes de Liderança</h4>\r\n<p><br />O YABT trabalha com uma vasta gama de organizações e governos para aumentar sua rede e a quantidade de recursos disponíveis para os jovens empreendedores e os projetos do YABT Isto inclui fundos de micro-crédito, incubadoras, plataformas tecnológicas, instituições de fomento ao empreendedorismo, organizações internacionais, instituições de ensino e organizações do terceiro setor.<br /><br /><strong>Rede Interamericana de Jovens Empresários</strong>: Através de uma rede online, o YABT trabalha no sentido de agregar jovens empresários de todas as Américas como uma forma de estimular a geração de novos negócios, projetos, intercâmbio de experiências e propiciar capilaridade às ações regionais da Organização.<br /><br /><strong>Mediação de recursos</strong>: O YABT faz a mediação entre jovens empreendedores e instituições que tenham interesse em financiar novos projetos.<br /><br /><strong>Plataforma tecnológica www.myybiz.net</strong>: Funciona como uma rede de comunicação internacional e um centro de recursos eletrônicos para jovens empreendedores, que possibilita um relacionamento interativo e motiva a troca de experiências e informações. Esta plataforma visa quebrar barreiras espaciais e culturais aproximando jovens líderes das Américas. &lt;clique aqui&gt; para acessar a plataforma.<br /><br /><strong>Eventos</strong>:&nbsp; O YABT realiza eventos que reúnem&nbsp; jovens empreendedores e profissionais experientes para troca de informações e difusão de casos de sucesso. Os eventos também possibilitam o networking e viabilizam ações comerciais.<br /><br /><strong>Videoconferências</strong>: O YABT estimula e promove a participação dos jovens em discussões periódicas que englobam temas sobre empreendedorismo e desenvolvimento social em parceria com a Rede Global de Aprendizado e Desenvolvimento (GDLN) do Banco Mundial. &lt;clique aqui&gt; e saiba mais sobre o programa (em inglês).<br /><br /></p>\r\n<h4>Conhecimento</h4>\r\n<p><br />Utilizando a sua experiência internacional de negócios, o YABT oferece serviços de assessoria técnica àqueles que desejam iniciar um empreendimento, reestruturá-lo ou implantar novas ações com intuito de colaborar com o desenvolvimento da economia local e promover a continuidade e expansão dos negócios.<br /><br /><strong>Assessoria técnica ao jovem Empreendedor</strong>: Auxílio aos jovens empreendedores na criação e no desenvolvimento de negócios. O YABT oferece apoio gratuito aos jovens empreendedores participantes do Programa Laboratórios Empresariais Avançado, atuando como um catalisador de negócios e identificando as diversas ações que podem beneficiar estes jovens líderes.<br /><br /><strong>Produção de Conhecimento em Empreendedorismo</strong>: O YABT desenvolve pesquisas e artigos sobre diversos temas em empreendedorismo por ser uma importante ferramenta para a disseminação de informações e desenvolvimento da capacidade criativa e crítica da juventude.<br /><br /></p>\r\n<h4>Tecnologia</h4>\r\n<p><br /><strong>TIC AMERICAS</strong>: Competição Internacional de Planos de Negócio entre jovens, cujo foco principal é o fomento ao empreendedorismo inovador, a identificação de novos talentos e o desenvolvimento tecnológico. &lt;clique aqui&gt; e saiba mais sobre o programa.<br /><br /><strong>Infobiz</strong>: Sistema internacional online que contém informações gerais de negócios sobre os países das Américas. Oferece informações socio e geo-políticas, legislações e uma gama de dados sobre como fazer negócios em 34 países. &lt;clique aqui&gt; e acesse o sistema (em inglês).<br /><br /><strong>Conexões Empreendedoras</strong>: Um programa de mentoria que une profissionais de comprovada experiência no mercado a jovens empreendedores, estabelecendo uma relação voluntária mentor-pupilo de troca de experiências. O Conexões Empreendedoras permite a transferência de conhecimento entre gerações e o melhor desenvolvimento dos empreendimentos da juventude.<br /><br /><strong>Promoção da Responsabilidade Social Empresarial</strong>: O YABT influencia as políticas públicas através de parcerias, compartilhando idéias e ações. Desta forma, fortalece o incentivo ao investimento social voluntário público e privado.</p>', '', -2, 16, '2010-04-25 20:00:27', 176, '', '2010-04-25 20:06:26', 176, 0, '0000-00-00 00:00:00', '2010-04-25 20:00:27', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_section":"","link_section":"","show_category":"","link_category":"","show_vote":"","show_author":"","show_create_date":"","show_modify_date":"","show_pdf_icon":"","show_print_icon":"","show_email_icon":"","language":"","keyref":"","readmore":""}', 3, 0, '', '', 1, 9, '{"robots":"","author":""}', 0, '*', ''),
(4, 47, 'Business Labs', 'business-labs', '<p style="text-align: center;"><img src="images/stories/logobl.jpg" alt="logobl" width="200" height="93" /></p>\r\n<div style="text-align: center;">\r\n<h4>Método prático de desenvolvimento de novos talentos empresariais</h4>\r\n</div>\r\n<p> </p>\r\n<h4>Conceito</h4>\r\n<p><br />O primeiro conceito do Laboratórios Empresariais surgiu e foi institucionalizado, através de um Projeto Nacional da Organização dos Estados Americanos (OEA) com o Ministro da Educação, em Trinidad e Tobago. Devido ao enorme sucesso, o projeto foi divulgado para diversos outros países membros da OEA e hoje já é aplicado em 34 nações.<br /><br />O programa vincula a experiência prática com o conhecimento teórico; através de uma série de exercícios de simulação de negócios e projetos empresariais.<br /><br />Neste treinamento, a metodologia é <strong>essencialmente prática </strong>e o jovem participante tem a oportunidade de vivenciar o mundo dos negócios a partir da <strong>criação de um pequeno empreendimento</strong>. Dessa forma, é possível desenvolver jovens talentos empreendedores e apoiar a criatividade e idéias inovadoras em exercícios práticos.<br /><br /></p>\r\n<h4>Desenvolvimento de Parcerias, Integração de Programas e Continuidade.</h4>\r\n<p><br />O projeto foca-se na continuidade após o treinamento. Depois de ter participado do workshop, os empreendedores que mais se destacam têm um acampanhamento personalizado, o qual engloba:<br /><br /></p>\r\n<ul>\r\n<li>Inclusão na “Rede Interamericana de Jovens Empresários do YABT”;</li>\r\n<li>A participação no programa “Conexões Empreendedoras”;</li>\r\n<li>Assessoria Técnica;</li>\r\n<li>Outras ferramentas que irão auxiliar no processo inicial de planejamento e futura concretização de suas idéias.</li>\r\n</ul>\r\n<p><br />O programa Laboratórios Empresariais é um projeto pioneiro na área do desenvolvimento do empreendedorismo para a juventude, atuando em parceria entre ambos setores público e privado.<br /><br />O YABT trabalha com uma vasta gama de <strong>instituições financeiras </strong>para aumentar a quantidade de recursos disponíveis para os jovens empresários eos programas. Isto inclui fundos de microcrédito nacionais e regionais e programas relacionados com capital de risco para proporcionar aos jovens empreendedores o acesso a recursos financeiros.<br /><br />Os <strong>programas pós-treinamento </strong>– Conexões Empreendedoras e Assessoria Técnica – visam dar confiança aos jovens empreendedores que pretendem empreender, seja através da abertura de um novo negócio ou do empreendedorismo intra-organizacional.<br /><br />O <strong>Conexões Empreendedoras </strong>é um programa de mentoria que une profissionais de comprovada experiência no mercado a jovens empreendedores, estabelecendo uma relações voluntária mentor-pupilo de troca de experiências. O Conexões Empreendedoras permite a transferência de conhecimento entre gerações e o melhor desenvolvimento dos empreendimentos da juventude.</p>\r\n<p> </p>\r\n<p><img src="images/stories/diagramale.jpg" alt="diagramale" width="590" /></p>', '', 1, 19, '2010-04-25 20:26:48', 176, '', '2013-07-24 11:52:01', 176, 0, '0000-00-00 00:00:00', '2010-04-25 20:26:48', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 5, 1, '', '', 1, 2181, '{"robots":"","author":"","rights":"","xreference":"","tags":null}', 0, '*', ''),
(5, 48, 'Laboratórios Empresariais Avançados', 'laboratorios-empresariais-avancados', '<p>Sistema de desenvolvimento de novos talentos empreendedores com foco essencialmente prático.</p>\r\n<p>Clique no link abaixo para ter acesso ao prospecto do programa.</p>\r\n<ul>\r\n<li><a href="index.php?option=com_content&amp;view=article&amp;id=4:business-labs&amp;catid=2&amp;Itemid=7">Laboratórios Empresariais Avançados</a></li>\r\n</ul>', '', 1, 7, '2010-05-04 00:26:18', 176, '', '0000-00-00 00:00:00', 176, 0, '0000-00-00 00:00:00', '2010-05-04 00:26:18', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_section":"","link_section":"","show_category":"","link_category":"","show_vote":"","show_author":"","show_create_date":"","show_modify_date":"","show_pdf_icon":"","show_print_icon":"","show_email_icon":"","language":"","keyref":"","readmore":""}', 1, 1, '', '', 1, 784, '{"robots":"","author":""}', 0, '*', ''),
(6, 49, 'Laboratórios Empresariais Avançados preparatórios para programas trainee', 'laboratorios-empresariais-avancados-preparatorios-para-programas-trainee', '<p>Curso preparatório para formandos ou recém-formados que desejam concorrer a vagas em programas trainee em diversas empresas.</p>\r\n<p>Clique nos link abaixo para ter acesso ao prospecto do curso.</p>\r\n<p>{phocadownload view=file|id=38|target=s}</p>', '', 0, 7, '2010-05-04 00:30:09', 176, '', '2010-05-08 22:25:15', 176, 0, '0000-00-00 00:00:00', '2010-05-04 00:30:09', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_section":"","link_section":"","show_category":"","link_category":"","show_vote":"","show_author":"","show_create_date":"","show_modify_date":"","show_pdf_icon":"","show_print_icon":"","show_email_icon":"","language":"","keyref":"","readmore":""}', 2, 4, '', '', 1, 0, '{"robots":"","author":""}', 0, '*', ''),
(7, 50, 'Calendário de treinamentos gerenciais YABT Brasil 2007', '-calendario-de-treinamentos-gerenciais-yabt-brasil-2007-', '<p>Devido ao grande sucesso dos programas de treinamento do YABT Brasil em 2006, já foi lançado um extenso programa de treinamentos abertos para todo o ano de 2007. Os treinamentos estão divididos nas categorias Treinamentos Gerenciais - voltados para a média e alta gerência -, Direito para Empresários, Turismo e Hotelaria, Fast Training - para estudantes e pequenos empresários - e, a grande novidade para este ano, o Treinamento Preparatório para Processos Seletivos Trainee - um curso empreendedor que desenvolve habilidades essenciais para intra-empreendedores.</p>\r\n<p> </p>\r\n', '\r\n<p>Não perca tempo, programe-se, increva-se nos nossos cursos!</p>\r\n<p>{phocadownload view=file|id=26|text=Calendário Geral de Treinamentos Abertos 2007|target=s}</p>', 0, 6, '2007-01-23 03:00:00', 176, '', '2010-05-04 23:57:53', 176, 0, '0000-00-00 00:00:00', '2010-05-04 23:44:14', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_section":"","link_section":"","show_category":"","link_category":"","show_vote":"","show_author":"","show_create_date":"","show_modify_date":"","show_pdf_icon":"","show_print_icon":"","show_email_icon":"","language":"","keyref":"","readmore":""}', 3, 28, '', '', 1, 62, '{"robots":"","author":""}', 0, '*', ''),
(8, 51, 'YABT Brasil Realizará o 1o Chá das Mulheres Empreendedoras em Salvador, BA', 'yabt-brasil-realizara-o-1o-cha-das-mulheres-empreendedoras-em-salvador-ba', '<p>Para comemorar o Dia Internacional da Mulher, em 08 de maio de 2007, o YABT Brasil realizará o 1o Chá das Mulheres Empreendedoras em Salvador, BA.</p>\r\n<p>Atualmente as mulheres já ocupam 47,2% do mercado de trabalho, porém as mulheres são hoje ocupam apenas 15% dos cargos de diretoria e os parcos 5% dos cargos de vice-presidência.<br />O intuito do evento é estimular empresárias e executivas a continuarem se desenvolvendo nos negócios, além de trazer um novo público feminino para o meio empresarial.</p>', '', 1, 6, '2007-01-24 03:00:00', 176, '', '0000-00-00 00:00:00', 176, 0, '0000-00-00 00:00:00', '2010-05-04 23:52:17', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_section":"","link_section":"","show_category":"","link_category":"","show_vote":"","show_author":"","show_create_date":"","show_modify_date":"","show_pdf_icon":"","show_print_icon":"","show_email_icon":"","language":"","keyref":"","readmore":""}', 1, 27, '', '', 1, 228, '{"robots":"","author":""}', 0, '*', ''),
(9, 52, 'YABT Brasil assina acordo com a Bernard Sistemas', 'yabt-brasil-assina-acordo-com-a-bernard-sistemas', '<p><img style="margin: 6px; float: left;" alt="bernard" src="images/stories/bernard.jpg" height="53" width="152" />O YABT Brasil acaba de assinar uma importante parceria com a Bernard Sistemas (<a target="_blank" href="http://www.bernard.com.br">www.bernard.com.br</a>), que desde 1992 atua no desenvolvimento de sistemas e cursos de simulação gerencial, também conhecidos como Jogos de Empresas. Os simuladores desenvolvidos pela Bernard são utilizados na formação e capacitação de estudantes de graduação, pós-graduação, além de empreendedores e demais profissionais ligados à gestão de empresas.</p>\r\n', '\r\n<p><img style="margin: 6px; float: right;" alt="torneio" src="images/stories/torneio.gif" height="48" width="138" />Essa parceria visa intensificar a Rede de cada Organização através de uma relação mútua de troca de experiências, incentivando cada vez mais o empreendedorismo, através da capacitação e de projetos como o TIC Americas – Competição de Talento e Inovação das Américas (<a target="_blank" href="http://www.ticamericas.net">www.ticamericas.net</a>), uma Competição Internacional de Planos de Negócios para jovens de 18 a 35 anos de todas as Américas e Caribe e o Torneio Gerencial 2007, (<a target="_blank" href="http://www.torneiogerencial.com.br">www.torneiogerencial.com.br</a>), um jogo de empresas disputado via Internet por pessoas interessadas em gestão de negócios, como acadêmicos e profissionais de administração, contabilidade e marketing de todo o Brasil. O Torneio Gerencial é um evento anual, que distribui aos vencedores premiação em dinheiro.</p>', 1, 6, '2007-02-08 03:00:00', 176, '', '2010-05-05 00:04:59', 176, 0, '0000-00-00 00:00:00', '2010-05-04 23:55:07', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_section":"","link_section":"","show_category":"","link_category":"","show_vote":"","show_author":"","show_create_date":"","show_modify_date":"","show_pdf_icon":"","show_print_icon":"","show_email_icon":"","language":"","keyref":"","readmore":""}', 2, 26, '', '', 1, 213, '{"robots":"","author":""}', 0, '*', '');
INSERT INTO `irqdj_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(10, 53, 'Programa Laboratórios Empresariais traz resultados positivos para jovens de Salvador', 'programa-laboratorios-empresariais-traz-resultados-positivos-para-jovens-de-salvador', '<p><img style="margin: 6px; float: left;" alt="bl1" src="images/stories/bl1.jpg" height="150" width="200" />Os jovens participantes dos Laboratórios Empresariais Avançados, desenvolvido em parceria com a Entrejovem (www.enterjovem.org.br), participam de curso profissionalizante no SESC Pelourinho para aprimorar suas técnicas de produção. Os jovens empresários da Bela Morena Bijouterias e da CravoCanela, empresas formadas durante o projeto se capacitam para ampliar sua capacidade produtiva durante 10 dias nos meses de janeiro e fevereiro.</p>\r\n', '\r\n<p>Além dessas duas empresas, está em fase de desenvolvimento uma Multicooperativa, criada pelos jovens da EIC Bagunçaço que funcionará como um revendedor de todos os produtos revendidos pela comunidade em que eles vivem.<img style="margin: 6px; float: right;" alt="bl2" src="images/stories/bl2.jpg" height="150" width="200" /></p>\r\n<p>O projeto terá conclusão no mês de abril e até lá, todas as empresas estarão desenvolvidas e funcionando a pleno vapor.</p>\r\n<p>Para mais informações entre em contato com Jackson Morais, coordenador do projeto, através do e-mail <a href="mailto: jacksonmoraes@ybiz.net">jacksonmoraes@ybiz.net</a> ou pelo telefone (71) 3311-7520.</p>', 1, 6, '2007-02-08 23:58:36', 176, '', '2010-05-08 18:33:53', 176, 0, '0000-00-00 00:00:00', '2010-05-04 23:58:36', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_section":"","link_section":"","show_category":"","link_category":"","show_vote":"","show_author":"","show_create_date":"","show_modify_date":"","show_pdf_icon":"","show_print_icon":"","show_email_icon":"","language":"","keyref":"","readmore":""}', 3, 25, '', '', 1, 227, '{"robots":"","author":""}', 0, '*', ''),
(11, 54, 'O YABT Brasil inicia projeto de Treinamentos Gratuitos para 2007', 'o-yabt-brasil-inicia-projeto-de-treinamentos-gratuitos-para-2007', '<p>O YABT Brasil iniciou em janeiro um programa que visa capacitar gratuitamente 1.650 pessoas no ano de 2007. Para esse projeto, O YABT Brasil escolhe comunidades, que estejam enquadradas no perfil exigido, para aplicar os treinamentos de desenvolvimento pessoal e profissional em diversas áreas: (Qualidade no Atendimento, Tecnicas de Vendas,  Plano de Negócio, Empreendedorismo e outros).</p>\r\n', '\r\n<p>Em Janeiro o trabalho foi desenvolvido na comunidade da Igreja Batista, em que foram aplicados treinamentos de Atendimento Excelente e Plano de Negócios, totalizando mais de 70 pessoas treinadas nesses programas.  O trabalhho foi tão proveitoso que a Assistente Social da Igreja solicitou um em março para beneficiar mais pessoas com a tecnologia YABT Brasil.</p>', 1, 6, '2007-02-08 18:27:18', 176, '', '2010-05-08 18:31:19', 176, 0, '0000-00-00 00:00:00', '2010-05-08 18:27:18', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_section":"","link_section":"","show_category":"","link_category":"","show_vote":"","show_author":"","show_create_date":"","show_modify_date":"","show_pdf_icon":"","show_print_icon":"","show_email_icon":"","language":"","keyref":"","readmore":""}', 3, 24, '', '', 1, 229, '{"robots":"","author":""}', 0, '*', ''),
(12, 55, 'O YABT Brasil lança treinamento preparatório para processos seletivos trainee', 'o-yabt-brasil-lanca-treinamento-preparatorio-para-processos-seletivos-trainee', '<p>O Job Hunter: Curso Preparatório para Processos Seletivos Trainêe tem a finalidade de deixar os universitários candidatos às diversas vagas em programas trainees mais seguros e preparados para esta empreitada. O programa auxilia o candidato a estabelecer criterios para a escolha de vagas de acordo com seu perfil, a elaborar um curriculo e carta de apresentação, a se preparar para todas as etapas da entrevista, além de desenvolver habilidades essenciais em dinamicas de liderança, comunicaçao eficaz , relaçoes interpessoais e negociação, visando o completo preparo do jovem candidato.\r\n', '\r\n</p>\r\n<p>O treinamento acontece em 40 horas e conta com facilitadores renomados, um deles Head Hunter conceituado no mercado nacional que vai transmitir exatamente o que as empresas procuram num candidato quando realizam processos seletivos.</p>\r\n<p>A primeira turma acontecerá em Maio de 2007 e os interessados devem enviar e-mail para <a href="mailto: treinamento@ybiz.net">treinamento@ybiz.net</a></p>', 0, 6, '2007-02-08 18:28:56', 176, '', '2010-05-08 18:34:31', 176, 0, '0000-00-00 00:00:00', '2010-05-08 18:28:56', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_section":"","link_section":"","show_category":"","link_category":"","show_vote":"","show_author":"","show_create_date":"","show_modify_date":"","show_pdf_icon":"","show_print_icon":"","show_email_icon":"","language":"","keyref":"","readmore":""}', 3, 23, '', '', 1, 81, '{"robots":"","author":""}', 0, '*', ''),
(13, 56, 'YABT Brasil realizará evento com Secretário de Indústria e Comércio do Estado da Bahia', 'yabt-brasil-realizara-evento-com-secretario-de-industria-e-comercio-do-estado-da-bahia', '<p>O YABT Brasil realizará no dia 17 de Abril de 2007 o “Almoço de Negócios” na cidade do Salvador. O evento contará com a presença do Secretário de Indústria e Comércio do Estado da Bahia, Sr. Rafael Amoedo, e terá a participação de 200 empresários(as) dos mais diversos ramos da economia baiana. O principal objetivo deste evento é estimular o desenvolvimento sócio-econômico da Bahia através de ações inovadoras, novos investimentos e o empreendedorismo. O Secretário Rafael Amoedo contribuirá, abordando a sua trajetória como um empreendedor, incluindo casos de sucessos e obstáculos transpostos, como também irá expor suas perspectivas para o crescimento da economia baiana para os próximos anos. \r\n', '\r\n</p>\r\n<p>O almoço terá uma duração de duas horas e será uma ótima oportunidade para debater sobre assuntos relacionados à área do empreendedorismo e também, para a troca de experiências e idéias entre os participantes. Segundo Daniel Messeder, Diretor Executivo do YABT Brasil: “Eventos como estes são essenciais para debater o cenário econômico atual. Ouvir a vasta experiência de um empreendedor nato como o Secretário Rafael Amoedo só trará benefícios para os expectadores e para as organizações envolvidas”. Para maiores informações, favor enviar e-mail para <a href="mailto: brasil@ybiz.net">brasil@ybiz.net</a>.</p>', 1, 6, '2007-02-08 18:29:44', 176, '', '2010-05-08 18:34:58', 176, 0, '0000-00-00 00:00:00', '2010-05-08 18:29:44', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_section":"","link_section":"","show_category":"","link_category":"","show_vote":"","show_author":"","show_create_date":"","show_modify_date":"","show_pdf_icon":"","show_print_icon":"","show_email_icon":"","language":"","keyref":"","readmore":""}', 3, 22, '', '', 1, 255, '{"robots":"","author":""}', 0, '*', ''),
(14, 57, 'YABT Brasil assina acordo de parceria com a DataMall Marketing de Relacionamento', 'yabt-brasil-assina-acordo-de-parceria-com-a-datamall-marketing-de-relacionamento', '<p>O YABT Brasil assinou hoje um acordo de parceria com a DataMall Marketing de Relacionamento. A parceria visa oferecer uma maior qualidade no relacionamento do YABT Brasil com seus parceiros e dos parceiros do YABT Brasil com seus stakeholders, de forma a potencializar os resultados das ações das organizações envolvidas.\r\n', '\r\n</p>\r\n<p>A DataMall, empresa que atua há mais de 5 anos nos segmentos de CRM e Database Marketing, oferece uma ampla gama de serviços para estruturar as ações de Marketing de Relacionamento em todo o Brasil. Para obter maiores informações sobre a empresa, visite o site <a target="_blank" href="http://www.datamallmr.com.br">www.datamallmr.com.br</a>.</p>', 1, 6, '2007-02-12 18:32:00', 176, '', '2010-05-08 18:35:13', 176, 0, '0000-00-00 00:00:00', '2010-05-08 18:32:00', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_section":"","link_section":"","show_category":"","link_category":"","show_vote":"","show_author":"","show_create_date":"","show_modify_date":"","show_pdf_icon":"","show_print_icon":"","show_email_icon":"","language":"","keyref":"","readmore":""}', 2, 21, '', '', 1, 220, '{"robots":"","author":""}', 0, '*', ''),
(15, 58, ' 	  Salvador irá hospedar sofisticado evento de fomento ao Networking Feminino no dia internacional da mulher.', '-salvador-ira-hospedar-sofisticado-evento-de-fomento-ao-networking-feminino-no-dia-internacional-da-mulher', '<p><em>I Chá das Empreendedoras vai contar com a presença da Presidente do Conselho Nacional da Mulher Empresária - CNME</em></p>\r\n<p>O aumento do empreendedorismo entre as mulheres está mudando o cenário empresarial. Elas, que durante muitas décadas foram consideradas “sexo frágil”, hoje constituem boa parte da força de trabalho das empresas, ocupando cargos de liderança e da alta administração. O comprometimento, a persistência, a busca por oportunidades e criatividade são algumas das características femininas que ganham destaque no mundo dos negócios.\r\n', '\r\n</p>\r\n<p>De acordo com uma pesquisa realizada pelo Global Entrepreneurship Monitor (GEM), em parceria com o Serviço Brasileiro de Apoio à Micro e Pequena Empresa (Sebrae), o Brasil possui mais de 6 milhões de mulheres empreendedoras. O índice que em 2000 era de 29% e em 2003 atingiu os 46%, vem crescendo a cada dia. Dados do IBGE de 2007 confirmam estas estimativas; dos 44 milhões de domicílios brasileiros, mais de 11 milhões são chefiados por mulheres.</p>\r\n<p>Networking. Palavra da moda no mundo corporativo que significa, na prática, usar de forma consciente e estruturada a sua rede de relacionamentos para que, futuramente, isso possa render negócios ou até mesmo um novo emprego. Para os homens, a atitude é comum – sempre acostumados a marcar almoços e happy-hours apenas para reforçar relações de negócio sem qualquer constrangimento. Para o universo feminino, que conquista cada vez mais espaço no topo das corporações, o networking ainda é uma novidade.</p>\r\n<p>Com o intuito de discutir as crescentes conquistas da mulher no mundo dos negócios, no próximo dia 08 de março, dia internacional da Mulher, a unidade nacional do Young Americas Business Trust (YABT Brasil) realizará o I Chá das Empreendedoras. O evento acontecerá no Blue Tree Towners de Salvador, Ba das 16h às 18h e terá como público presente executivas de médias e grandes empresas, além de micro e pequenas empresárias do estado da Bahia.</p>\r\n<p>Para discutir “A Gestão Feminina no Mercado de Trabalho” os presentes contarão com palestra da Maria Auxiliadora Chaer Lopes, Presidente do Conselho Nacional da Mulher Empresaria - CNME e diretora da Federação Ibero-Americana das Mulheres Empresárias.</p>\r\n<p>Para mais informações, os interessados deverão acessar o site do YABT Brasil <a href="http://www.ybiz.org.br">www.ybiz.org.br</a> ou telefonar para 71 3311 7520.</p>\r\n<p>Programação do I Chá das Empreendedoras:</p>\r\n<ul>\r\n<li><strong>Tema</strong>: “Gestão Feminina no Mundo dos Negócios”</li>\r\n<li><strong>Palestrantes</strong>: Sra. Maria Auxiliadora, Presidente do Conselho Nacional das Mulheres Empresárias –   CNME e Sra. Cristiane Amaral, Sócia de Auditoria Interna da Ernst &amp; Young.</li>\r\n<li><strong>Data</strong>: 08 de Março, quinta-feira.</li>\r\n<li><strong>Local</strong>: Blue Tree Towners, Bairro do Rio Vermelho.</li>\r\n<li><strong>Horário</strong>: 16h às 20h</li>\r\n<li><strong>Programação</strong>:                  <br />16h Recepção das Participantes;            <br />16h30 “A Gestão Feminina no Mundo dos Negócios;            <br />18h00 Chá para Confraternização e Networking das Empreendedoras</li>\r\n</ul>', 0, 6, '2007-02-23 18:35:14', 176, '', '2010-05-08 18:41:18', 176, 0, '0000-00-00 00:00:00', '2010-05-08 18:35:14', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_section":"","link_section":"","show_category":"","link_category":"","show_vote":"","show_author":"","show_create_date":"","show_modify_date":"","show_pdf_icon":"","show_print_icon":"","show_email_icon":"","language":"","keyref":"","readmore":""}', 2, 20, '', '', 1, 74, '{"robots":"","author":""}', 0, '*', ''),
(16, 59, 'Salvador sediou um sofisticado evento de fomento ao Networking Feminino no dia internacional da mulher', 'salvador-sediou-um-sofisticado-evento-de-fomento-ao-networking-feminino-no-dia-internacional-da-mulher', '<em>I Chá das Empreendedoras contou com a presença da Presidente do Conselho Nacional da Mulher Empresária - CNME </em>\r\n<p>O evento se baseou no crescente aumento do empreendedorismo entre as mulheres que vem mudando o cenário empresarial. Elas, que durante muitas décadas foram consideradas "sexo frágil", hoje constituem boa parte da força de trabalho das empresas, ocupando cargos de liderança e da alta administração. O comprometimento, a persistência, a busca por oportunidades e criatividade são algumas das características femininas que ganham destaque no mundo dos negócios.\r\n', '\r\n</p>\r\n<p>De acordo com uma pesquisa realizada pelo Global Entrepreneurship Monitor (GEM), em parceria com o Serviço Brasileiro de Apoio à Micro e Pequena Empresa (Sebrae), o Brasil possui mais de 6 milhões de mulheres empreendedoras. O índice que em 2000 era de 29% e em 2003 atingiu os 46%, vem crescendo a cada dia. Dados do IBGE de 2007 confirmam estas estimativas; dos 44 milhões de domicílios brasileiros, mais de 11 milhões são chefiados por mulheres.</p>\r\n<p>Networking. Palavra da moda no mundo corporativo que significa, na prática, usar de forma consciente e estruturada a sua rede de relacionamentos para que, futuramente, isso possa render negócios ou até mesmo um novo emprego. Para os homens, a atitude é comum – sempre acostumados a marcar almoços e happy-hours apenas para reforçar relações de negócio sem qualquer constrangimento. Para o universo feminino, que conquista cada vez mais espaço no topo das corporações, o networking ainda é uma novidade.</p>\r\n<p>Com o intuito de discutir as crescentes conquistas da mulher no mundo dos negócios, a unidade nacional do Young Americas Business Trust (YABT Brasil) e a ESAMC Salvador realizou o I Chá das Empreendedoras. O evento que aconteceu hoje, no dia internacional da mulher, no Blue Tree Towners de Salvador, Ba teve como público presente executivas de médias e grandes empresas, além de micro e pequenas empresárias do estado da Bahia, além de autoridades da mídia local.</p>\r\n<p>As discussões giraram em no tema "Gestão Feminina no Mercado de Trabalho". Os presentes contaram com palestra da Maria Auxiliadora Chaer Lopes, Presidente do Conselho Nacional da Mulher Empresaria - CNME e diretora da Federação Ibero-Americana das Mulheres Empresárias e da Sócia de Auditoria da Ernst &amp; Young, Sra. Cristiane Amaral.</p>\r\n<p> </p>\r\n<object height="350" width="425" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=10,0,32,18" classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000">\r\n<param name="wmode" value="transparent" />\r\n<param name="src" value="http://www.youtube.com/v/CdCOZJJRNyE" /><embed height="350" width="425" src="http://www.youtube.com/v/CdCOZJJRNyE" wmode="transparent" type="application/x-shockwave-flash"></embed>\r\n</object>', 1, 6, '2007-03-12 18:42:11', 176, '', '2010-05-08 18:44:50', 176, 0, '0000-00-00 00:00:00', '2010-05-08 18:42:11', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_section":"","link_section":"","show_category":"","link_category":"","show_vote":"","show_author":"","show_create_date":"","show_modify_date":"","show_pdf_icon":"","show_print_icon":"","show_email_icon":"","language":"","keyref":"","readmore":""}', 2, 19, '', '', 1, 292, '{"robots":"","author":""}', 0, '*', ''),
(17, 60, 'Empreendedorismo e Novos Investimentos Será Tema da Palestra do Secretário de Ind. e Com. Rafael Amoedo Durante Almoço de Negócios', 'empreendedorismo-e-novos-investimentos-sera-tema-da-palestra-do-secretario-de-ind-e-com-rafael-amoedo-durante-almoco-de-negocios', '<em>Secretário de Indústria, Comércio E Mineração, Rafael Amoedo é o Convidado de Honra do Young Americas Business Trust (YABT) no Almoço de Negócios no Próximo dia 17 De Abril.</em>\r\n<p>O produto Interno Bruto (PIB) da Bahia apresentou uma expansão de 2,4% em 2006. Embora o setor agropecuário, que registrou uma queda de 4,4, e a indústria baiana, especificamente, tenha se mostrado ainda mais competitiva que a média nacional, o fato é que o crescimento existente se deu com base no alto incremento registrado na economia baiana nos dois anos anteriores, quando o PIB apresentou elevação de 5% (2005) e 9,6% (2004). No entanto, a Bahia carece de iniciativas capazes de desenvolver o estado de maneira integrada e sustentável.\r\n', '\r\n</p>\r\n<p>Diante deste cenário, a unidade nacional do YABT – Young Americas Business Trust estará realizando em 17 de Abril no Fiesta Convention Center, o Almoço de Negócios sobre "Empreendedorismo e Novos Investimentos no processo de Desenvolvimento da Bahia" e terá como convidado de honra o Secretário de Indústria e Comércio, Sr. Rafael Amoedo. Além do secretário, os participantes conhecerão, diretamente de Washington DC, o presidente internacional do YABT, o Sr. Roy Thomasson, que é a principal autoridade da OEA - Organização dos Estados Americanos no que tange ao tema empreendedorismo e desenvolvimento sócio-econômico.</p>\r\n<p>Empresários e executivos dos mais diversos segmentos da economia do estado serão convidados para participar diante das explanações do secretário Amoedo. Será uma ótima oportunidade para os participantes fortalecerem seu networking junto aos 200 participantes que estarão presentes.</p>\r\n<p>O YABT, que tem a missão de fomentar o empreendedorismo entre os jovens e organizações no Brasil, promovendo a inovação, a capacitação e a liderança, utilizará a renda do evento para dar continuidade aos seus programas sociais já em andamento.</p>\r\n<p>Para inscrições <strong>Almoço de Negócios</strong> do dia 17 de Abrill ou para mais informações sobre o YABT Brasil, favor contatarem Félix Muniz, Gerente de Relações Externas do YABT Brasil pelo telefone 71 3311 7520 ou no e-mail <a href="mailto:felix.muniz@ybiz.org.br">felix.muniz@ybiz.org.br</a>.</p>\r\n<p>Segue abaixo a programação do Evento:</p>\r\n<p><span style="text-decoration: underline;"><strong>"Empreendedorismo e Novos Investimentos no processo de Desenvolvimento da Bahia"</strong></span></p>\r\n<ul>\r\n<li><strong>Palestrantes</strong>: Exmo. Sr. Rafael Amoedo, Secretário de Indústria e Comércio do estado da Bahia – SICM-BA e ilmo. Roy Thomasson, CEO do Young Americas Business Trust e principal especialista em empreendedorismo da Organização dos Estados Americanos - OEA.</li>\r\n<li><strong>Data</strong>: 17 de Abril, terça-feira.</li>\r\n<li><strong>Local</strong>: Fiesta Convention Center, Salão Íris ABCD</li>\r\n<li><strong>Investimento</strong>: R$ 60,00 (Sessenta Reais)</li>\r\n<li><strong>Horário</strong>: 12h às 14h30</li>\r\n<li><strong>Programação</strong>:<br />12h Recepção dos Participantes;<br />12h30 Almoço<br />13h Sr. Rafael Amoedo - "Novas Estratégias no processo de Desenvolvimento Sócio-Econômico da Bahia"<br />13h40 Sr. Roy Thomasson - "Empreendedorismo Científico e Desenvolvimento Sustentável".<br />14h Espaço para Perguntas e Respostas<br />14h30 Encerramento</li>\r\n</ul>', 1, 6, '2007-04-19 18:45:41', 176, '', '0000-00-00 00:00:00', 176, 0, '0000-00-00 00:00:00', '2010-05-08 18:45:41', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_section":"","link_section":"","show_category":"","link_category":"","show_vote":"","show_author":"","show_create_date":"","show_modify_date":"","show_pdf_icon":"","show_print_icon":"","show_email_icon":"","language":"","keyref":"","readmore":""}', 1, 18, '', '', 1, 249, '{"robots":"","author":""}', 0, '*', ''),
(18, 61, 'Diretores do YABT Brasil participam de reuniões em Washington, DC', 'diretores-do-yabt-brasil-participam-de-reunioes-em-washington-dc', '<p>No período de 17 de março a 15 de abril de 2007, os diretores vice-presidentes do YABT Brasil, Daniel Murta Coelho Messeder e Leonardo Laranjeira Gomes, estiveram na sede internacional do Young Americas Business Trust, na Secretaria Geral da Organização dos Estados Americanos em Washington, DC, EUA, para uma série de reuniões visando agregar parcerias e novos projetos para o YABT Brasil.</p>\r\n<p>\r\n', '\r\n</p>\r\n<p>Durante este período, Daniel e Leonardo participaram de reuniões com o Instituto Banco Mundial, Organização dos Estados Americanos, Departamento de Comércio dos Estados Unidos, Natural Partners, Eco Ventures, entre outras diversas organizações. Tais encontros promoveram o YABT Brasil e prometem trazer novos projetos para o Brasil no médio prazo, como é o caso da extensão do projeto de promoção à Responsabilidade Social Empresarial realizado em parceria com o Instituto Banco Mundial. O projeto, que já desenvolveu um workshop para empresários e jovens empreendedores em 2006 será extendido em uma série de ações que serão iniciadas em outubro de 2007.<br /> <img alt="washington" src="images/stories/washington.jpg" height="243" width="550" /></p>\r\n<p>Durante a viagem, os representantes do YABT Brasil apresentaram os resultados da filial para a comunidade internacional e, inclusive, para o Conselho de Administração do Young Americas Business Trust Internacional. A matriz reconheceu a unidade brasileira como modelo para todas as outras unidades da organização no mundo, o gera benefícios para a juventude brasileira, uma vez que tal reconhecimento aumenta a visibilidade da filial, traz novas parcerias, proporciona o aumento da sua rede e, conseqüentemente, gera frutos para a juventude empreendedora brasileira.</p>', 0, 6, '2007-04-19 18:51:54', 176, '', '2010-05-08 18:54:42', 176, 0, '0000-00-00 00:00:00', '2010-05-08 18:51:54', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_section":"","link_section":"","show_category":"","link_category":"","show_vote":"","show_author":"","show_create_date":"","show_modify_date":"","show_pdf_icon":"","show_print_icon":"","show_email_icon":"","language":"","keyref":"","readmore":""}', 2, 17, '', '', 1, 93, '{"robots":"","author":""}', 0, '*', ''),
(19, 62, 'Membros do Conselho do YABT Brasil se reuniram em Assembléia Geral Ordinária em em Salvador, BA', 'membros-do-conselho-do-yabt-brasil-se-reuniram-em-assembleia-geral-ordinaria-em-em-salvador-ba', '<p>No último dia 18 de abril, os membros do Conselho de Administração, do Conselho Fiscal e da Diretoria do YABT Brasil - Young Americas Business Trust - se reuniram para mais uma Assembéia Geral Ordinária da Organização. A Assembléia ocorre, pelo menos, uma vez por ano para consolidação dos resultados no período.</p>\r\n<p>Esta última reunião promoveu algumas mudanças na configuração da Organização. Considerando a atual fase de desenvolvimento organizacional e de projetos da unidade nacional - que atualmente é modelo para outras unidades no mundo e foi a primeira a conquistar auto-sustentabilidade - seus antigos diretores vice-presidentes, Daniel Murta Coelho Messeder e Leonardo Laranjeira Gomes, passam a integrar a equipe do Young Americas Business Trust em Washington, porém tornam-se membros do Conselho de Administração do YABT Brasil e continuam ligados à filial brasileira.</p>\r\n<p> </p>\r\n<p>\r\n', '\r\n</p>\r\n<p><img alt="dircon" src="images/stories/dircon.jpg" height="275" width="550" /></p>\r\n<p>Diversos resultados foram apresentados ao Conselho, bem como os planos da organização para o próximo período. O cenário é otimista e o YABT Brasil continuará trazendo bons frutos para a juventude empreendedora brasileira.</p>\r\n<p>Mudanças no Conselho de Administração:</p>\r\n<table style="width: 498px; height: 106px;" border="1">\r\n<tbody>\r\n<tr>\r\n<td><strong>Membros que saem</strong></td>\r\n<td><strong>Novos membros</strong></td>\r\n</tr>\r\n<tr>\r\n<td>Antônio Carlos Magalhães Júnior\r\n<p>Glauco José Côrte Filho</p>\r\n</td>\r\n<td>Daniel Murta Coelho Messeder\r\n<p>Leonardo Laranjeira Gomes</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>\r\n<p>Mudanças no Conselho Fiscal:</p>\r\n<table style="width: 422px; height: 54px;" border="1">\r\n<tbody>\r\n<tr>\r\n<td><strong>Membro que sai</strong></td>\r\n<td><strong>Novo membro</strong></td>\r\n</tr>\r\n<tr>\r\n<td>Fernando Anônio Falcão Soares</td>\r\n<td>Genivaldo Bonfim</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\nObs.: José Lago França passa a ser o novo Presidente do Conselho Fiscal\r\n<p>Mudanças na Diretoria:<br /> Saem os diretores vice-presidentes Daniel Murta Coelho Messeder e Leonardo Laranjeira Gomes e o Diretor Presidente Alexandre Moura Caruso passa a acumular os 3 cargos.</p>\r\nNesta nova fase do YABT Brasil, José Félix Muniz Neto assume a Gerência Geral do YABT Brasil.', 0, 6, '2007-04-19 18:55:04', 176, '', '2010-05-08 19:04:19', 176, 0, '0000-00-00 00:00:00', '2010-05-08 18:55:04', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_section":"","link_section":"","show_category":"","link_category":"","show_vote":"","show_author":"","show_create_date":"","show_modify_date":"","show_pdf_icon":"","show_print_icon":"","show_email_icon":"","language":"","keyref":"","readmore":""}', 3, 16, '', '', 1, 110, '{"robots":"","author":""}', 0, '*', ''),
(20, 63, 'YABT Brasil realizará mais uma edição do seu premiado programa Laboratórios Empresariais', 'yabt-brasil-realizara-mais-uma-edicao-do-seu-premiado-programa-laboratorios-empresariais', 'O YBAT Brasil iniciará mais uma etapa do programa Laboratórios Empresariais Avançados, um programa internacionalmente reconhecido por capacitar e incluir sócio-economicamente os jovens das Américas no mercado de trabalho.\r\n<p>Esta etapa envolverá 40 jovens de universidades públicas e particulares do estado da Bahia.\r\n', '\r\n</p>\r\n<p>As aulas de empreendedorismo ocorrerão entre os dias 19 e 26 de Maio e os interessados podem se inscrever através do site <a href="http://www.ybiz.org.br">www.ybiz.org.br</a> ou pelo telefone 71 3311 7520.</p>\r\n<p>Trata-se não somente de uma ótima oportunidade de aprendizado das mais novas ferramentas de empreendedorismo, como também de uma chance única de contar com uma assessoria de uma equipe técnica internacionalmente formada durante seis meses.</p>\r\n<p>Além disso, o YABT Brasil estará fazendo, durante as oficinas, o seu processo seletivo TRAINEE 2007 - 2008. Os jovens talentos que não conseguirem levar seus respectivos negócios à diante poderão fazer parte da equipe executiva do YABT Brasil e ganhar as Américas!</p>\r\n<p>Para mais informações entre em contato com Jackson Morais, coordenador do projeto, através do e-mail <a href="mailto:jackson.morais@ybiz.org.br">jackson.morais@ybiz.org.br</a> ou pelo telefone (71)3311-7520.</p>', 1, 6, '2007-05-03 19:05:23', 176, '', '2010-05-08 19:06:46', 176, 0, '0000-00-00 00:00:00', '2010-05-08 19:05:23', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_section":"","link_section":"","show_category":"","link_category":"","show_vote":"","show_author":"","show_create_date":"","show_modify_date":"","show_pdf_icon":"","show_print_icon":"","show_email_icon":"","language":"","keyref":"","readmore":""}', 2, 15, '', '', 1, 280, '{"robots":"","author":""}', 0, '*', ''),
(21, 64, 'Jovens Universitários dão seus primeiros passos no mundo dos negócios', 'jovens-universitarios-dao-seus-primeiros-passos-no-mundo-dos-negocios-', '<p>Os participantes do Programa Laboratórios Empresariais Avançados para Universitários criaram seus primeiros negócios durante o curso do YABT</p>\r\n<p><img alt="bla" src="images/stories/bla.jpg" height="249" width="400" /></p>', '', 1, 6, '2007-05-28 19:07:12', 176, '', '2010-05-08 19:08:17', 176, 0, '0000-00-00 00:00:00', '2010-05-08 19:07:12', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_section":"","link_section":"","show_category":"","link_category":"","show_vote":"","show_author":"","show_create_date":"","show_modify_date":"","show_pdf_icon":"","show_print_icon":"","show_email_icon":"","language":"","keyref":"","readmore":""}', 2, 14, '', '', 1, 290, '{"robots":"","author":""}', 0, '*', ''),
(22, 65, 'Talent Invovation Competition 2011', 'saiba-mais-sobre-o-maior-concurso-de-empreendedorismo-do-hemisferio', 'Saiba mais sobre o maior concurso de empreendedorismo do hemisfério.\r\n<p>Desde 2006, o Young Americas Business Trust (YABT) realiz a Competição de Talento e Inovação das Américas (TIC Americas), utilizando-a como uma plataforma para o TIC Ásia e o Global TIC, em conjunto com a <em>Talentrepreneur, Innovation and Collaboration Association</em> (TICa). Essa iniciativa faz parte de uma série de atividades que vism a auxiliar o desenvolvimento do extraordinário potencial de negócios inovadores entre os jovens empreendedores e cientistas, em colaboração com patrocinadores globais e com os 34 países membros da Organização dos Estados Americanos (OEA).</p>\r\n', '\r\n<p>O YABT, uma instituição do setor privado afiliada à Organização dos Estados Americanos (OEA), proporciona oportunidades para o desenvolvimento de jovens empreendedores através de programas viáveis de responsabilidade social coorportativa.</p>\r\n<p>O YABT trabalha sob a ótica de ser reconhecido globalmente como uma vertente da OEA pioneira na construçào de projetos tangívies e sustentáveis para o desenvolvimento da juventude nas Américas como também uma instituição que incentiva o "networking" e a troca de experiências entre os membros de sua Rede de Colaboradores.</p>\r\n<p>O TIC Americas vai além dos Planos de Negócios, incorporando treinamento, mentoring e uma fase de desenvolvimento de protótipos para testar a viabilidade prática do projeto no mercado real. A premiação inclui: prêmios em dinheiro, incubação, de oportunidades de networking em sete áreas: Processo de Negócios, E-business, Design Criativo, Conhecimentos Tradicionais, Espírito Empreendedor e Novos Mercados. Existirá também uma premiação para projetos fora das Américas. Em 2011, os temas centrais da competição fosão Comércio, Turismo, Tecnologia, Agro Negócios e Energia, e também soma-se a parceria com a PEPSICo no prêmio especial Eco Challenge com o tema preservação da água.</p>\r\n<p>Os ganhadores do TIC Americas irão participar do GLOBAL TIC (Global Talentrepreneur Innovation Competition) em San Salvador em agosto de 2011. Mais informações no site &nbsp;<a href="http://www.ticamericas.net">www.ticamericas.net</a></p>\r\n<p>Os preparativos para o TIC Americas 2012 acontecem no final de 2011, não perca a sua chance de participar do próximo!!</p>', 1, 6, '2011-04-17 03:00:00', 176, '', '2011-04-17 04:33:37', 176, 0, '0000-00-00 00:00:00', '2011-04-17 03:00:00', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_section":"","link_section":"","show_category":"","link_category":"","show_vote":"","show_author":"","show_create_date":"","show_modify_date":"","show_pdf_icon":"","show_print_icon":"","show_email_icon":"","language":"","keyref":"","readmore":""}', 6, 9, '', '', 1, 568, '{"robots":"","author":""}', 0, '*', ''),
(23, 66, 'Duas equipes do Brasil são finalistas do Concurso TIC Americas no Panámá', 'duas-equipes-do-brasil-sao-finalistas-do-concurso-tic-americas-no-panama', 'Duas equipes brasileiras inscritas na Competição de Talento e Inovação das Américas - TIC Americas - participaram da final do concurso no Panamá no dia 1 de junho de 2007.\r\n<p>Com perfis diferentes, as equipes <a target="_blank" href="http://www.edgeit.com.br/">EdgeIT</a>, de tecnologia da informação e a ONG Esferaquatro, projeto social da consultoria - também formada por jovens - <a target="_blank" href="http://www.esferaquatro.com.br/">EsferaQuatro</a>,  foram selecionadas entre as mais de 120 equipes brasileiras inscritas da Competição e entre as mais de 700 inscritas nas Américas.</p>', '', 1, 6, '2007-06-10 19:41:09', 176, '', '0000-00-00 00:00:00', 176, 0, '0000-00-00 00:00:00', '2010-05-08 19:41:09', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_section":"","link_section":"","show_category":"","link_category":"","show_vote":"","show_author":"","show_create_date":"","show_modify_date":"","show_pdf_icon":"","show_print_icon":"","show_email_icon":"","language":"","keyref":"","readmore":""}', 1, 13, '', '', 1, 288, '{"robots":"","author":""}', 0, '*', ''),
(24, 67, 'Divulgada a lista de vencedores da etapa final do Programa TIC Americas', '-divulgada-a-lista-de-vencedores-da-etapa-final-do-programa-tic-americas', '<a target="_blank" href="http://www.meworks.net/meworksv2a/meworks/page1.aspx?no=65049">http://www.meworks.net/meworksv2a/meworks/page1.aspx?no=65049</a>', '', 1, 6, '2007-06-12 19:43:08', 176, '', '2010-05-08 19:45:54', 176, 0, '0000-00-00 00:00:00', '2010-05-08 19:43:08', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_section":"","link_section":"","show_category":"","link_category":"","show_vote":"","show_author":"","show_create_date":"","show_modify_date":"","show_pdf_icon":"","show_print_icon":"","show_email_icon":"","language":"","keyref":"","readmore":""}', 2, 12, '', '', 1, 288, '{"robots":"","author":""}', 0, '*', ''),
(25, 68, 'Apresentação do   Young Americas Business Trust no Fórum do Setor Privado da OEA', '-apresentacao-do-young-americas-business-trust-no-forum-do-setor-privado-da-oea', '<p>Valerie Lorena, Gerente de Projetos do YABT Internacional, sobre a importancia do envolvimento da juventude nos setores público e privado.</p>\r\n<p><a target="_blank" href="http://www.oas.org/en/media_center/videos.asp?sCodigo=07-0166&amp;sCodigoDetVideo=1">Clique aqui para assistir</a></p>', '', 1, 6, '2007-06-15 19:44:28', 176, '', '2010-05-08 19:46:01', 176, 0, '0000-00-00 00:00:00', '2010-05-08 19:44:28', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_section":"","link_section":"","show_category":"","link_category":"","show_vote":"","show_author":"","show_create_date":"","show_modify_date":"","show_pdf_icon":"","show_print_icon":"","show_email_icon":"","language":"","keyref":"","readmore":""}', 2, 11, '', '', 1, 301, '{"robots":"","author":""}', 0, '*', ''),
(26, 69, 'Empresa Brasileira é uma das vencedoras do TIC Americas', 'empresa-brasileira-e-uma-das-vencedoras-do-tic-americas', 'A <a target="_blank" href="http://www.edgeit.com.br/"> Edge IT</a>, consultoria especializada em tecnologia e desenvolvimento de sistemas, é a única empresa brasileira a figurar entre os campeões da Competição de Talento e Inovação das Américas (TIC Américas). A empresa foi premiada na categoria e-business com sua aplicação em IPTV e Comunicação Corporativa. A cerimônia de entrega do prêmio realizado pela OEA (Organização dos Estados Americanos) e pelo YABT (Young Americas Business Trust), ocorreu no Panamá no dia 1o de junho. \r\n', '\r\n<p><img style="margin: 6px; float: left;" alt="storino" src="images/stories/storino.jpg" height="191" width="320" />Liderada por Douglas Pombo e sua equipe Luiz Storino Filho, Márcio Wu e Alex Duarte, a Edge IT mereceu o prêmio pela inovação que caracteriza o seu produto EdgeContents, solução de RMAM (Rich Media Asset Management).</p>\r\n<p>"O EdgeContents permite que o cliente gerencie seu próprio conteúdo de forma ágil, simples e integrada", afirma Douglas. O produto possibilita a publicação multi-idiomas, inclusive os orientais. Tem workflow flexível que facilita a inclusão, distribuição e auditoria do conteúdo, criando uma plataforma robusta.</p>\r\n<p>A ferramenta permite também a veiculação de áudio e vídeo e se adequa a qualquer tipo de design, sendo que a apresentação do conteúdo fica desvinculada da plataforma. "Isso significa que com uma única inclusão, seu conteúdo estará disponível para ser acessado via Internet ou celular, ou mesmo através de outros dispositivos, como handhelds e televisores", explica.</p>', 1, 6, '2007-07-16 19:46:07', 176, '', '0000-00-00 00:00:00', 176, 0, '0000-00-00 00:00:00', '2010-05-08 19:46:07', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_section":"","link_section":"","show_category":"","link_category":"","show_vote":"","show_author":"","show_create_date":"","show_modify_date":"","show_pdf_icon":"","show_print_icon":"","show_email_icon":"","language":"","keyref":"","readmore":""}', 1, 10, '', '', 1, 403, '{"robots":"","author":""}', 0, '*', ''),
(27, 70, 'Tulio Severo Jr representou o YABT Brasil  no RIAL 2008 Seminário Americano Sobre Empregabilidade Juvenil no Rio de Janeiro', 'tulio-severo-jr-representou-o-yabt-brasil-no-rial-2008-seminario-americano-sobre-empregabilidade-juvenil-no-rio-de-janeiro', '<p><img alt="CARLOS-LUPI_-MINISTRO-TRABALHO" src="images/stories/CARLOS-LUPI_-MINISTRO-TRABALHO.jpg" height="150" width="200" /><br /><strong>Ministro Carlos Lupi</strong></p>\r\n<p><strong>{phocadownload view=file|id=27|target=s}</strong></p>\r\n<p><strong>{phocadownload view=file|id=28|target=s}<br /></strong></p>', '', 1, 6, '2008-01-01 19:48:51', 176, '', '2010-05-08 19:53:33', 176, 0, '0000-00-00 00:00:00', '2010-05-08 19:48:51', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_section":"","link_section":"","show_category":"","link_category":"","show_vote":"","show_author":"","show_create_date":"","show_modify_date":"","show_pdf_icon":"","show_print_icon":"","show_email_icon":"","language":"","keyref":"","readmore":""}', 2, 8, '', '', 1, 554, '{"robots":"","author":""}', 0, '*', ''),
(28, 71, 'CONAJE tem novo presidente 2011', 'conaje-tem-novo-presidente', 'As entidades estaduais representadas pela Confederação Nacional de Jovens Empresários elegeu o empresário goiano Marduk Duarte para suceder Eduardo Machado para presidente &nbsp;no biênio 2011 -2013, Rodrigo Bitar, empresário do Ceará, assumira Diretoria com grandes desafios na busca de recursos e patrocínios para garantir uma gestão de muitas atividades e novidades . São muitos os desafios, principalmente num momento de formação lideranças jovens pro- ativas em todo país, como os eventos Lider Sul, Lider Norte e Sudeste que a Conaje vinha realizando na ultima gestão em parceria com o Instituto Millenium do RJ. Acontece no próximo dia 5 de Maio, na CNI em Brasilia a posse, aonde são esperados o prestígio de diversos Ministros, Deputados e Senadores, bem com da Presidente Dilma.&nbsp;', '', 1, 6, '2011-04-17 03:00:00', 176, '', '2011-04-17 04:13:45', 176, 0, '0000-00-00 00:00:00', '2011-04-17 03:00:00', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_section":"","link_section":"","show_category":"","link_category":"","show_vote":"","show_author":"","show_create_date":"","show_modify_date":"","show_pdf_icon":"","show_print_icon":"","show_email_icon":"","language":"","keyref":"","readmore":""}', 4, 7, '', '', 1, 742, '{"robots":"","author":""}', 0, '*', ''),
(29, 72, 'Fórum Novos Lideres 2009', 'forum-novos-lideres-2009', '<p><img style="margin: 6px; float: left;" alt="formum_nova_lideranca" src="images/stories/formum_nova_lideranca.jpg" height="214" width="180" />Aconteceu em Porto de Galinhas, PE,  de 14 a 17 de maio, o encontro organizado por André Skaff com propósito de apresentar, discutir e planejar propostas consistentes para o desenvolvimento sustentavel do país no debate de temas como Educação, Infraestrutura, Reforma Tributária, Politica e Meio Ambiente. No evento cerca de 200 lideranças jovens representantes de todas as regiões e segmentos do país foram colocados em contato com as principais lideranças empresariais e politicas do Brasil a fim de se envolverem para assumirem a responsabilidade por um Brasil melhor. Vide mais informaçoes no site <a target="_blank" href="http://www.forumnovoslideres.com.br">www.forumnovoslideres.com.br</a></p>\r\n<p> </p>', '', 1, 6, '2009-05-18 19:55:04', 176, '', '0000-00-00 00:00:00', 176, 0, '0000-00-00 00:00:00', '2010-05-08 19:55:04', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_section":"","link_section":"","show_category":"","link_category":"","show_vote":"","show_author":"","show_create_date":"","show_modify_date":"","show_pdf_icon":"","show_print_icon":"","show_email_icon":"","language":"","keyref":"","readmore":""}', 1, 6, '', '', 1, 781, '{"robots":"","author":""}', 0, '*', ''),
(30, 73, 'Conselheiro do YABT Brasil se reune com diretoria do YABT USA', 'conselheiro-do-yabt-brasil-se-reune-com-diretoria-do-yabt-usa', '<img style="margin: 6px; float: left;" alt="encontro_onu_tulio_gde" src="images/stories/encontro_onu_tulio_gde.jpg" height="300" width="400" />A reunião aconteceu em Nova York nos dias 15 e 16 de Janeiro, com a presença dos Srs. Roy Thomasson e Luis Viguria do YABT Washington DC e Antonio Tulio L. Severo Jr do YABT Brasil, foram abordados diversos temas importantes dentre eles Sr. Tulio Severo Jr apresentou o plano de reestruturação da entidade sediada em Salvador/BA, com a retomada dos Laboratórios Empresariais este ano. Tulio Severo Jr foi convidado ainda, pelo Sr. Roy Thomasson e Luis Viguria a participar de reuniões na O.N.U com as áreas da UN Programe on Youth, conhecendo os 15 programas prioritários para a America Latina. Em outro encontro na  O.N.U. foi realizado contato com a área de relacionamento com o setor privado, e conhecimento sobre a realização do evento anual de reconhecimento de projetos e iniciativas de empreendedores, um deles do Brasil o empreendedor social Rodrigo Baggio com seu programa CDI-Comite para Democratização da Informática (<a target="_blank" href="http://www.cdi.org.br">www.cdi.org.br </a>).', '', 1, 6, '2009-01-17 19:57:15', 176, '', '0000-00-00 00:00:00', 176, 0, '0000-00-00 00:00:00', '2010-05-08 19:57:15', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_section":"","link_section":"","show_category":"","link_category":"","show_vote":"","show_author":"","show_create_date":"","show_modify_date":"","show_pdf_icon":"","show_print_icon":"","show_email_icon":"","language":"","keyref":"","readmore":""}', 1, 5, '', '', 1, 681, '{"robots":"","author":""}', 0, '*', ''),
(31, 74, 'Jovens recebem capacitação em empreendedorismo em Salvador - TV Aratu Online', 'jovens-recebem-capacitacao-em-empreendedorismo-em-salvador-tv-aratu-online', 'Entre os dias 20 e 24 de julho, acontece em Salvador o 1º Laboratório Empresarial. O curso é organizado pelo Young America Business Trust Brasil (YABT) e será realizado no AVANTE Ondina.<br />De acordo com Marcelo Cruvinel, um dos empresários voluntários que trabalham na organização das aulas, o objetivo é alimentar nos jovens em situação de vulnerabilidade o interesse pelo empreendedorismo. "A idéia nesse primeiro curso é trabalhar com pessoas que já tenham alguma afinidade com a área. Por isso, fizemos entrevistas com os inscritos e selecionamos aqueles que já trabalhavam de maneira independente ou tinham alguma ligação com o mundo dos negócios", afirmou.<br />No total, 25 jovens devem participar do curso. Eles vão receber material didático e noções gerais sobre administração, com destaque para disciplinas como marketing, finanças e contabilidade. "Aqui vai ser o começo. A gente vai passar as informações mais gerais, para despertar o interesse deles e fazer com que possam buscar mais conhecimento depois", completou o voluntário.<br />As atividades ocorrerão sempre das 8h00 às 12h30, na rua Baependi, nº  177, em frente a Associação Bahiana de Medicina, no bairro de Ondina.', '', -2, 6, '2009-07-08 20:00:39', 176, '', '0000-00-00 00:00:00', 176, 0, '0000-00-00 00:00:00', '2010-05-08 20:00:39', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_section":"","link_section":"","show_category":"","link_category":"","show_vote":"","show_author":"","show_create_date":"","show_modify_date":"","show_pdf_icon":"","show_print_icon":"","show_email_icon":"","language":"","keyref":"","readmore":""}', 1, 0, '', '', 1, 0, '{"robots":"","author":""}', 0, '*', ''),
(32, 75, 'Programa internacional capacita jovens   - Diário Oficial Municipio de Salvador', 'programa-internacional-capacita-jovens-diario-oficial-municipio-de-salvador', 'A Prefeitura Municipal de Salvador, através da Assessoria de Relações Internacionais (ARI), está cooperando no processo de reinstalação do escritório municipal de Jovens Empresários das Américas (YABT Brasil), uma organização internacional patrocinada pela Organização dos Estados Americanos - OEA.\r\n<p>As capacitações acontecerão na sede da AVANTE, no bairro de Ondina, e os interessados poderão fazer suas inscrições pelo site <a href="http://www.ybiz.org.br/">http://www.ybiz.org.br/</a> ou pelo e- mail: <a href="mailto:contato@ybiz.org.br.">contato@ybiz.org.br.</a></p>', '', -2, 6, '2009-07-15 20:02:32', 176, '', '0000-00-00 00:00:00', 176, 0, '0000-00-00 00:00:00', '2010-05-08 20:02:32', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_section":"","link_section":"","show_category":"","link_category":"","show_vote":"","show_author":"","show_create_date":"","show_modify_date":"","show_pdf_icon":"","show_print_icon":"","show_email_icon":"","language":"","keyref":"","readmore":""}', 1, 0, '', '', 1, 0, '{"robots":"","author":""}', 0, '*', ''),
(33, 76, 'VIII Fórum da Mulher Contabilista da Bahia', 'viii-forum-da-mulher-contabilista-da-bahia', 'Realizado no Fiesta Convention Center de Salvador/BA no dia 03/12/2009.<br />O YABT esteve representado por seu fundador Antonio Tulio Severo Jr, que palestrou a convite do Conselho da Mulher Contabilista conjuntamente com a Tributarista Marta Arakaki do Rio de Janeiro. Foi apresentado o relatório das atividades dos Laboratórios Empresariais que tiveram apoio de algumas das conselheiras da entidade, as Professoras  Joceli', '', 1, 6, '2009-12-03 20:03:41', 176, '', '0000-00-00 00:00:00', 176, 0, '0000-00-00 00:00:00', '2010-05-08 20:03:41', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_section":"","link_section":"","show_category":"","link_category":"","show_vote":"","show_author":"","show_create_date":"","show_modify_date":"","show_pdf_icon":"","show_print_icon":"","show_email_icon":"","language":"","keyref":"","readmore":""}', 1, 4, '', '', 1, 747, '{"robots":"","author":""}', 0, '*', '');
INSERT INTO `irqdj_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(34, 77, 'Participe do YABT Brasil', 'participe-do-yabt-brasil', '<p><img src="images/stories/participe.jpg" alt="participe" width="500" height="206" /></p>\r\n<p>Existem diversas formas de participar da rede do YABT, veja em qual você se encaixa!</p>\r\n<ul>\r\n<li><strong>Jovens Empreendedores</strong>: Programa Laboratórios Empresariais, Conexões Empreendedoras, produção de conhecimento científico, participação na rede e nas Plataformas Tecnológicas são as formas de fazer parte da organização.</li>\r\n<li><strong>ONGs</strong>: Através de parcerias para a capacitação de jovens de baixa renda e produção científica para o desenvolvimento de jovens.</li>\r\n<li><strong>Empresas Privadas</strong>: Consultoria, Voluntariado e patrocínio de ações do YABT, desenvolvimento de programas de responsabilidade social.</li>\r\n<li><strong>Profissionais</strong>: Consultoria, Voluntariado e tornando-se mentor ou Voluntário dos Laboratório Empresariais.</li>\r\n<li><strong>Setor Público</strong>: Desenvolvimento de parcerias para programas de desenvolvimento do empreendedorismo, capacitação de jovens de baixa renda, desenvolvimento de comunidades carentes e desenvolvimento tecnológico.</li>\r\n</ul>\r\n<p> </p>\r\n<p><strong>FORMAS DE CONTRIBUIÇÃO</strong></p>\r\n<ul>\r\n<li>Patrocínio de projetos específicos e eventos</li>\r\n<li>Equipamentos e acessórios</li>\r\n<li>Tecnologia e serviços relacionados</li>\r\n<li>Serviços diversos</li>\r\n<li>Estrutura física para treinamentos</li>\r\n<li>Informações e conhecimento sobre empreendedorismo e juventude</li>\r\n<li>Dedicação de tempo para atividades específicas e treinamento</li>\r\n<li>Mídia</li>\r\n<li>Mantenedor Conselheiro</li>\r\n</ul>\r\n<p> </p>\r\n<p><strong>BENEFÍCIOS DE PATROCINAR ATIVIDADES DO YABT</strong></p>\r\n<ul>\r\n<li><strong>Responsabilidade Social Corporativa</strong>: Contribua com o desenvolvimento do Brasil e de sua Juventude, associando a sua marca a uma Organização da Sociedade Civil de Interesse Público.</li>\r\n<li><strong>Marca</strong>: Fortalecimento da marca da sua organização para um público seleto e associação da sua organização a outras altamente reconhecidas no meio acadêmico, governamental e empresarial;</li>\r\n<li><strong>Visibilidade</strong>: Exposição da marca da sua organização nos materiais promocionais do YABT, website e eventos nacionais e internacionais;</li>\r\n<li><strong>Portfólio</strong>: Aumente a capacidade de mind share dos seus produtos/serviços através da apresentação dos mesmos aos participantes da rede do YABT;</li>\r\n<li><strong>Rede de Relacionamento</strong>: Construa relacionamentos e estreite laços com Jovens Empreendedores e parceiros do YABT em todas as Américas e Caribe;</li>\r\n<li><strong>Oportunidades de negócio</strong>: Acesso a mercados emergentes por todo o globo e participação em missões comerciais organizadas pelo YABT;</li>\r\n<li><strong>Informações Estratégicas</strong>: Acesso à uma ampla gama de informações sobre mercados globais, diplomacia, organismos internacionais, empreendedorismo, missões comerciais, juventude, pesquisas, dentre outras.</li>\r\n<li><strong>Aproximação Internacional</strong>: Auxílio e "abertura de portas" em organizações internacionais mundiais e nos 34 países membros da Organização dos Estados Americanos.</li>\r\n</ul>\r\n<p> </p>\r\n<p>Caso tenha interesse em contribuir e deseje maiores informações, entre em contato com o YABT Brasil pelo telefone +55 (21) 8225-9927 ou pelo e-mail <a href="mailto:contato@ybiz.org.br.">contato@ybiz.org.br.</a></p>', '', 1, 20, '2010-05-31 03:00:00', 176, '', '2013-07-24 11:59:57', 176, 0, '0000-00-00 00:00:00', '2010-05-31 03:00:00', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 3, '', '', 1, 911, '{"robots":"","author":"","rights":"","xreference":"","tags":null}', 0, '*', ''),
(35, 78, 'Quatro áreas de atuação - A base do trabalho do YABT Brasil', 'quatro-areas-de-atuacao-a-base-do-trabalho-do-yabt-brasil', '<ul>\r\n<li>Treinamento</li>\r\n<li>Redes de Liderança</li>\r\n<li>Conhecimento</li>\r\n<li>Tecnologia</li>\r\n</ul>\r\n<p> </p>\r\n<p>Veja a seguir o portifólio completo do YABT Brasil:</p>\r\n<p> </p>\r\n<h2><strong>Treinamento</strong></h2>\r\n<p><strong>Laboratórios Empresariais</strong>: Um programa prático em empreendedorismo, no qual o participante vivencia diversas etapas da criação e gestão de um pequeno negócio.</p>\r\n<p>O programa Laboratórios Empresariais é um projeto pioneiro na área do desenvolvimento do empreendedorismo, atuando em parceria entre ambos setores público e privado. O principal objetivo deste projeto, além de motivar os empreendedores e capacitá-los, é o de promover o desenvolvimento econômico, social e gerar empregos, proporcionando aos participantes as ferramentas e habilidades necessárias que os permitam cultivar o empreendedorismo.</p>\r\n<p>O Laboratórios Empresariais Avançado acrescenta ao treinamento básico, o desenvolvimento de habilidades interpessoais motivando e preparando o participante para interagir da melhor forma com situações reais. <a href="index.php?option=com_content&amp;view=article&amp;id=4:business-labs&amp;catid=2&amp;Itemid=7">Clique aqui </a>e saiba mais sobre o programa.</p>\r\n<p><strong>Leadership Labs - Treinamentos</strong>: Treinamentos abertos e "in-company" desenhados para maximizar o desempenho de profissionais que necessitam obter grandes resultados em todas as cadeias e seguimentos empresariais. Principais soluções: Habilidades Interpessoais, Comunicação Verbal para Executivos, Habilidades de Negociação e Liderança Gerencial. <a href="index.php?option=com_content&amp;view=category&amp;id=7:treinamentos-yabt-brasil&amp;layout=blog&amp;Itemid=10">Clique aqui </a>e saiba mais sobre o programa.</p>\r\n<p><strong>Educação à distância</strong>: Para abarcar um maior número de participantes no território Nacional, o YABT realiza parcerias com diversas instituições para proporcionar o acesso a cursos online gratuitos focados no empreendedorismo e gestão de negócios. Algumas instituições parceiras: Massachusets Institute of Technology (MIT), Instituto Banco Mundial, entre outros que se encontram disponíveis no nosso site internacional <a href="http://www.myybiz.net/educationcenter/educationhome/">http://www.myybiz.net/educationcenter/educationhome/</a></p>\r\n<p> </p>\r\n<h2><strong>Redes de Liderança</strong></h2>\r\n<p>O YABT trabalha com uma vasta gama de organizações e governos para aumentar sua rede e a quantidade de recursos disponíveis para os jovens empreendedores e os projetos do YABT Isto inclui fundos de micro-crédito, incubadoras, plataformas tecnológicas, instituições de fomento ao empreendedorismo, organizações internacionais, instituições de ensino e organizações do terceiro setor.</p>\r\n<p><strong>Rede Interamericana de Jovens Empresários</strong>: Através de uma rede online, o YABT trabalha no sentido de agregar jovens empresários de todas as Américas como uma forma de estimular a geração de novos negócios, projetos, intercâmbio de experiências e propiciar capilaridade às ações regionais da Organização.</p>\r\n<p><strong>Mediação de recursos</strong>: O YABT faz a mediação entre jovens empreendedores e instituições que tenham interesse em financiar novos projetos.</p>\r\n<p><strong>Plataforma tecnológica www.myybiz.net</strong>: Funciona como uma rede de comunicação internacional e um centro de recursos eletrônicos para jovens empreendedores, que possibilita um relacionamento interativo e motiva a troca de experiências e informações. Esta plataforma visa quebrar barreiras espaciais e culturais aproximando jovens líderes das Américas. <a target="_blank" href="http://www.myybiz.net/">Clique aqui</a> para acessar a plataforma.</p>\r\n<p><strong>Eventos</strong>:  O YABT realiza eventos que reúnem  jovens empreendedores e profissionais experientes para troca de informações e difusão de casos de sucesso. Os eventos também possibilitam o networking e viabilizam ações comerciais.</p>\r\n<p><strong>Videoconferências</strong>: O YABT estimula e promove a participação dos jovens em discussões periódicas que englobam temas sobre empreendedorismo e desenvolvimento social em parceria com a Rede Global de Aprendizado e Desenvolvimento (GDLN) do Banco Mundial. &lt;clique aqui&gt; e saiba mais sobre o programa (em inglês).</p>\r\n<p> </p>\r\n<h2><strong>Conhecimento</strong></h2>\r\n<p>Utilizando a sua experiência internacional de negócios, o YABT oferece serviços de assessoria técnica àqueles que desejam iniciar um empreendimento, reestruturá-lo ou implantar novas ações com intuito de colaborar com o desenvolvimento da economia local e promover a continuidade e expansão dos negócios.</p>\r\n<p><strong>Assessoria técnica ao jovem Empreendedor</strong>: Auxílio aos jovens empreendedores na criação e no desenvolvimento de negócios. O YABT oferece apoio gratuito aos jovens empreendedores participantes do Programa Laboratórios Empresariais Avançado, atuando como um catalisador de negócios e identificando as diversas ações que podem beneficiar estes jovens líderes.</p>\r\n<p><strong>Produção de Conhecimento em Empreendedorismo</strong>: O YABT desenvolve pesquisas e artigos sobre diversos temas em empreendedorismo por ser uma importante ferramenta para a disseminação de informações e desenvolvimento da capacidade criativa e crítica da juventude.</p>\r\n<p> </p>\r\n<h2><strong>Tecnologia</strong></h2>\r\n<p><strong>TIC AMERICAS</strong>: Competição Internacional de Planos de Negócio entre jovens, cujo foco principal é o fomento ao empreendedorismo inovador, a identificação de novos talentos e o desenvolvimento tecnológico. <a target="_blank" href="http://www.ticamericas.com/">Clique aqui</a> e saiba mais sobre o programa.</p>\r\n<p><strong>Infobiz</strong>: Sistema internacional online que contém informações gerais de negócios sobre os países das Américas. Oferece informações socio e geo-políticas, legislações e uma gama de dados sobre como fazer negócios em 34 países. <a target="_blank" href="http://ybiz.org/yabt/programs_and_plans/technology/InfoBiz/infobiz_eng.asp">Clique aqui</a> e acesse o sistema (em inglês).</p>\r\n<p><strong>Conexões Empreendedoras</strong>: Um programa de mentoria que une profissionais de comprovada experiência no mercado a jovens empreendedores, estabelecendo uma relação voluntária mentor-pupilo de troca de experiências. O Conexões Empreendedoras permite a transferência de conhecimento entre gerações e o melhor desenvolvimento dos empreendimentos da juventude.</p>\r\n<p><strong>Promoção da Responsabilidade Social Empresarial</strong>: O YABT influencia as políticas públicas através de parcerias, compartilhando idéias e ações. Desta forma, fortalece o incentivo ao investimento social voluntário público e privado.</p>', '', 1, 16, '2010-05-08 22:03:22', 176, '', '2010-05-08 23:22:09', 176, 0, '0000-00-00 00:00:00', '2010-05-08 22:03:22', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_section":"","link_section":"","show_category":"","link_category":"","show_vote":"","show_author":"","show_create_date":"","show_modify_date":"","show_pdf_icon":"","show_print_icon":"","show_email_icon":"","language":"","keyref":"","readmore":""}', 8, 1, '', '', 1, 1089, '{"robots":"","author":""}', 0, '*', ''),
(36, 79, 'Eventos', 'eventos', 'Eventos Empresariais YABT Brasil 2007\r\n<p>Clique nos links abaixo para ter acesso ao prospecto dos eventos.</p>\r\n<ul>\r\n<li><a href="index.php?option=com_content&amp;view=article&amp;id=13:yabt-brasil-realizara-evento-com-secretario-de-industria-e-comercio-do-estado-da-bahia&amp;catid=6&amp;Itemid=12">Almoço de Negócios</a></li>\r\n<li><a href="index.php?option=com_content&amp;view=article&amp;id=16:salvador-sediou-um-sofisticado-evento-de-fomento-ao-networking-feminino-no-dia-internacional-da-mulher&amp;catid=6&amp;Itemid=12">1o Chá para Mulheres Empreendedoras - Salvador, BA</a></li>\r\n<li><a href="index.php?option=com_content&amp;view=article&amp;id=37:yabt-brasil-sediou-debate-internacional-sobre-anti-corrupcao&amp;catid=6&amp;Itemid=12">Workshop Sobre Práticas Socialmente Responsáveis nos Negócios</a></li>\r\n</ul>', '', 0, 7, '2010-05-08 22:54:18', 176, '', '2010-05-08 23:15:18', 176, 0, '0000-00-00 00:00:00', '2010-05-08 22:54:18', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_section":"","link_section":"","show_category":"","link_category":"","show_vote":"","show_author":"","show_create_date":"","show_modify_date":"","show_pdf_icon":"","show_print_icon":"","show_email_icon":"","language":"","keyref":"","readmore":""}', 3, 2, '', '', 1, 130, '{"robots":"","author":""}', 0, '*', ''),
(37, 80, 'YABT Brasil sediou debate internacional sobre anti-corrupção', 'yabt-brasil-sediou-debate-internacional-sobre-anti-corrupcao', '<p><img style="margin: 6px; float: left;" alt="workshopcsr" src="images/stories/workshopcsr.jpg" height="137" width="208" />O Brasil vem se tornando uma nação mais corrupta a cada ano. Pelo menos, é o que apontam os estudos de organizações internacionais. Em 2005, a posição brasileira no ranking mundial de corrupção era 62º. Em 2006, foi para 70ª posição, empatado com China, Gana, Senegal, Índia, Arábia Saudita e Egito. Quanto pior a classificação de um país na lista, maior é seu índice de corrupção segundo os padrões mundiais.</p>\r\n<p>\r\n', '\r\nNo âmbito global, tais estudos revelam uma situação alarmante relacionada à falta de transparência e boas práticas de governança. Dados do Instituto Banco Mundial, por sua vez, revelam que aproximadamente 01 (hum) trilhão de dólares são gastos no mundo todo com subornos e outras formas de propina.  Esse valor corresponde à quase o dobro do PIB do continente africano. O macedônio Djordjija Petkoski, representante desse Instituto, esteve Salvador para o I Workshop sobre práticas socialmente responsáveis nos negócios, que aconteceu no dia 9 de dezembro de 2006. Com o tema "Soluções dos Negócios para combater a Corrupção e Melhorar a Transparência: Iniciativas Coletivas e Corporativas", o workshop vai apresentou e debateu exemplos de instituições que implementaram projetos para combater a corrupção corporativa. Além do próprio Banco Mundial, o encontro teve o apoio da InWent – Programa de Capacitação de Jovens da Alemanha – e do Programa para Desenvolvimento da Juventude do Banco Interamericano de Desenvolvimento. A realização é foi do YABT.</p>\r\n<p>PARCERIA - O YABT – Jovens Empresários das Américas, uma entidade filiada à OEA (Organização dos Estados Americanos) – tem sua sede brasileira em solo baiano. A sua ligação com o Banco Mundial não se restringe somente ao workshop. A entidade desenvolveu, junto com o Banco e a GDLN – Rede Global de Aprendizado para o Desenvolvimento (organismo vinculado ao Banco Mundial), uma ferramenta para Internet em português para capacitar jovens que queiram iniciar empreendimentos socialmente responsáveis. O curso é on line e tem curta duração. "É a primeira vez que são oferecidos cursos deste tipo em português e isso mostra a prioridade que o Brasil está passando a ter para as organizações internacionais", argumenta Félix Muniz, gerente de Novos Negócios da YABT.</p>', 1, 6, '2006-05-08 23:01:22', 176, '', '0000-00-00 00:00:00', 176, 0, '0000-00-00 00:00:00', '2010-05-08 23:01:22', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_section":"","link_section":"","show_category":"","link_category":"","show_vote":"","show_author":"","show_create_date":"","show_modify_date":"","show_pdf_icon":"","show_print_icon":"","show_email_icon":"","language":"","keyref":"","readmore":""}', 1, 3, '', '', 1, 328, '{"robots":"","author":""}', 0, '*', ''),
(38, 81, 'Laboratórios Técnico-Empresariais', '-laboratorios-tecnico-empresariais', 'Treinamentos voltados para estudantes e pequenos empresários, realizados num curto espaço de tempo (8hs) focado em fornecer técnicas específicas de negócios.\r\n<p>Clique nos links para ter acesso ao prospecto dos cursos.</p>\r\n<ul>\r\n<li>{phocadownload view=file|id=39|target=s}</li>\r\n<li>{phocadownload view=file|id=40|target=s}</li>\r\n<li>Plano de Negócios</li>\r\n<li>Técnicas de Vendas</li>\r\n<li>Comunicação Empresarial</li>\r\n</ul>', '', 0, 7, '2010-05-08 23:06:13', 176, '', '2010-05-08 23:13:05', 176, 0, '0000-00-00 00:00:00', '2010-05-08 23:06:13', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_section":"","link_section":"","show_category":"","link_category":"","show_vote":"","show_author":"","show_create_date":"","show_modify_date":"","show_pdf_icon":"","show_print_icon":"","show_email_icon":"","language":"","keyref":"","readmore":""}', 3, 5, '', '', 1, 0, '{"robots":"","author":""}', 0, '*', ''),
(39, 82, 'Treinamentos Online Gratuitos (em inglês)', 'treinamentos-online-gratuitos-em-ingles', 'Treinamentos on-line em diversas áreas do conhecimento empresarial, diretamente do site internacional do Young Americas Business Trust.\r\n<p><a target="_blank" href="http://www.myybiz.net/educationcenter/educationhome/">Clique aqui para acessar</a></p>', '', 0, 7, '2010-05-08 23:11:03', 176, '', '0000-00-00 00:00:00', 176, 0, '0000-00-00 00:00:00', '2010-05-08 23:11:03', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_section":"","link_section":"","show_category":"","link_category":"","show_vote":"","show_author":"","show_create_date":"","show_modify_date":"","show_pdf_icon":"","show_print_icon":"","show_email_icon":"","language":"","keyref":"","readmore":""}', 1, 3, '', '', 1, 145, '{"robots":"","author":""}', 0, '*', ''),
(40, 83, 'Cases de sucesso de jovens empresários', 'cases-de-sucesso-de-jovens-empresarios', 'Espaço reservado à exibição de cases de sucesso de jovens empreenderores por todo o Brasil.\r\n<p>Atenção: Página em construção, em breve, estudos de caso de Empreendedores YABT.</p>\r\n<ul>\r\n<li><a target="_blank" href="http://www.edgeit.com.br/">Edge It</a></li>\r\n<li><a target="_blank" href="http://www.esferaquatro.com.br/">Esferaquatro Consultoria</a></li>\r\n<li>Projeto Focco Rio Vermelho</li>\r\n<li>Bella Morena Bijouterias</li>\r\n<li>Bagunestética</li>\r\n<li>Sabor e Saúde</li>\r\n<li>Cheiro Bom</li>\r\n<li>Engraxate não, Empresário!! - Zaqueu, Brasília, DF <br />{phocadownload view=file|id=41|text=Parte 1|target=s}<br />{phocadownload view=file|id=42|text=Parte 2|target=s}</li>\r\n</ul>', '', 1, 4, '2010-05-11 00:27:21', 176, '', '0000-00-00 00:00:00', 176, 0, '0000-00-00 00:00:00', '2010-05-11 00:27:21', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_section":"","link_section":"","show_category":"","link_category":"","show_vote":"","show_author":"","show_create_date":"","show_modify_date":"","show_pdf_icon":"","show_print_icon":"","show_email_icon":"","language":"","keyref":"","readmore":""}', 1, 1, '', '', 1, 1130, '{"robots":"","author":""}', 0, '*', ''),
(41, 84, 'Parceiros', 'parceiros', '<p>Para atingir seus objetivos e promover ações em todos esses segmentos, o YABT conta com uma extensa rede de parceiros espalhados por várias regiões do Brasil e do mundo. São organizações internacionais, governos, universidades, associações, empresas e entidades de diversos ramos de atuação. Estes parceiros contribuem para a concretização dos nossos programas, sempre tomando como base sua experiência e especialidade. É através dessas parcerias entre os setores público e privado que o YABT tem mobilizado uma rede de jovens empresários, estabelecendo uma estrutura para a expansão de seus programas.</p>\r\n<p>O YABT Brasil construiu uma sólida estrutura organizacional para apoiar os incentivos nacionais e dar prosseguimento à criação de programas inovadores para o desenvolvimento do Brasil.</p>\r\n<p>Seja também um parceiro do YABT Brasil! Entre em contato conosco pelo e-mail: <a href="mailto:contato@ybiz.org.br.">contato@ybiz.org.br.</a></p>\r\n<p>Estas organizações, dentre muitas outras, já são parceiras do YABT. A sua organização tembém pode fazer parte desta rede!</p>\r\n<p> </p>\r\n<p><img src="images/stories/parceiros/acrj.jpg" alt="acrj" width="97" height="59" style="border-width: 0px; margin: 6px; float: left;" /><img src="images/stories/parceiros/aiesec.jpg" alt="aiesec" width="123" height="24" style="border-width: 0px; margin: 6px; float: left;" /><img src="images/stories/parceiros/bahia.gif" alt="bahia" width="104" height="67" style="border-width: 0px; margin: 6px; float: left;" /><img src="images/stories/parceiros/bahia_inovacao.gif" alt="bahia_inovacao" width="84" height="60" style="border-width: 0px; margin: 6px; float: left;" /><img src="images/stories/parceiros/bidjuventude.jpg" alt="bidjuventude" width="102" height="53" style="border-width: 0px; margin: 6px; float: left;" /></p>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>\r\n<p><img src="images/stories/parceiros/brasiljr.jpg" alt="brasiljr" width="90" height="57" style="border-width: 0px; margin: 6px; float: left;" /><img src="images/stories/parceiros/camarasite.jpg" alt="camarasite" width="147" height="43" style="border-width: 0px; margin: 6px; float: left;" /><img src="images/stories/parceiros/conaje.jpg" alt="conaje" width="72" height="72" style="border-width: 0px; margin: 6px; float: left;" /><img src="images/stories/parceiros/enterjovemsite.jpg" alt="enterjovemsite" width="144" height="35" style="border-width: 0px; margin: 6px; float: left;" /></p>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>\r\n<p><img src="images/stories/parceiros/fapesb.jpg" alt="fapesb" width="107" height="58" style="border-width: 0px; margin: 6px; float: left;" /><img src="images/stories/parceiros/fejepe.jpg" alt="fejepe" width="111" height="40" style="border-width: 0px; margin: 6px; float: left;" /><img src="images/stories/parceiros/fieb.jpg" alt="fieb" width="99" height="56" style="border-width: 0px; margin: 6px; float: left;" /><img src="images/stories/parceiros/fte.jpg" alt="fte" width="114" height="35" style="border-width: 0px; margin: 6px; float: left;" /><img src="images/stories/parceiros/gdln.jpg" alt="gdln" width="58" height="70" style="border-width: 0px; margin: 6px; float: left;" /></p>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>\r\n<p><img src="images/stories/parceiros/icdf.jpg" alt="icdf" width="102" height="58" style="border-width: 0px; margin: 6px; float: left;" /><img src="images/stories/parceiros/logo_infinite.jpg" alt="logo_infinite" width="120" height="49" style="border-width: 0px; margin: 6px; float: left;" /><img src="images/stories/parceiros/microsoft.jpg" alt="microsoft" width="92" height="58" style="border-width: 0px; margin: 6px; float: left;" /><img src="images/stories/parceiros/petrobahia.jpg" alt="petrobahia" width="60" height="54" style="border-width: 0px; margin: 6px; float: left;" /><img src="images/stories/parceiros/rio.jpg" alt="rio" width="119" height="28" style="border-width: 0px; margin: 6px; float: left;" /></p>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>\r\n<p><img src="images/stories/parceiros/salvador.jpg" alt="salvador" width="77" height="52" style="border-width: 0px; margin: 6px; float: left;" /><img src="images/stories/parceiros/seBRAE.jpg" alt="seBRAE" width="100" height="47" style="border-width: 0px; margin: 6px; float: left;" /><img src="images/stories/parceiros/ufba.jpg" alt="ufba" width="57" height="74" style="border-width: 0px; margin: 6px; float: left;" /><img src="images/stories/parceiros/usAIDsite.jpg" alt="usAIDsite" width="142" height="37" style="border-width: 0px; margin: 6px; float: left;" /><img src="images/stories/parceiros/worldbank.jpg" alt="worldbank" width="87" height="60" style="border-width: 0px; margin: 6px; float: left;" /><a href="administrator/index.php" target="_blank"></a></p>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>\r\n<p><a href="administrator/index.php" target="_blank"><img src="images/stories/parceiros/logo_ideal.jpg" alt="logo_ideal" width="140" height="66" style="border-width: 0px; margin: 6px; float: left;" /></a><a href="http://www.datamallmr.com.br/" target="_blank"><img src="images/stories/parceiros/datamall.jpg" alt="datamall" width="137" height="30" style="border-width: 0px; margin: 6px; float: left;" /></a><a href="http://www.acbeubahia.org.br/" target="_blank"><img src="images/stories/parceiros/acbeu.jpg" alt="acbeu" width="112" height="49" style="border-width: 0px; margin: 6px; float: left;" /></a></p>', '', 1, 20, '2010-05-11 00:39:42', 176, '', '2013-07-24 12:01:13', 176, 0, '0000-00-00 00:00:00', '2010-05-11 00:39:42', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 11, 2, '', '', 1, 1066, '{"robots":"","author":"","rights":"","xreference":"","tags":null}', 0, '*', ''),
(42, 85, 'Contato', 'contato', '<div style="text-align: center;"><strong>Contatos - Conselho:</strong></div>\r\n<div style="text-align: center;"> </div>\r\n<div style="text-align: center;"><strong>Antonio Tulio Severo Jr - Presidente do Conselho</strong></div>\r\n<div style="text-align: center;">e-mail: <a href="mailto:tulio@ybiz.org.br">tulio@ybiz.org.br</a></div>\r\n<div style="text-align: center;">Fone: +5521 82259927</div>\r\n<div style="text-align: center;"> </div>\r\n<div style="text-align: center;"><strong>José Geraldo Jacob Neto - Diretor Presidente</strong></div>\r\n<div style="text-align: center;">e-mail: <a href="mailto:presidente@ybiz.org.br?subject=contato conselho YABT Brasil">presidente@ybiz.org.br</a></div>\r\n<div style="text-align: center;">Fone: +5521 99950144</div>\r\n<div style="text-align: center;"> </div>\r\n<div style="text-align: center;"> </div>\r\n<div style="text-align: center;"><strong>Endereço de Correspondência Rio??:</strong></div>\r\n<p style="text-align: center;">Praça Pio X, 55/3o Andar, Centro - Rio de Janeiro - RJ - 20040-020 - Brasil</p>\r\n<p style="text-align: center;"> </p>\r\n<p style="text-align: center;"><strong>Endereço de Correspondência - Salvador / BA :</strong></p>\r\n<p style="text-align: center;">Av. Antonio Carlos Magalhães 2487 Sala 2307 - Salvador/BA - 40280-000<strong><br /></strong></p>\r\n<div style="text-align: center;"> </div>\r\n<div style="text-align: center;"> </div>\r\n<p style="text-align: center;"><strong>Contato Salvador:</strong> Bruno Fontes<br />e-mail: <a href="mailto:contato@ybiz.org.br">assessoria@ybiz.org.br</a><br />Fone: +5571 92710531</p>\r\n<p style="text-align: center;"> </p>\r\n<p style="text-align: center;"><strong>Young Americas Business Trust - USA</strong></p>\r\n<div style="text-align: center;"> </div>\r\n<p style="text-align: center;">Secretaria Geral da Organização dos Estados Americanos</p>\r\n<div style="text-align: center;"> </div>\r\n<p style="text-align: center;">1889 F Street NW #691</p>\r\n<div style="text-align: center;"> </div>\r\n<p style="text-align: center;">Washington DC, USA - 20006</p>\r\n<div style="text-align: center;"> </div>\r\n<p style="text-align: center;">Telefone: +1(202)458-3107</p>\r\n<div style="text-align: center;"> </div>\r\n<p style="text-align: center;">e-mail:<a href="mailto:ybiz@oas.org;tulio@ybiz.org.br">ybiz@oas.org</a></p>', '', 1, 20, '2011-04-17 03:00:00', 176, '', '2013-07-24 12:01:49', 176, 0, '0000-00-00 00:00:00', '2011-04-17 03:00:00', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 5, 1, '', '', 1, 1768, '{"robots":"","author":"","rights":"","xreference":"","tags":null}', 0, '*', ''),
(43, 86, 'VIII Fórum da Mulher Contabilista da Bahia', 'viii-forum-da-mulher-contabilista-da-bahia-sp-370754653', 'Realizado no Fiesta Convention Center de Salvador/BA no dia 03/12/2009.<br />O YABT esteve representado por seu fundador Antonio Tulio Severo Jr, que palestrou a convite do Conselho da Mulher Contabilista conjuntamente com a Tributarista Marta Arakaki do Rio de Janeiro. Foi apresentado o relatório das atividades dos Laboratórios Empresariais que tiveram apoio de algumas das conselheiras da entidade, as Professoras  Joceli', '', -2, 6, '2009-12-03 03:00:00', 176, '', '0000-00-00 00:00:00', 176, 0, '0000-00-00 00:00:00', '2010-05-31 19:46:17', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_section":"","link_section":"","show_category":"","link_category":"","show_vote":"","show_author":"","show_create_date":"","show_modify_date":"","show_pdf_icon":"","show_print_icon":"","show_email_icon":"","language":"","keyref":"","readmore":""}', 1, 0, '', '', 1, 0, '{"robots":"","author":""}', 0, '*', ''),
(44, 87, 'Programa internacional capacita jovens   - Diário Oficial Municipio de Salvador', 'programa-internacional-capacita-jovens-diario-oficial-municipio-de-salvador-sp-1045725821', '<p>A Prefeitura Municipal de Salvador, através da Assessoria de Relações Internacionais (ARI), está cooperando no processo de reinstalação do escritório municipal de Jovens Empresários das Américas (YABT Brasil), uma organização internacional patrocinada pela Organização dos Estados Americanos - OEA.\r\n', '\r\n</p>\r\n<p>A proposta da YABT Brasil é capacitar, totalmente gratuito, jovens para o mundo do empreendedorismo. Para isso, serão ministradas capacitações que acontecerão entre dias20 a 24 de julho, e abordarão temas como Marketing, Planejamento e Contabilidade, conduzidas por empresários, professores e executivos voluntários do YABT O programa tem como objetivo fornecer as ferramentas e fundamentos para as oportunidades que podem ser aproveitadas no desenvolvimento de negócios e empresas de pequeno porte. O conselheiro coordenador do programa, Túlio Severo Jr., salienta que "não é necessária experiência anterior, mas ter um sonho é fundamental".</p>\r\n<p>Para o assessor de Relações Internacionais, Marcelo Rocha, a operação do YABT Brasil em Salvador, além de fomentar o empreendedorismo no Município, poderá contribuir para tornar o tecido empresarial mais competitivo.</p>\r\nAs capacitações acontecerão na sede da AVANTE, no bairro de Ondina, e os interessados poderão fazer suas inscrições pelo site <a href="http://www.ybiz.org.br/">http://www.ybiz.org.br/</a> ou pelo e- mail: <!--  \\n  // --><a href="mailto:contato@ybiz.org.br">contato@ybiz.org.br</a>', 1, 6, '2009-07-15 03:00:00', 176, '', '2010-05-31 19:52:27', 176, 0, '0000-00-00 00:00:00', '2010-05-31 19:48:07', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_section":"","link_section":"","show_category":"","link_category":"","show_vote":"","show_author":"","show_create_date":"","show_modify_date":"","show_pdf_icon":"","show_print_icon":"","show_email_icon":"","language":"","keyref":"","readmore":""}', 4, 1, '', '', 1, 629, '{"robots":"","author":""}', 0, '*', ''),
(45, 88, 'Jovens recebem capacitação em empreendedorismo em Salvador - TV Aratu Online', 'jovens-recebem-capacitacao-em-empreendedorismo-em-salvador-tv-aratu-online-sp-1722441814', '<p>Entre os dias 20 e 24 de julho, acontece em Salvador o 1º Laboratório Empresarial. O curso é organizado pelo Young America Business Trust Brasil (YABT) e será realizado no AVANTE Ondina.</p>\r\n<p>De acordo com Marcelo Cruvinel, um dos empresários voluntários que trabalham na organização das aulas, o objetivo é alimentar nos jovens em situação de vulnerabilidade o interesse pelo empreendedorismo. "A idéia nesse primeiro curso é trabalhar com pessoas que já tenham alguma afinidade com a área. Por isso, fizemos entrevistas com os inscritos e selecionamos aqueles que já trabalhavam de maneira independente ou tinham alguma ligação com o mundo dos negócios", afirmou.\r\n', '\r\n</p>\r\n<p>No total, 25 jovens devem participar do curso. Eles vão receber material didático e noções gerais sobre administração, com destaque para disciplinas como marketing, finanças e contabilidade.</p>\r\n<p>"Aqui vai ser o começo. A gente vai passar as informações mais gerais, para despertar o interesse deles e fazer com que possam buscar mais conhecimento depois", completou o voluntário.</p>\r\n<p>As atividades ocorrerão sempre das 8h00 às 12h30, na rua Baependi, nº  177, em frente a Associação Bahiana de Medicina, no bairro de Ondina.</p>', 1, 6, '2009-07-17 19:53:19', 176, '', '0000-00-00 00:00:00', 176, 0, '0000-00-00 00:00:00', '2010-05-31 19:53:19', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_section":"","link_section":"","show_category":"","link_category":"","show_vote":"","show_author":"","show_create_date":"","show_modify_date":"","show_pdf_icon":"","show_print_icon":"","show_email_icon":"","language":"","keyref":"","readmore":""}', 1, 2, '', '', 1, 805, '{"robots":"","author":""}', 0, '*', ''),
(46, 89, 'JULHO e AGOSTO', 'julho-e-agosto', '<p>Os Laboratórios Empresariais de Julho e Agosto aconteceram em parceria com a ONG AVANTE, sediada no bairro de Ondina em Salvador, onde foi viabilizado o espaço físico adequado para receber 25 alunos das comunidades próximas, dentre elas da comunidade do Calabar através do programa mantido pela entidade com nome de Balcão da Juventude. A comunidade do Calabar representa um desafio importante para a cidade de Salvador no âmbito da construção de um ambiente mais próspero para os jovens. Esse foi portanto nosso desafio para inicio do projeto.</p>\r\n<p><em>Nesse programa contamos com os seguintes apoios:</em></p>\r\n<p><span style="text-decoration: underline;"><strong>Empresas e entidades:</strong></span><br /><br /><strong>ACBEU Bahia</strong> – Sr. José Antonio Lago França.<br /><strong>AJE – Salvador</strong> – Associação de Jovens Empreendedores – Sr.Frederico Machado<br /><strong>AVANTE</strong> – Balcão da Juventude – Sra. Anal Luiza Buratto.<br /><strong>DESENBAHIA</strong> – Ag. de Desenvolvimento da Bahia – Sr.Marcelo Oliveira.<br /><strong>EsferaQuatro Consultoria Ltda</strong> – Sr. Marcelo Cruvinel e Tiago Soeiro<br /><strong>Grupo Sabemi</strong> – Sr. Antonio Tulio Severo Jr<br /><strong>TV Aratu</strong> – Imprensa - Sra . Ana F. Coelho.</p>\r\n<p><span style="text-decoration: underline;"><strong>Voluntários e Advisers:</strong></span></p>\r\n<p><strong>Marília Mendonça </strong>– Coordenadora do programa e monitora dos módulos de Liderança, Comunicação e Recursos Humanos.<br /><strong>Antonio Tulio Severo Jr</strong> – Coordenador geral do programa de Empreendedorismo, monitor para aula de Desbloqueio de Aprendizagem.<br /><strong>Ângelo Costa</strong> – economista e consultor, monitorou a aula de Planejamento Financeiro.<br /><strong>Marcelo Cruvinel e Tiago Soeiro</strong> – apresentaram o módulo de Marketing.<br /><strong>Cecília Emilia</strong> - contadora pelo CRC-BA, professora na Univ. Jorge Amado, apresenta o modulo de Gestão Financeira e Contabilidade.<br /><strong>Marcelo Gentil</strong> – Chefe da Central de Relac. Clientes Desenbahia – módulo de crédito.</p>\r\n<p><span style="text-decoration: underline;"><strong>Empreendedores – cases empresariais:</strong></span><br /><br /><strong>Agenor Ferraz</strong> – case empresarias - sócio da S.O.S da Construção.<br /><strong>Ana Carolina </strong>– case empresarial - Bar e Restaurante BARCELONA Chopps e Tapas, apresentou seu Case empresarial.<br /><strong>Frederico Machado</strong> – case empresarial – CFO MCE Engenharia S.A.<br /><strong>Aelle Oliveira</strong> – case empreendedor – Florus Cosméticos Ltda.</p>\r\n<p>Total de questionários de pré-seleção recebidos: 32 Julho e 35 Agosto<br />Total de alunos inscritos : 26 Julho e 28 em agosto.<br />Total de alunos formados : 21 Julho e 20 em agosto.<br />Total de alunos possuíam um negócio ou iniciou um novo: 7 em Julho e 10 em Agosto.</p>\r\n<p><strong>FOTO das TURMAS</strong></p>\r\n<p><br />JULHO</p>\r\n<p><img src="images/stories/turma_jullho_salvador.jpg" alt="turma_jullho_salvador" width="500" height="220" style="margin: 6px; border-width: 0px;" /></p>\r\n<p>AGOSTO</p>\r\n<p><img src="images/stories/turma_agosto_salvador.jpg" alt="turma_agosto_salvador" width="500" height="220" style="margin: 6px; border-width: 0px;" /></p>', '', 1, 17, '2010-05-31 20:16:05', 176, '', '2013-07-24 11:06:21', 176, 0, '0000-00-00 00:00:00', '2010-05-31 20:16:05', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 1, '', '', 1, 170, '{"robots":"","author":"","rights":"","xreference":"","tags":null}', 0, '*', '');
INSERT INTO `irqdj_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(47, 90, 'SETEMBRO e OUTUBRO', 'setembro-e-outubro', '<p>Os Laboratórios Empresariais de Setembro e Outubro passaram a contar com dois apoios adicionais importantes, a Prefeitura de Salvador através da SETAD – Secretaria de Trabalho e Desenvolvimento e a ONG de microcrédito CEADe – Centro Ecumênico de Desenvolvimento Humano. Com isso recebemos apoio para o fornecimento do material didático e de uma sala de aula climatizada já que com o início do verão a temperatura em Salvador se eleva muito. Com isso a CEADe pode também oferecer aos seus clientes e prospects a possibilidade de participarem gratuitamente, e passou também a cuidar do módulo de crédito, apresentado as formas de acesso aos financiamentos para micro-empreendimentos e autônomos. A SETAD, alem de colaborar com o material didático, pode contribuir também com a captação de alunos através do cadastro de alunos em seus centros de treinamento. Dessa forma tivemos um "overbook" de inscritos nos Laboratórios desse período e foi necessário realizar uma análise criteriosa dos questionários de pré-seleção e perfil empreendedor.</p>\r\n<p> </p>\r\n<p><em>Nesse programa contamos com os seguintes apoios:</em></p>\r\n<p><br /><span style="text-decoration: underline;"><strong>Empresas e entidades:</strong></span><br /><br /><strong>ACBEU Bahia</strong> – Sr. José Antonio Lago França<br /><strong>AJE – Salvador</strong> – Associação de Jovens Empreendedores – Sr.Thiago Gonzaga<br /><strong>AVANTE</strong> – Balcão da Juventude – Sra. Ana Luiza Buratto<br /><strong>CEADe</strong> – Centro Ecum. de Apoio do Desenv. – Sr.Antonio Carlos Santos.<br /><strong>Grupo Sabemi</strong> – Sr. Antonio Tulio Severo Jr<br /><strong>SETAD</strong> – Prefeitura de Salvador – Sr. Mauricio Dias e Sra. Iara Icó.</p>\r\n<p><span style="text-decoration: underline;"><strong>Voluntários e Advisers :</strong></span><br /><br /><strong>Gustavo Espinheira </strong>– Administrador pela UFBA, Coordenador voluntário do YABT, monitorou os módulos de Liderança, Comunicação e Recursos Humanos.<br /><strong>Guilherme Sento-Sé</strong> – Administrador pela UCSAL, Assessor Executivo do YABT BR, monitor do módulo de Introdução : Criação e Gestão de Empresas.<br /><strong>Antonio Tulio Severo Jr</strong> – Coordenador geral dos Laboratórios e do YABT Br, monitor para aula de Desbloqueio de Aprendizagem e Liderança.<br /><strong>Gabriel Ferrari</strong> – Administrador pela UFBA, apresentou o módulo de Marketing de setembro.<br /><strong>João Magalhães</strong> – professor da UCSAL, apresentou o módulo de Marketing em outubro.<br /><strong>Cecília Emilia</strong> - Contadora pelo CRC-BA, professora da Univ. Jorge Amado, apresentou o modulo de Gestão Financeira.<br /><strong>Joseli Passos</strong> – professora de contabilidade na Univ. Jorge Amado, apresentou o módulo de Contabiliadade.<br /><strong>Adelmo Bittencourt Pereira</strong> – Economista pela Ucsal, Gerente do CEADe – apresentou o módulo de Crédito.</p>\r\n<p><strong>Empreendedores</strong> – cases empresariais:<br /><strong>Ana Carolina</strong> – case empresarial - Bar e Restaurante BARCELONA Chopps e Tapas.<br /><strong>Frederico Machado</strong> – case empresarial – CFO MCE Engenharia S.A.<br /><strong>Aelle Oliveira</strong> – case empreendedor – Florus Cosméticos Ltda.<br /><strong>Jaciara Delmar</strong> – case empreendedor – Galeria dos Sabores Buffet<br /><strong>Rosimeire Nolasco</strong> – case empreendedor – Roseadri Confecções.</p>\r\n<p>Total de questionários de pré-seleção recebidos: 36 Setembro e 52 Outubro<br />Total de alunos inscritos : 25 Setembro e 29 em Outubro.<br />Total de alunos formados : 21 Setembro e 21 em Outubro..<br />Total de alunos possuíam um negócio ou iniciou um novo: 10 em Set. e 8 em Out.</p>\r\n<p><strong>FOTOS DAS TURMAS</strong></p>\r\n<p>SETEMBRO</p>\r\n<p><img src="images/stories/turma_setembro_salvador.jpg" alt="turma_setembro_salvador" width="500" height="210" style="margin: 6px; border-width: 0px;" /></p>\r\n<p>OUTUBRO</p>\r\n<p><img src="images/stories/turma_outubro_salvador.jpg" alt="turma_outubro_salvador" width="500" height="263" style="margin: 6px; border-width: 0px;" /></p>\r\n<div id="_mcePaste" style="position: absolute; left: -10000px; top: 0px; width: 1px; height: 1px; overflow: hidden;"><!--[if !mso]> <![endif]--> <!--[if gte mso 9]><xml> <w:WordDocument> <w:View>Normal</w:View> <w:Zoom>0</w:Zoom> <w:TrackMoves /> <w:TrackFormatting /> <w:HyphenationZone>21</w:HyphenationZone> <w:PunctuationKerning /> <w:ValidateAgainstSchemas /> <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid> <w:IgnoreMixedContent>false</w:IgnoreMixedContent> <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText> <w:DoNotPromoteQF /> <w:LidThemeOther>PT-BR</w:LidThemeOther> <w:LidThemeAsian>X-NONE</w:LidThemeAsian> <w:LidThemeComplexScript>X-NONE</w:LidThemeComplexScript> <w:Compatibility> <w:BreakWrappedTables /> <w:SnapToGridInCell /> <w:WrapTextWithPunct /> <w:UseAsianBreakRules /> <w:DontGrowAutofit /> <w:SplitPgBreakAndParaMark /> <w:DontVertAlignCellWithSp /> <w:DontBreakConstrainedForcedTables /> <w:DontVertAlignInTxbx /> <w:Word11KerningPairs /> <w:CachedColBalance /> </w:Compatibility> <w:BrowserLevel>MicrosoftInternetExplorer4</w:BrowserLevel> <m:mathPr> <m:mathFont m:val="Cambria Math" /> <m:brkBin m:val="before" /> <m:brkBinSub m:val="&#45;-" /> <m:smallFrac m:val="off" /> <m:dispDef /> <m:lMargin m:val="0" /> <m:rMargin m:val="0" /> <m:defJc m:val="centerGroup" /> <m:wrapIndent m:val="1440" /> <m:intLim m:val="subSup" /> <m:naryLim m:val="undOvr" /> </m:mathPr></w:WordDocument> </xml><![endif]--><!--[if gte mso 9]><xml> <w:LatentStyles DefLockedState="false" DefUnhideWhenUsed="true"   DefSemiHidden="true" DefQFormat="false" DefPriority="99"   LatentStyleCount="267"> <w:LsdException Locked="false" Priority="0" SemiHidden="false"    UnhideWhenUsed="false" QFormat="true" Name="Normal" /> <w:LsdException Locked="false" Priority="9" SemiHidden="false"    UnhideWhenUsed="false" QFormat="true" Name="heading 1" /> <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 2" /> <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 3" /> <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 4" /> <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 5" /> <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 6" /> <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 7" /> <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 8" /> <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 9" /> <w:LsdException Locked="false" Priority="39" Name="toc 1" /> <w:LsdException Locked="false" Priority="39" Name="toc 2" /> <w:LsdException Locked="false" Priority="39" Name="toc 3" /> <w:LsdException Locked="false" Priority="39" Name="toc 4" /> <w:LsdException Locked="false" Priority="39" Name="toc 5" /> <w:LsdException Locked="false" Priority="39" Name="toc 6" /> <w:LsdException Locked="false" Priority="39" Name="toc 7" /> <w:LsdException Locked="false" Priority="39" Name="toc 8" /> <w:LsdException Locked="false" Priority="39" Name="toc 9" /> <w:LsdException Locked="false" Priority="35" QFormat="true" Name="caption" /> <w:LsdException Locked="false" Priority="10" SemiHidden="false"    UnhideWhenUsed="false" QFormat="true" Name="Title" /> <w:LsdException Locked="false" Priority="1" Name="Default Paragraph Font" /> <w:LsdException Locked="false" Priority="11" SemiHidden="false"    UnhideWhenUsed="false" QFormat="true" Name="Subtitle" /> <w:LsdException Locked="false" Priority="0" Name="Hyperlink" /> <w:LsdException Locked="false" Priority="22" SemiHidden="false"    UnhideWhenUsed="false" QFormat="true" Name="Strong" /> <w:LsdException Locked="false" Priority="20" SemiHidden="false"    UnhideWhenUsed="false" QFormat="true" Name="Emphasis" /> <w:LsdException Locked="false" Priority="0" Name="Normal (Web)" /> <w:LsdException Locked="false" Priority="59" SemiHidden="false"    UnhideWhenUsed="false" Name="Table Grid" /> <w:LsdException Locked="false" UnhideWhenUsed="false" Name="Placeholder Text" /> <w:LsdException Locked="false" Priority="1" SemiHidden="false"    UnhideWhenUsed="false" QFormat="true" Name="No Spacing" /> <w:LsdException Locked="false" Priority="60" SemiHidden="false"    UnhideWhenUsed="false" Name="Light Shading" /> <w:LsdException Locked="false" Priority="61" SemiHidden="false"    UnhideWhenUsed="false" Name="Light List" /> <w:LsdException Locked="false" Priority="62" SemiHidden="false"    UnhideWhenUsed="false" Name="Light Grid" /> <w:LsdException Locked="false" Priority="63" SemiHidden="false"    UnhideWhenUsed="false" Name="Medium Shading 1" /> <w:LsdException Locked="false" Priority="64" SemiHidden="false"    UnhideWhenUsed="false" Name="Medium Shading 2" /> <w:LsdException Locked="false" Priority="65" SemiHidden="false"    UnhideWhenUsed="false" Name="Medium List 1" /> <w:LsdException Locked="false" Priority="66" SemiHidden="false"    UnhideWhenUsed="false" Name="Medium List 2" /> <w:LsdException Locked="false" Priority="67" SemiHidden="false"    UnhideWhenUsed="false" Name="Medium Grid 1" /> <w:LsdException Locked="false" Priority="68" SemiHidden="false"    UnhideWhenUsed="false" Name="Medium Grid 2" /> <w:LsdException Locked="false" Priority="69" SemiHidden="false"    UnhideWhenUsed="false" Name="Medium Grid 3" /> <w:LsdException Locked="false" Priority="70" SemiHidden="false"    UnhideWhenUsed="false" Name="Dark List" /> <w:LsdException Locked="false" Priority="71" SemiHidden="false"    UnhideWhenUsed="false" Name="Colorful Shading" /> <w:LsdException Locked="false" Priority="72" SemiHidden="false"    UnhideWhenUsed="false" Name="Colorful List" /> <w:LsdException Locked="false" Priority="73" SemiHidden="false"    UnhideWhenUsed="false" Name="Colorful Grid" /> <w:LsdException Locked="false" Priority="60" SemiHidden="false"    UnhideWhenUsed="false" Name="Light Shading Accent 1" /> <w:LsdException Locked="false" Priority="61" SemiHidden="false"    UnhideWhenUsed="false" Name="Light List Accent 1" /> <w:LsdException Locked="false" Priority="62" SemiHidden="false"    UnhideWhenUsed="false" Name="Light Grid Accent 1" /> <w:LsdException Locked="false" Priority="63" SemiHidden="false"    UnhideWhenUsed="false" Name="Medium Shading 1 Accent 1" /> <w:LsdException Locked="false" Priority="64" SemiHidden="false"    UnhideWhenUsed="false" Name="Medium Shading 2 Accent 1" /> <w:LsdException Locked="false" Priority="65" SemiHidden="false"    UnhideWhenUsed="false" Name="Medium List 1 Accent 1" /> <w:LsdException Locked="false" UnhideWhenUsed="false" Name="Revision" /> <w:LsdException Locked="false" Priority="34" SemiHidden="false"    UnhideWhenUsed="false" QFormat="true" Name="List Paragraph" /> <w:LsdException Locked="false" Priority="29" SemiHidden="false"    UnhideWhenUsed="false" QFormat="true" Name="Quote" /> <w:LsdException Locked="false" Priority="30" SemiHidden="false"    UnhideWhenUsed="false" QFormat="true" Name="Intense Quote" /> <w:LsdException Locked="false" Priority="66" SemiHidden="false"    UnhideWhenUsed="false" Name="Medium List 2 Accent 1" /> <w:LsdException Locked="false" Priority="67" SemiHidden="false"    UnhideWhenUsed="false" Name="Medium Grid 1 Accent 1" /> <w:LsdException Locked="false" Priority="68" SemiHidden="false"    UnhideWhenUsed="false" Name="Medium Grid 2 Accent 1" /> <w:LsdException Locked="false" Priority="69" SemiHidden="false"    UnhideWhenUsed="false" Name="Medium Grid 3 Accent 1" /> <w:LsdException Locked="false" Priority="70" SemiHidden="false"    UnhideWhenUsed="false" Name="Dark List Accent 1" /> <w:LsdException Locked="false" Priority="71" SemiHidden="false"    UnhideWhenUsed="false" Name="Colorful Shading Accent 1" /> <w:LsdException Locked="false" Priority="72" SemiHidden="false"    UnhideWhenUsed="false" Name="Colorful List Accent 1" /> <w:LsdException Locked="false" Priority="73" SemiHidden="false"    UnhideWhenUsed="false" Name="Colorful Grid Accent 1" /> <w:LsdException Locked="false" Priority="60" SemiHidden="false"    UnhideWhenUsed="false" Name="Light Shading Accent 2" /> <w:LsdException Locked="false" Priority="61" SemiHidden="false"    UnhideWhenUsed="false" Name="Light List Accent 2" /> <w:LsdException Locked="false" Priority="62" SemiHidden="false"    UnhideWhenUsed="false" Name="Light Grid Accent 2" /> <w:LsdException Locked="false" Priority="63" SemiHidden="false"    UnhideWhenUsed="false" Name="Medium Shading 1 Accent 2" /> <w:LsdException Locked="false" Priority="64" SemiHidden="false"    UnhideWhenUsed="false" Name="Medium Shading 2 Accent 2" /> <w:LsdException Locked="false" Priority="65" SemiHidden="false"    UnhideWhenUsed="false" Name="Medium List 1 Accent 2" /> <w:LsdException Locked="false" Priority="66" SemiHidden="false"    UnhideWhenUsed="false" Name="Medium List 2 Accent 2" /> <w:LsdException Locked="false" Priority="67" SemiHidden="false"    UnhideWhenUsed="false" Name="Medium Grid 1 Accent 2" /> <w:LsdException Locked="false" Priority="68" SemiHidden="false"    UnhideWhenUsed="false" Name="Medium Grid 2 Accent 2" /> <w:LsdException Locked="false" Priority="69" SemiHidden="false"    UnhideWhenUsed="false" Name="Medium Grid 3 Accent 2" /> <w:LsdException Locked="false" Priority="70" SemiHidden="false"    UnhideWhenUsed="false" Name="Dark List Accent 2" /> <w:LsdException Locked="false" Priority="71" SemiHidden="false"    UnhideWhenUsed="false" Name="Colorful Shading Accent 2" /> <w:LsdException Locked="false" Priority="72" SemiHidden="false"    UnhideWhenUsed="false" Name="Colorful List Accent 2" /> <w:LsdException Locked="false" Priority="73" SemiHidden="false"    UnhideWhenUsed="false" Name="Colorful Grid Accent 2" /> <w:LsdException Locked="false" Priority="60" SemiHidden="false"    UnhideWhenUsed="false" Name="Light Shading Accent 3" /> <w:LsdException Locked="false" Priority="61" SemiHidden="false"    UnhideWhenUsed="false" Name="Light List Accent 3" /> <w:LsdException Locked="false" Priority="62" SemiHidden="false"    UnhideWhenUsed="false" Name="Light Grid Accent 3" /> <w:LsdException Locked="false" Priority="63" SemiHidden="false"    UnhideWhenUsed="false" Name="Medium Shading 1 Accent 3" /> <w:LsdException Locked="false" Priority="64" SemiHidden="false"    UnhideWhenUsed="false" Name="Medium Shading 2 Accent 3" /> <w:LsdException Locked="false" Priority="65" SemiHidden="false"    UnhideWhenUsed="false" Name="Medium List 1 Accent 3" /> <w:LsdException Locked="false" Priority="66" SemiHidden="false"    UnhideWhenUsed="false" Name="Medium List 2 Accent 3" /> <w:LsdException Locked="false" Priority="67" SemiHidden="false"    UnhideWhenUsed="false" Name="Medium Grid 1 Accent 3" /> <w:LsdException Locked="false" Priority="68" SemiHidden="false"    UnhideWhenUsed="false" Name="Medium Grid 2 Accent 3" /> <w:LsdException Locked="false" Priority="69" SemiHidden="false"    UnhideWhenUsed="false" Name="Medium Grid 3 Accent 3" /> <w:LsdException Locked="false" Priority="70" SemiHidden="false"    UnhideWhenUsed="false" Name="Dark List Accent 3" /> <w:LsdException Locked="false" Priority="71" SemiHidden="false"    UnhideWhenUsed="false" Name="Colorful Shading Accent 3" /> <w:LsdException Locked="false" Priority="72" SemiHidden="false"    UnhideWhenUsed="false" Name="Colorful List Accent 3" /> <w:LsdException Locked="false" Priority="73" SemiHidden="false"    UnhideWhenUsed="false" Name="Colorful Grid Accent 3" /> <w:LsdException Locked="false" Priority="60" SemiHidden="false"    UnhideWhenUsed="false" Name="Light Shading Accent 4" /> <w:LsdException Locked="false" Priority="61" SemiHidden="false"    UnhideWhenUsed="false" Name="Light List Accent 4" /> <w:LsdException Locked="false" Priority="62" SemiHidden="false"    UnhideWhenUsed="false" Name="Light Grid Accent 4" /> <w:LsdException Locked="false" Priority="63" SemiHidden="false"    UnhideWhenUsed="false" Name="Medium Shading 1 Accent 4" /> <w:LsdException Locked="false" Priority="64" SemiHidden="false"    UnhideWhenUsed="false" Name="Medium Shading 2 Accent 4" /> <w:LsdException Locked="false" Priority="65" SemiHidden="false"    UnhideWhenUsed="false" Name="Medium List 1 Accent 4" /> <w:LsdException Locked="false" Priority="66" SemiHidden="false"    UnhideWhenUsed="false" Name="Medium List 2 Accent 4" /> <w:LsdException Locked="false" Priority="67" SemiHidden="false"    UnhideWhenUsed="false" Name="Medium Grid 1 Accent 4" /> <w:LsdException Locked="false" Priority="68" SemiHidden="false"    UnhideWhenUsed="false" Name="Medium Grid 2 Accent 4" /> <w:LsdException Locked="false" Priority="69" SemiHidden="false"    UnhideWhenUsed="false" Name="Medium Grid 3 Accent 4" /> <w:LsdException Locked="false" Priority="70" SemiHidden="false"    UnhideWhenUsed="false" Name="Dark List Accent 4" /> <w:LsdException Locked="false" Priority="71" SemiHidden="false"    UnhideWhenUsed="false" Name="Colorful Shading Accent 4" /> <w:LsdException Locked="false" Priority="72" SemiHidden="false"    UnhideWhenUsed="false" Name="Colorful List Accent 4" /> <w:LsdException Locked="false" Priority="73" SemiHidden="false"    UnhideWhenUsed="false" Name="Colorful Grid Accent 4" /> <w:LsdException Locked="false" Priority="60" SemiHidden="false"    UnhideWhenUsed="false" Name="Light Shading Accent 5" /> <w:LsdException Locked="false" Priority="61" SemiHidden="false"    UnhideWhenUsed="false" Name="Light List Accent 5" /> <w:LsdException Locked="false" Priority="62" SemiHidden="false"    UnhideWhenUsed="false" Name="Light Grid Accent 5" /> <w:LsdException Locked="false" Priority="63" SemiHidden="false"    UnhideWhenUsed="false" Name="Medium Shading 1 Accent 5" /> <w:LsdException Locked="false" Priority="64" SemiHidden="false"    UnhideWhenUsed="false" Name="Medium Shading 2 Accent 5" /> <w:LsdException Locked="false" Priority="65" SemiHidden="false"    UnhideWhenUsed="false" Name="Medium List 1 Accent 5" /> <w:LsdException Locked="false" Priority="66" SemiHidden="false"    UnhideWhenUsed="false" Name="Medium List 2 Accent 5" /> <w:LsdException Locked="false" Priority="67" SemiHidden="false"    UnhideWhenUsed="false" Name="Medium Grid 1 Accent 5" /> <w:LsdException Locked="false" Priority="68" SemiHidden="false"    UnhideWhenUsed="false" Name="Medium Grid 2 Accent 5" /> <w:LsdException Locked="false" Priority="69" SemiHidden="false"    UnhideWhenUsed="false" Name="Medium Grid 3 Accent 5" /> <w:LsdException Locked="false" Priority="70" SemiHidden="false"    UnhideWhenUsed="false" Name="Dark List Accent 5" /> <w:LsdException Locked="false" Priority="71" SemiHidden="false"    UnhideWhenUsed="false" Name="Colorful Shading Accent 5" /> <w:LsdException Locked="false" Priority="72" SemiHidden="false"    UnhideWhenUsed="false" Name="Colorful List Accent 5" /> <w:LsdException Locked="false" Priority="73" SemiHidden="false"    UnhideWhenUsed="false" Name="Colorful Grid Accent 5" /> <w:LsdException Locked="false" Priority="60" SemiHidden="false"    UnhideWhenUsed="false" Name="Light Shading Accent 6" /> <w:LsdException Locked="false" Priority="61" SemiHidden="false"    UnhideWhenUsed="false" Name="Light List Accent 6" /> <w:LsdException Locked="false" Priority="62" SemiHidden="false"    UnhideWhenUsed="false" Name="Light Grid Accent 6" /> <w:LsdException Locked="false" Priority="63" SemiHidden="false"    UnhideWhenUsed="false" Name="Medium Shading 1 Accent 6" /> <w:LsdException Locked="false" Priority="64" SemiHidden="false"    UnhideWhenUsed="false" Name="Medium Shading 2 Accent 6" /> <w:LsdException Locked="false" Priority="65" SemiHidden="false"    UnhideWhenUsed="false" Name="Medium List 1 Accent 6" /> <w:LsdException Locked="false" Priority="66" SemiHidden="false"    UnhideWhenUsed="false" Name="Medium List 2 Accent 6" /> <w:LsdException Locked="false" Priority="67" SemiHidden="false"    UnhideWhenUsed="false" Name="Medium Grid 1 Accent 6" /> <w:LsdException Locked="false" Priority="68" SemiHidden="false"    UnhideWhenUsed="false" Name="Medium Grid 2 Accent 6" /> <w:LsdException Locked="false" Priority="69" SemiHidden="false"    UnhideWhenUsed="false" Name="Medium Grid 3 Accent 6" /> <w:LsdException Locked="false" Priority="70" SemiHidden="false"    UnhideWhenUsed="false" Name="Dark List Accent 6" /> <w:LsdException Locked="false" Priority="71" SemiHidden="false"    UnhideWhenUsed="false" Name="Colorful Shading Accent 6" /> <w:LsdException Locked="false" Priority="72" SemiHidden="false"    UnhideWhenUsed="false" Name="Colorful List Accent 6" /> <w:LsdException Locked="false" Priority="73" SemiHidden="false"    UnhideWhenUsed="false" Name="Colorful Grid Accent 6" /> <w:LsdException Locked="false" Priority="19" SemiHidden="false"    UnhideWhenUsed="false" QFormat="true" Name="Subtle Emphasis" /> <w:LsdException Locked="false" Priority="21" SemiHidden="false"    UnhideWhenUsed="false" QFormat="true" Name="Intense Emphasis" /> <w:LsdException Locked="false" Priority="31" SemiHidden="false"    UnhideWhenUsed="false" QFormat="true" Name="Subtle Reference" /> <w:LsdException Locked="false" Priority="32" SemiHidden="false"    UnhideWhenUsed="false" QFormat="true" Name="Intense Reference" /> <w:LsdException Locked="false" Priority="33" SemiHidden="false"    UnhideWhenUsed="false" QFormat="true" Name="Book Title" /> <w:LsdException Locked="false" Priority="37" Name="Bibliography" /> <w:LsdException Locked="false" Priority="39" QFormat="true" Name="TOC Heading" /> </w:LatentStyles> </xml><![endif]--><!--[if gte mso 10]> <![endif]-->\r\n<p class="MsoNormal" style="text-align: justify;"><span>Os Laboratórios Empresariais de Setembro e Outubro passaram a contar com dois apoios adicionais importantes, a Prefeitura de Salvador através da SETAD – Secretaria de Trabalho e Desenvolvimento e a ONG de microcrédito CEADe – Centro Ecumênico de Desenvolvimento Humano. Com isso recebemos apoio para o fornecimento do material didático e de uma sala de aula climatizada já que com o início do verão a temperatura em Salvador se eleva muito. Com isso a CEADe pode também oferecer aos seus clientes e prospects a possibilidade de participarem gratuitamente, e passou também a cuidar do módulo de crédito, apresentado as formas de acesso aos financiamentos para micro-empreendimentos e autônomos. A SETAD, alem de colaborar com o material didático, pode contribuir também com a captação de alunos através do cadastro de alunos em seus centros de treinamento.<span>  </span>Dessa forma tivemos um “<em>overbook</em>” de inscritos nos Laboratórios desse período e foi necessário realizar uma análise criteriosa dos questionários de pré-seleção e perfil empreendedor.</span></p>\r\n<p class="MsoNormal" style="text-align: justify;"><span> </span></p>\r\n<p class="MsoNormal" style="text-align: justify;"><strong><em><span>Nesse programa contamos com os seguintes <span> </span>apoios:</span></em></strong></p>\r\n<p class="MsoNormal" style="text-align: justify;"><em><span style="text-decoration: underline;"><span style="font-size: 14pt;">Empresas e entidades:</span></span></em></p>\r\n<p class="MsoNormal" style="text-align: justify;"><strong><span>ACBEU Bahia</span></strong><span> – Sr. José Antonio Lago França</span></p>\r\n<p class="MsoNormal" style="text-align: justify;"><strong><span>AJE – Salvador</span></strong><span> – Associação de Jovens Empreendedores – Sr.Thiago Gonzaga</span></p>\r\n<p class="MsoNormal" style="text-align: justify;"><strong><span>AVANTE</span></strong><span> – Balcão da Juventude – Sra. Ana Luiza Buratto</span></p>\r\n<p class="MsoNormal" style="text-align: justify;"><strong><span>CEADe</span></strong><span> – Centro Ecum. de Apoio do Desenv. – Sr.Antonio Carlos Santos.</span></p>\r\n<p class="MsoNormal" style="text-align: justify;"><strong><span>Grupo Sabemi </span></strong><span><span> </span>– Sr. Antonio Tulio Severo Jr</span></p>\r\n<p class="MsoNormal" style="text-align: justify;"><strong><span>SETAD</span></strong><span> – Prefeitura de Salvador – Sr. Mauricio Dias e Sra. Iara Icó.</span></p>\r\n<p class="MsoNormal" style="text-align: justify;"><em><span style="text-decoration: underline;"><span style="font-size: 14pt;"><span style="text-decoration: none;"> </span></span></span></em></p>\r\n<p class="MsoNormal" style="text-align: justify;"><em><span style="text-decoration: underline;"><span style="font-size: 14pt;">Voluntários e Advisers : </span></span></em></p>\r\n<p class="MsoNormal" style="text-align: justify;"><strong><span>Gustavo Espinheira</span></strong><span> – Administrador pela UFBA, Coordenador voluntário do YABT, monitorou os módulos de Liderança, Comunicação e Recursos Humanos.</span></p>\r\n<p class="MsoNormal" style="text-align: justify;"><strong><span>Guilherme Sento-Sé – A</span></strong><span>dministrador pela UCSAL,Assessor Executivo do YABT BR, monitor do módulo de Introdução : Criação e Gestão de Empresas.</span></p>\r\n<p class="MsoNormal" style="text-align: justify;"><strong><span>Antonio Tulio Severo Jr – </span></strong><span>Coordenador geral dos Laboratórios e do YABT Br, monitor para aula de Desbloqueio de Aprendizagem e Liderança.</span></p>\r\n<p class="MsoNormal" style="text-align: justify;"><strong><span>Gabriel Ferrari</span></strong><span> –<span>  </span>Administrador pela UFBA, apresentou o módulo de Marketing de setembro.</span></p>\r\n<p class="MsoNormal" style="text-align: justify;"><strong><span>João Magalhães</span></strong><span> – professor da UCSAL, apresentou o módulo de Marketing em outubro.</span></p>\r\n<p class="MsoNormal" style="text-align: justify;"><strong><span>Cecília Emilia:</span></strong><span><span>  </span>Contadora pelo CRC-BA, professora da Univ. Jorge Amado, apresentou o modulo de Gestão Financeira.</span></p>\r\n<p class="MsoNormal" style="text-align: justify;"><strong><span>Joseli Passos</span></strong><span> – professora de contabilidade na Univ. Jorge Amado, apresentou o módulo de Contabiliadade.</span></p>\r\n<p class="MsoNormal" style="text-align: justify;"><strong><span>Adelmo Bittencourt Pereira</span></strong><span> – Economista pela Ucsal, Gerente do CEADe – apresentou o módulo de Crédito.</span></p>\r\n<p class="MsoNormal" style="text-align: justify;"><span> </span></p>\r\n<p class="MsoNormal" style="text-align: justify;"><em><span style="text-decoration: underline;"><span style="font-size: 14pt;">Empreendedores – cases empresariais:</span></span></em></p>\r\n<p class="MsoNormal" style="text-align: justify;"><strong><span>Ana Carolina</span></strong><span> – <em>case</em> empresarial - Bar e Restaurante BARCELONA Chopps e Tapas.</span></p>\r\n<p class="MsoNormal" style="text-align: justify;"><strong><span>Frederico Machado</span></strong><span> – case empresarial – CFO MCE Engenharia S.A.</span></p>\r\n<p class="MsoNormal" style="text-align: justify;"><strong><span>Aelle Oliveira</span></strong><span> – case empreendedor – Florus Cosméticos Ltda.</span></p>\r\n<p class="MsoNormal" style="text-align: justify;"><strong><span>Jaciara Delmar</span></strong><span> – case empreendedor – Galeria dos Sabores Buffet</span></p>\r\n<p class="MsoNormal" style="text-align: justify;"><strong><span>Rosimeire Nolasco</span></strong><span> – case empreendedor – Roseadri Confecções.</span></p>\r\n<p class="MsoNormal" style="text-align: justify;"><span> </span></p>\r\n<p class="MsoNormal" style="text-align: justify;"><span>Total de questionários de pré-seleção recebidos: 36 Setembro e 52 Outubro</span></p>\r\n<p class="MsoNormal" style="text-align: justify;"><span>Total de alunos inscritos : <span style="color: red;"><span> </span></span>25 Setembro e 29 em Outubro.</span></p>\r\n<p class="MsoNormal" style="text-align: justify;"><span>Total de alunos formados : 21 Setembro e 21 em Outubro.. </span></p>\r\n<p class="MsoNormal" style="text-align: justify;"><span>Total de alunos possuíam um negócio ou iniciou um novo: 10 em Set. e 8 em Out.</span></p>\r\n<p class="MsoNormal" style="text-align: justify;"><span> </span></p>\r\n<p class="MsoNormal" style="text-align: justify;"><span> </span></p>\r\n<p class="MsoNormal" style="text-align: justify;"><span>FOTOS TURMAS </span></p>\r\n<p class="MsoNormal" style="text-align: justify;"><span> </span></p>\r\n<p class="MsoNormal" style="text-align: justify;"><span> </span></p>\r\n<p class="MsoNormal" style="text-align: justify;"><span>SETEMBRO</span></p>\r\n<p class="MsoNormal" style="text-align: justify;"><span> </span></p>\r\n<p class="MsoNormal" style="text-align: justify;"><a name="OLE_LINK2"></a><strong><span><!--[if gte vml 1]><v:shapetype  id="_x0000_t75" coordsize="21600,21600" o:spt="75" o:preferrelative="t"  path="m@4@5l@4@11@9@11@9@5xe" filled="f" stroked="f"> <v:stroke joinstyle="miter" /> <v:formulas> <v:f eqn="if lineDrawn pixelLineWidth 0" /> <v:f eqn="sum @0 1 0" /> <v:f eqn="sum 0 0 @1" /> <v:f eqn="prod @2 1 2" /> <v:f eqn="prod @3 21600 pixelWidth" /> <v:f eqn="prod @3 21600 pixelHeight" /> <v:f eqn="sum @0 0 1" /> <v:f eqn="prod @6 1 2" /> <v:f eqn="prod @7 21600 pixelWidth" /> <v:f eqn="sum @8 21600 0" /> <v:f eqn="prod @7 21600 pixelHeight" /> <v:f eqn="sum @10 21600 0" /> </v:formulas> <v:path o:extrusionok="f" gradientshapeok="t" o:connecttype="rect" /> <o:lock v:ext="edit" aspectratio="t" /> </v:shapetype><v:shape id="_x0000_i1025" type="#_x0000_t75" style=''width:430.5pt;  height:180pt''> <v:imagedata src="file:///C:\\DOCUME~1\\ADMINI~1\\CONFIG~1\\Temp\\msohtmlclip1\\01\\clip_image001.jpg"    o:title="TURMA LEA SET 09" /> </v:shape><![endif]--><!--[if !vml]--><img src="file:///C:/DOCUME%7E1/ADMINI%7E1/CONFIG%7E1/Temp/msohtmlclip1/01/clip_image002.jpg" width="574" height="240" /><!--[endif]--></span></strong></p>\r\n<p class="MsoNormal" style="text-align: justify;"><strong><span> </span></strong></p>\r\n<p class="MsoNormal" style="text-align: justify;"><strong><span>OUTUBRO</span></strong></p>\r\n</div>', '', 1, 17, '2010-05-31 20:23:59', 176, '', '2013-07-24 11:06:41', 176, 0, '0000-00-00 00:00:00', '2010-05-31 20:23:59', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 2, '', '', 1, 184, '{"robots":"","author":"","rights":"","xreference":"","tags":null}', 0, '*', ''),
(48, 91, 'NOVEMBRO', 'novembro', '<p>Os Laboratórios Empresariais de Novembro teve algo especial por fazer parte do Projeto Semanal Global do Empreendedorismo de 2009 que aconteceu em vários países entres os dias 16 a 22 de novembro de 2009 e teve apoio da AJE (Associação de Jovens Empresários de Salvador). A Prefeitura de Salvador através da SETAD – Secretaria de Trabalho e Desenvolvimento nos forneceu todo material didático impresso e a ONG de microcrédito CEADe – Centro Ecumênico de Desenvolvimento Humano nos cedeu uma sala de aula climatizada com data-show. A CEADe pode também oferecer aos seus clientes e prospects a possibilidade de participarem gratuitamente, e também lecionando mas uma vez o módulo de crédito, apresentando as formas de acesso aos financiamentos para micro-empreendimentos e autônomos. A SETAD, alem de colaborar com o material didático, pode contribuir também com a captação de alunos através do cadastro de alunos em seus centros de treinamento.</p>\r\n<p><em>Nesse programa contamos com os seguintes apoios:</em><br /><span style="text-decoration: underline;"><strong><br />Empresas e entidades:</strong></span><br /><br /><strong>ACBEU Bahia</strong> – Sr. José Antonio Lago França<br /><strong>AJE – Salvador</strong> – Associação de Jovens Empreendedores – Sr.Thiago Gonzaga<br /><strong>AVANTE</strong> – Balcão da Juventude – Sra. Ana Luiza Buratto<br /><strong>CEADe</strong> – Centro Ecum. de Apoio do Desenv. – Sr.Antonio Carlos Santos.<br /><strong>Grupo Sabemi</strong> – Sr. Antonio Tulio Severo Jr<br /><strong>SETAD</strong> – Prefeitura de Salvador – Sr. Mauricio Dias e Sra. Iara Icó.</p>\r\n<p><span style="text-decoration: underline;"><strong>Voluntários e Advisers:</strong></span><br /><br /><strong>Gustavo Espinheira</strong> – Administrador pela UFBA, Coordenador voluntário do YABT, monitorou os módulos de Liderança e Gestão Financeira.<br /><strong>Guilherme Sento-Sé</strong> – Administrador pela UCSAL, Assessor Executivo do YABT BR, monitor do módulo de Introdução : Criação e Gestão de Empresas e RH<br /><strong>Antonio Tulio Severo Jr</strong> – Coordenador geral dos Laboratórios e do YABT Br, monitor para aula de Desbloqueio de Aprendizagem e Liderança.<br /><strong>João Magalhães</strong> – professor da UCSAL, apresentou o módulo de Marketing em outubro.<br /><strong>Joseli Passos</strong> – professora de contabilidade na Univ. Jorge Amado, apresentou o módulo de Contabiliadade.<br /><strong>Adelmo Bittencourt Pereira</strong> – Economista pela Ucsal, Gerente do CEADe – apresentou o módulo de Crédito.<br /><strong>Leilane Santiago</strong> – Publicitária pela Ucsal, monitora do módulo de Comunicação</p>\r\n<p><span style="text-decoration: underline;"><strong>Empreendedores – cases empresariais:</strong></span><br /><br /><strong>Aelle Oliveira</strong> – case empreendedor – Florus Cosméticos Ltda.<br /><strong>Jaciara Delmar</strong> – case empreendedor – Galeria dos Sabores Buffet<br /><strong>Rosimeire Nolasco</strong> – case empreendedor – Roseadri Confecções.</p>\r\n<p>Total de questionários de pré-seleção recebidos: 33<br />Total de alunos inscritos : 22<br />Total de alunos formados : 22<br />Total de alunos possuíam um negócio ou iniciou um novo: 7</p>\r\n<p>FOTO TURMA DE NOVEMBRO</p>\r\n<p><img src="images/stories/turma_novembro_salvador.jpg" alt="turma_novembro_salvador" width="500" height="200" style="margin: 6px; border-width: 0px;" /></p>', '', 1, 17, '2010-05-31 20:33:38', 176, '', '2013-07-24 11:06:31', 176, 0, '0000-00-00 00:00:00', '2010-05-31 20:33:38', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 3, '', '', 1, 192, '{"robots":"","author":"","rights":"","xreference":"","tags":null}', 0, '*', ''),
(49, 92, 'ASSISTA AOS VIDEO CLIPES DE CADA TURMA NO YOUTUBE AGORA:', 'assista-aos-video-clipes-de-cada-turma-no-youtube-agora', '<p><strong>Turmas:</strong></p>\r\n<p> </p>\r\n<p>Julho</p>\r\n<p><object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=10,0,32,18" width="425" height="344"><param name="allowFullScreen" value="true" /><param name="allowscriptaccess" value="always" /><param name="src" value="http://www.youtube.com/v/9_gZas_Y1co&amp;hl=pt_BR&amp;fs=1&amp;" />  </object></p>\r\n<p> </p>\r\n<p>Agosto</p>\r\n<p><object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=10,0,32,18" width="425" height="344"><param name="allowFullScreen" value="true" /><param name="allowscriptaccess" value="always" /><param name="src" value="http://www.youtube.com/v/3zxE7cKxA7Q&amp;hl=pt_BR&amp;fs=1&amp;" />  </object></p>\r\n<p> </p>\r\n<p>Setembro</p>\r\n<p><object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=10,0,32,18" width="425" height="344"><param name="allowFullScreen" value="true" /><param name="allowscriptaccess" value="always" /><param name="src" value="http://www.youtube.com/v/DokrZHioR_E&amp;hl=pt_BR&amp;fs=1&amp;" />  </object></p>\r\n<p> </p>\r\n<p>Outubro</p>\r\n<p><object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=10,0,32,18" width="425" height="344"><param name="allowFullScreen" value="true" /><param name="allowscriptaccess" value="always" /><param name="src" value="http://www.youtube.com/v/BxM2leot4Z8&amp;hl=pt_BR&amp;fs=1&amp;" /></object></p>\r\n<p> </p>\r\n<p>Novembro</p>\r\n<p><object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=10,0,32,18" width="425" height="344"><param name="allowFullScreen" value="true" /><param name="allowscriptaccess" value="always" /><param name="src" value="http://www.youtube.com/v/vK9Thc1xDpg&amp;hl=pt_BR&amp;fs=1&amp;" /></object></p>\r\n<p> </p>\r\n<p>FORMATURA 2009.2 – Foi realizado evento de formatura dos 109 alunos no teatro do ACBEU em Salvador dia 25 de novembro, assista o clipe do evento abaixo: em duas partes, abaixo:”.</p>\r\n<p>Parte 1</p>\r\n<p><object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=10,0,32,18" width="480" height="385"><param name="allowFullScreen" value="true" /><param name="allowscriptaccess" value="always" /><param name="src" value="http://www.youtube.com/v/SQPZ9QNjpqI&amp;hl=en_US&amp;fs=1&amp;color1=0x006699&amp;color2=0x54abd6" /></object></p>\r\n<p> </p>\r\n<p>Parte 2</p>\r\n<p><object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=10,0,32,18" width="500" height="405"><param name="allowFullScreen" value="true" /><param name="allowscriptaccess" value="always" /><param name="src" value="http://www.youtube.com/v/kzCCJs6DM4E&amp;hl=en_US&amp;fs=1&amp;color1=0x006699&amp;color2=0x54abd6&amp;border=1" /></object></p>', '', 1, 17, '2010-05-31 20:44:42', 176, '', '2013-07-24 11:06:12', 176, 0, '0000-00-00 00:00:00', '2010-05-31 20:44:42', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 4, '', '', 1, 168, '{"robots":"","author":"","rights":"","xreference":"","tags":null}', 0, '*', ''),
(50, 99, 'Home', 'home', '<p>{loadposition conteudo}</p>', '', 1, 20, '2013-07-24 20:04:19', 176, '', '2013-07-24 20:25:25', 176, 0, '0000-00-00 00:00:00', '2013-07-24 20:04:19', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 8, 0, '', '', 1, 1403, '{"robots":"","author":"","rights":"","xreference":"","tags":null}', 0, '*', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `irqdj_contentitem_tag_map`
--

CREATE TABLE IF NOT EXISTS `irqdj_contentitem_tag_map` (
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `core_content_id` int(10) unsigned NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) unsigned NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table',
  UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  KEY `idx_tag_type` (`tag_id`,`type_id`),
  KEY `idx_date_id` (`tag_date`,`tag_id`),
  KEY `idx_tag` (`tag_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_core_content_id` (`core_content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Maps items from content tables to tags';

-- --------------------------------------------------------

--
-- Estrutura da tabela `irqdj_content_frontpage`
--

CREATE TABLE IF NOT EXISTS `irqdj_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `irqdj_content_rating`
--

CREATE TABLE IF NOT EXISTS `irqdj_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `irqdj_content_types`
--

CREATE TABLE IF NOT EXISTS `irqdj_content_types` (
  `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_title` varchar(255) NOT NULL DEFAULT '',
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `table` varchar(255) NOT NULL DEFAULT '',
  `rules` text NOT NULL,
  `field_mappings` text NOT NULL,
  `router` varchar(255) NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) NOT NULL COMMENT 'JSON string for com_contenthistory options',
  PRIMARY KEY (`type_id`),
  KEY `idx_alias` (`type_alias`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Extraindo dados da tabela `irqdj_content_types`
--

INSERT INTO `irqdj_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`) VALUES
(1, 'Article', 'com_content.article', '{"special":{"dbtable":"#__content","key":"id","type":"Content","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"state","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"introtext", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"attribs", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"asset_id"}, "special": {"fulltext":"fulltext"}}', 'ContentHelperRoute::getArticleRoute', '{"formFile":"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml", "hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(2, 'Weblink', 'com_weblinks.weblink', '{"special":{"dbtable":"#__weblinks","key":"id","type":"Weblink","prefix":"WeblinksTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"state","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"url", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special": {}}', 'WeblinksHelperRoute::getWeblinkRoute', '{"formFile":"administrator\\/components\\/com_weblinks\\/models\\/forms\\/weblink.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","featured","images"], "ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"], "convertToInt":["publish_up", "publish_down", "featured", "ordering"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(3, 'Contact', 'com_contact.contact', '{"special":{"dbtable":"#__contact_details","key":"id","type":"Contact","prefix":"ContactTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"address", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"image", "core_urls":"webpage", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special": {"con_position":"con_position","suburb":"suburb","state":"state","country":"country","postcode":"postcode","telephone":"telephone","fax":"fax","misc":"misc","email_to":"email_to","default_con":"default_con","user_id":"user_id","mobile":"mobile","sortname1":"sortname1","sortname2":"sortname2","sortname3":"sortname3"}}', 'ContactHelperRoute::getContactRoute', '{"formFile":"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml","hideFields":["default_con","checked_out","checked_out_time","version","xreference"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"], "displayLookup":[ {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ] }'),
(4, 'Newsfeed', 'com_newsfeeds.newsfeed', '{"special":{"dbtable":"#__newsfeeds","key":"id","type":"Newsfeed","prefix":"NewsfeedsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special": {"numarticles":"numarticles","cache_time":"cache_time","rtl":"rtl"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '{"formFile":"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml","hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(5, 'User', 'com_users.user', '{"special":{"dbtable":"#__users","key":"id","type":"User","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"null","core_alias":"username","core_created_time":"registerdate","core_modified_time":"lastvisitDate","core_body":"null", "core_hits":"null","core_publish_up":"null","core_publish_down":"null","access":"null", "core_params":"params", "core_featured":"null", "core_metadata":"null", "core_language":"null", "core_images":"null", "core_urls":"null", "core_version":"null", "core_ordering":"null", "core_metakey":"null", "core_metadesc":"null", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special": {}}', 'UsersHelperRoute::getUserRoute', ''),
(6, 'Article Category', 'com_content.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContentHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(7, 'Contact Category', 'com_contact.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContactHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(8, 'Newsfeeds Category', 'com_newsfeeds.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'NewsfeedsHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(9, 'Weblinks Category', 'com_weblinks.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'WeblinksHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(10, 'Tag', 'com_tags.tag', '{"special":{"dbtable":"#__tags","key":"tag_id","type":"Tag","prefix":"TagsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path"}}', 'TagsHelperRoute::getTagRoute', '{"formFile":"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml", "hideFields":["checked_out","checked_out_time","version", "lft", "rgt", "level", "path", "urls", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(11, 'Banner', 'com_banners.banner', '{"special":{"dbtable":"#__banners","key":"id","type":"Banner","prefix":"BannersTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"null","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"null", "asset_id":"null"}, "special":{"imptotal":"imptotal", "impmade":"impmade", "clicks":"clicks", "clickurl":"clickurl", "custombannercode":"custombannercode", "cid":"cid", "purchase_type":"purchase_type", "track_impressions":"track_impressions", "track_clicks":"track_clicks"}}', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml", "hideFields":["checked_out","checked_out_time","version", "reset"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "imptotal", "impmade", "reset"], "convertToInt":["publish_up", "publish_down", "ordering"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"cid","targetTable":"#__banner_clients","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(12, 'Banners Category', 'com_banners.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(13, 'Banner Client', 'com_banners.client', '{"special":{"dbtable":"#__banner_clients","key":"id","type":"Client","prefix":"BannersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml", "hideFields":["checked_out","checked_out_time"], "ignoreChanges":["checked_out", "checked_out_time"], "convertToInt":[], "displayLookup":[]}'),
(14, 'User Notes', 'com_users.note', '{"special":{"dbtable":"#__user_notes","key":"id","type":"Note","prefix":"UsersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml", "hideFields":["checked_out","checked_out_time", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time"], "convertToInt":["publish_up", "publish_down"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(15, 'User Notes Category', 'com_users.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `irqdj_core_log_searches`
--

CREATE TABLE IF NOT EXISTS `irqdj_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `irqdj_extensions`
--

CREATE TABLE IF NOT EXISTS `irqdj_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=804 ;

--
-- Extraindo dados da tabela `irqdj_extensions`
--

INSERT INTO `irqdj_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{"name":"com_mailto","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MAILTO_XML_DESCRIPTION","group":"","filename":"mailto"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{"name":"com_wrapper","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_WRAPPER_XML_DESCRIPTION","group":"","filename":"wrapper"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{"name":"com_admin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_ADMIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{"name":"com_banners","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_BANNERS_XML_DESCRIPTION","group":"","filename":"banners"}', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{"name":"com_cache","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CACHE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{"name":"com_categories","type":"component","creationDate":"December 2007","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{"name":"com_checkin","type":"component","creationDate":"Unknown","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CHECKIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{"name":"com_contact","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '{"show_contact_category":"hide","show_contact_list":"0","presentation_style":"sliders","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_misc":"1","show_image":"1","image":"","allow_vcard":"0","show_articles":"0","show_profile":"0","show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","show_headings":"1","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","allow_vcard_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_category_crumb":"0","metakey":"","metadesc":"","robots":"","author":"","rights":"","xreference":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{"name":"com_cpanel","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CPANEL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{"name":"com_installer","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_INSTALLER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{"name":"com_languages","type":"component","creationDate":"2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LANGUAGES_XML_DESCRIPTION","group":""}', '{"administrator":"pt-BR","site":"pt-BR"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{"name":"com_login","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{"name":"com_media","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MEDIA_XML_DESCRIPTION","group":"","filename":"media"}', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{"name":"com_menus","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MENUS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{"name":"com_messages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MESSAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{"name":"com_modules","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MODULES_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{"name":"com_newsfeeds","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_word_count":"0","show_headings":"1","show_name":"1","show_articles":"0","show_link":"1","show_description":"1","show_description_image":"1","display_num":"","show_pagination_limit":"1","show_pagination":"1","show_pagination_results":"1","show_cat_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{"name":"com_plugins","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_PLUGINS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 'com_search', 'component', 'com_search', '', 1, 1, 1, 0, '{"name":"com_search","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_SEARCH_XML_DESCRIPTION","group":"","filename":"search"}', '{"enabled":"0","show_date":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{"name":"com_templates","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_TEMPLATES_XML_DESCRIPTION","group":""}', '{"template_positions_display":"0","upload_limit":"2","image_formats":"gif,bmp,jpg,jpeg,png","source_formats":"txt,less,ini,xml,js,php,css","font_formats":"woff,ttf,otf","compressed_formats":"zip"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(21, 'com_weblinks', 'component', 'com_weblinks', '', 1, 1, 1, 0, '{"name":"com_weblinks","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.1","description":"COM_WEBLINKS_XML_DESCRIPTION","group":"","filename":"weblinks"}', '{"show_comp_description":"1","comp_description":"","show_link_hits":"1","show_link_description":"1","show_other_cats":"0","show_headings":"0","show_numbers":"0","show_report":"1","count_clicks":"1","target":"0","link_icons":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{"name":"com_content","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{"article_layout":"_:default","show_title":"1","link_titles":"1","show_intro":"1","info_block_position":"0","show_category":"0","link_category":"1","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"1","show_vote":"0","show_readmore":"1","show_readmore_title":"1","readmore_limit":"100","show_tags":"1","show_icons":"1","show_print_icon":"1","show_email_icon":"1","show_hits":"0","show_noauth":"0","urls_position":"0","show_publishing_options":"1","show_article_options":"1","show_urls_images_frontend":"0","show_urls_images_backend":"1","targeta":0,"targetb":0,"targetc":0,"float_intro":"left","float_fulltext":"left","category_layout":"_:blog","show_category_heading_title_text":"1","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"1","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"0","show_subcategory_content":"0","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1","feed_summary":"0","feed_show_readmore":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{"name":"com_config","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONFIG_XML_DESCRIPTION","group":""}', '{"filters":{"1":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"9":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"2":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{"name":"com_redirect","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_REDIRECT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{"name":"com_users","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_USERS_XML_DESCRIPTION","group":"","filename":"users"}', '{"allowUserRegistration":"1","new_usertype":"2","guest_usergroup":"9","sendpassword":"1","useractivation":"1","mail_to_admin":"0","captcha":"","frontend_userparams":"1","site_language":"0","change_login_name":"0","reset_count":"10","reset_time":"1","mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{"name":"com_finder","type":"component","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_FINDER_XML_DESCRIPTION","group":""}', '{"show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"1","show_advanced":"1","expand_advanced":"0","show_date_filters":"0","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","memory_table_limit":30000,"title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stemmer":"snowball"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{"name":"com_joomlaupdate","type":"component","creationDate":"February 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(29, 'com_tags', 'component', 'com_tags', '', 1, 1, 1, 1, '{"name":"com_tags","type":"component","creationDate":"December 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"COM_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{"show_tag_title":"0","tag_list_show_tag_image":"0","tag_list_show_tag_description":"0","tag_list_image":"","show_tag_num_items":"0","tag_list_orderby":"title","tag_list_orderby_direction":"ASC","show_headings":"0","tag_list_show_date":"0","tag_list_show_item_image":"0","tag_list_show_item_description":"0","tag_list_item_maximum_characters":0,"return_any_or_all":"1","include_children":"0","maximum":200,"tag_list_language_filter":"all","tags_layout":"_:default","all_tags_orderby":"title","all_tags_orderby_direction":"ASC","all_tags_show_tag_image":"0","all_tags_show_tag_descripion":"0","all_tags_tag_maximum_characters":20,"all_tags_show_tag_hits":"0","filter_field":"1","show_pagination_limit":"1","show_pagination":"2","show_pagination_results":"1","tag_field_ajax_mode":"1","show_feed_link":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(30, 'com_contenthistory', 'component', 'com_contenthistory', '', 1, 1, 1, 0, '{"name":"com_contenthistory","type":"component","creationDate":"May 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_CONTENTHISTORY_XML_DESCRIPTION","group":"","filename":"contenthistory"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(31, 'com_ajax', 'component', 'com_ajax', '', 1, 1, 1, 0, '{"name":"com_ajax","type":"component","creationDate":"August 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_AJAX_XML_DESCRIPTION","group":"","filename":"ajax"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(32, 'com_postinstall', 'component', 'com_postinstall', '', 1, 1, 1, 1, '{"name":"com_postinstall","type":"component","creationDate":"September 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_POSTINSTALL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(101, 'SimplePie', 'library', 'simplepie', '', 0, 1, 1, 1, '{"name":"SimplePie","type":"library","creationDate":"2004","author":"SimplePie","copyright":"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon","authorEmail":"","authorUrl":"http:\\/\\/simplepie.org\\/","version":"1.2","description":"LIB_SIMPLEPIE_XML_DESCRIPTION","group":"","filename":"simplepie"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 'phputf8', 'library', 'phputf8', '', 0, 1, 1, 1, '{"name":"phputf8","type":"library","creationDate":"2006","author":"Harry Fuecks","copyright":"Copyright various authors","authorEmail":"hfuecks@gmail.com","authorUrl":"http:\\/\\/sourceforge.net\\/projects\\/phputf8","version":"0.5","description":"LIB_PHPUTF8_XML_DESCRIPTION","group":"","filename":"phputf8"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 'Joomla! Platform', 'library', 'joomla', '', 0, 1, 1, 1, '{"name":"Joomla! Platform","type":"library","creationDate":"2008","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\/\\/www.joomla.org","version":"13.1","description":"LIB_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{"mediaversion":"58bb209cb3e0d6512f6de9a263d68cc5"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(104, 'IDNA Convert', 'library', 'idna_convert', '', 0, 1, 1, 1, '{"name":"IDNA Convert","type":"library","creationDate":"2004","author":"phlyLabs","copyright":"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de","authorEmail":"phlymail@phlylabs.de","authorUrl":"http:\\/\\/phlylabs.de","version":"0.8.0","description":"LIB_IDNA_XML_DESCRIPTION","group":"","filename":"idna_convert"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(105, 'FOF', 'library', 'fof', '', 0, 1, 1, 1, '{"name":"FOF","type":"library","creationDate":"2015-04-22 13:15:32","author":"Nicholas K. Dionysopoulos \\/ Akeeba Ltd","copyright":"(C)2011-2015 Nicholas K. Dionysopoulos","authorEmail":"nicholas@akeebabackup.com","authorUrl":"https:\\/\\/www.akeebabackup.com","version":"2.4.3","description":"LIB_FOF_XML_DESCRIPTION","group":"","filename":"fof"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(106, 'PHPass', 'library', 'phpass', '', 0, 1, 1, 1, '{"name":"PHPass","type":"library","creationDate":"2004-2006","author":"Solar Designer","copyright":"","authorEmail":"solar@openwall.com","authorUrl":"http:\\/\\/www.openwall.com\\/phpass\\/","version":"0.3","description":"LIB_PHPASS_XML_DESCRIPTION","group":"","filename":"phpass"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 0, '{"name":"mod_articles_archive","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION","group":"","filename":"mod_articles_archive"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 0, '{"name":"mod_articles_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_NEWS_XML_DESCRIPTION","group":"","filename":"mod_articles_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{"name":"mod_articles_popular","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_articles_popular"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '{"name":"mod_banners","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BANNERS_XML_DESCRIPTION","group":"","filename":"mod_banners"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{"name":"mod_breadcrumbs","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BREADCRUMBS_XML_DESCRIPTION","group":"","filename":"mod_breadcrumbs"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":"","filename":"mod_custom"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":"","filename":"mod_feed"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 0, '{"name":"mod_footer","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FOOTER_XML_DESCRIPTION","group":"","filename":"mod_footer"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":"","filename":"mod_login"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{"name":"mod_menu","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":"","filename":"mod_menu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{"name":"mod_articles_news","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_NEWS_XML_DESCRIPTION","group":"","filename":"mod_articles_news"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{"name":"mod_random_image","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RANDOM_IMAGE_XML_DESCRIPTION","group":"","filename":"mod_random_image"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{"name":"mod_related_items","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RELATED_XML_DESCRIPTION","group":"","filename":"mod_related_items"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{"name":"mod_search","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SEARCH_XML_DESCRIPTION","group":"","filename":"mod_search"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{"name":"mod_stats","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":"","filename":"mod_stats"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{"name":"mod_syndicate","type":"module","creationDate":"May 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SYNDICATE_XML_DESCRIPTION","group":"","filename":"mod_syndicate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 0, '{"name":"mod_users_latest","type":"module","creationDate":"December 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_USERS_LATEST_XML_DESCRIPTION","group":"","filename":"mod_users_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(217, 'mod_weblinks', 'module', 'mod_weblinks', '', 0, 1, 1, 0, '{"name":"mod_weblinks","type":"module","creationDate":"July 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.1","description":"MOD_WEBLINKS_XML_DESCRIPTION","group":"","filename":"mod_weblinks"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{"name":"mod_whosonline","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WHOSONLINE_XML_DESCRIPTION","group":"","filename":"mod_whosonline"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{"name":"mod_wrapper","type":"module","creationDate":"October 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WRAPPER_XML_DESCRIPTION","group":"","filename":"mod_wrapper"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 0, '{"name":"mod_articles_category","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION","group":"","filename":"mod_articles_category"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 0, '{"name":"mod_articles_categories","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION","group":"","filename":"mod_articles_categories"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{"name":"mod_languages","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LANGUAGES_XML_DESCRIPTION","group":"","filename":"mod_languages"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{"name":"mod_finder","type":"module","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FINDER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":"","filename":"mod_custom"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":"","filename":"mod_feed"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{"name":"mod_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_XML_DESCRIPTION","group":"","filename":"mod_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{"name":"mod_logged","type":"module","creationDate":"January 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGGED_XML_DESCRIPTION","group":"","filename":"mod_logged"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"March 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":"","filename":"mod_login"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{"name":"mod_menu","type":"module","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":"","filename":"mod_menu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{"name":"mod_popular","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_popular"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{"name":"mod_quickicon","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_QUICKICON_XML_DESCRIPTION","group":"","filename":"mod_quickicon"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{"name":"mod_status","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATUS_XML_DESCRIPTION","group":"","filename":"mod_status"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{"name":"mod_submenu","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SUBMENU_XML_DESCRIPTION","group":"","filename":"mod_submenu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{"name":"mod_title","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TITLE_XML_DESCRIPTION","group":"","filename":"mod_title"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{"name":"mod_toolbar","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TOOLBAR_XML_DESCRIPTION","group":"","filename":"mod_toolbar"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{"name":"mod_multilangstatus","type":"module","creationDate":"September 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MULTILANGSTATUS_XML_DESCRIPTION","group":"","filename":"mod_multilangstatus"}', '{"cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{"name":"mod_version","type":"module","creationDate":"January 2012","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_VERSION_XML_DESCRIPTION","group":""}', '{"format":"short","product":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(315, 'mod_stats_admin', 'module', 'mod_stats_admin', '', 1, 1, 1, 0, '{"name":"mod_stats_admin","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":"","filename":"mod_stats_admin"}', '{"serverinfo":"0","siteinfo":"0","counter":"0","increase":"0","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(316, 'mod_tags_popular', 'module', 'mod_tags_popular', '', 0, 1, 1, 0, '{"name":"mod_tags_popular","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_tags_popular"}', '{"maximum":"5","timeframe":"alltime","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(317, 'mod_tags_similar', 'module', 'mod_tags_similar', '', 0, 1, 1, 0, '{"name":"mod_tags_similar","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_SIMILAR_XML_DESCRIPTION","group":"","filename":"mod_tags_similar"}', '{"maximum":"5","matchtype":"any","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_gmail","type":"plugin","creationDate":"February 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_GMAIL_XML_DESCRIPTION","group":"","filename":"gmail"}', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{"name":"plg_authentication_joomla","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_ldap","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LDAP_XML_DESCRIPTION","group":"","filename":"ldap"}', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(403, 'plg_content_contact', 'plugin', 'contact', 'content', 0, 1, 1, 0, '{"name":"plg_content_contact","type":"plugin","creationDate":"January 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.2","description":"PLG_CONTENT_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(404, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{"name":"plg_content_emailcloak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION","group":"","filename":"emailcloak"}', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(406, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{"name":"plg_content_loadmodule","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOADMODULE_XML_DESCRIPTION","group":"","filename":"loadmodule"}', '{"style":"none"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(407, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagebreak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION","group":"","filename":"pagebreak"}', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagenavigation","type":"plugin","creationDate":"January 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_PAGENAVIGATION_XML_DESCRIPTION","group":"","filename":"pagenavigation"}', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 0, '{"name":"plg_content_vote","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_VOTE_XML_DESCRIPTION","group":"","filename":"vote"}', '{}', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_codemirror","type":"plugin","creationDate":"28 March 2011","author":"Marijn Haverbeke","copyright":"Copyright (C) 2014 by Marijn Haverbeke <marijnh@gmail.com> and others","authorEmail":"marijnh@gmail.com","authorUrl":"http:\\/\\/codemirror.net\\/","version":"5.6","description":"PLG_CODEMIRROR_XML_DESCRIPTION","group":"","filename":"codemirror"}', '{"lineNumbers":"1","lineWrapping":"1","matchTags":"1","matchBrackets":"1","marker-gutter":"1","autoCloseTags":"1","autoCloseBrackets":"1","autoFocus":"1","theme":"default","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_none","type":"plugin","creationDate":"September 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_NONE_XML_DESCRIPTION","group":"","filename":"none"}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 0, '{"name":"plg_editors_tinymce","type":"plugin","creationDate":"2005-2014","author":"Moxiecode Systems AB","copyright":"Moxiecode Systems AB","authorEmail":"N\\/A","authorUrl":"tinymce.moxiecode.com","version":"4.1.7","description":"PLG_TINY_XML_DESCRIPTION","group":"","filename":"tinymce"}', '{"mode":"2","skin":"0","entity_encoding":"raw","lang_mode":"1","lang_code":"en","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","invalid_elements":"applet,iframe","extended_elements":"","toolbar":"top","toolbar_align":"left","html_height":"550","html_width":"750","resizing":"true","resize_horizontal":"false","element_path":"1","fonts":"1","paste":"1","searchreplace":"1","insertdate":"1","format_date":"%Y-%m-%d","inserttime":"1","format_time":"%H:%M:%S","colors":"1","table":"1","smilies":"1","media":"1","hr":"1","directionality":"1","fullscreen":"1","style":"1","layer":"1","xhtmlxtras":"1","visualchars":"1","visualblocks":"1","nonbreaking":"1","template":"1","blockquote":"1","wordcount":"1","advimage":"1","advlink":"1","advlist":"1","autosave":"1","contextmenu":"1","inlinepopups":"1","custom_plugin":"","custom_button":""}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_article","type":"plugin","creationDate":"October 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_ARTICLE_XML_DESCRIPTION","group":"","filename":"article"}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_image","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_IMAGE_XML_DESCRIPTION","group":"","filename":"image"}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_pagebreak","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION","group":"","filename":"pagebreak"}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0);
INSERT INTO `irqdj_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(416, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_readmore","type":"plugin","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_READMORE_XML_DESCRIPTION","group":"","filename":"readmore"}', '{}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(417, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{"name":"plg_search_categories","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION","group":"","filename":"categories"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{"name":"plg_search_contacts","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTACTS_XML_DESCRIPTION","group":"","filename":"contacts"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{"name":"plg_search_content","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{"name":"plg_search_newsfeeds","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(421, 'plg_search_weblinks', 'plugin', 'weblinks', 'search', 0, 1, 1, 0, '{"name":"plg_search_weblinks","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.1","description":"PLG_SEARCH_WEBLINKS_XML_DESCRIPTION","group":"","filename":"weblinks"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{"name":"plg_system_languagefilter","type":"plugin","creationDate":"July 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION","group":"","filename":"languagefilter"}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 1, 1, 0, '{"name":"plg_system_p3p","type":"plugin","creationDate":"September 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_P3P_XML_DESCRIPTION","group":"","filename":"p3p"}', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{"name":"plg_system_cache","type":"plugin","creationDate":"February 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CACHE_XML_DESCRIPTION","group":"","filename":"cache"}', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{"name":"plg_system_debug","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_DEBUG_XML_DESCRIPTION","group":"","filename":"debug"}', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{"name":"plg_system_log","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOG_XML_DESCRIPTION","group":"","filename":"log"}', '{}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 0, 1, 1, '{"name":"plg_system_redirect","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION","group":"","filename":"redirect"}', '{}', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(428, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{"name":"plg_system_remember","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_REMEMBER_XML_DESCRIPTION","group":"","filename":"remember"}', '{}', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{"name":"plg_system_sef","type":"plugin","creationDate":"December 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEF_XML_DESCRIPTION","group":"","filename":"sef"}', '{}', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{"name":"plg_system_logout","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION","group":"","filename":"logout"}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(431, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 0, '{"name":"plg_user_contactcreator","type":"plugin","creationDate":"August 2009","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTACTCREATOR_XML_DESCRIPTION","group":"","filename":"contactcreator"}', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{"name":"plg_user_joomla","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{"autoregister":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 0, '{"name":"plg_user_profile","type":"plugin","creationDate":"January 2008","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_PROFILE_XML_DESCRIPTION","group":"","filename":"profile"}', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{"name":"plg_extension_joomla","type":"plugin","creationDate":"May 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{"name":"plg_content_joomla","type":"plugin","creationDate":"November 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{"name":"plg_system_languagecode","type":"plugin","creationDate":"November 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION","group":"","filename":"languagecode"}', '{}', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_joomlaupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION","group":"","filename":"joomlaupdate"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_extensionupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION","group":"","filename":"extensionupdate"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 1, 1, 0, '{"name":"plg_captcha_recaptcha","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.0","description":"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION","group":"","filename":"recaptcha"}', '{"public_key":"","private_key":"","theme":"clean"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{"name":"plg_system_highlight","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{"name":"plg_content_finder","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_FINDER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_categories","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CATEGORIES_XML_DESCRIPTION","group":"","filename":"categories"}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_contacts","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTACTS_XML_DESCRIPTION","group":"","filename":"contacts"}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_content","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_newsfeeds","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(446, 'plg_finder_weblinks', 'plugin', 'weblinks', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_weblinks","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.1","description":"PLG_FINDER_WEBLINKS_XML_DESCRIPTION","group":"","filename":"weblinks"}', '{}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(447, 'plg_finder_tags', 'plugin', 'tags', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_tags","type":"plugin","creationDate":"February 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(448, 'plg_twofactorauth_totp', 'plugin', 'totp', 'twofactorauth', 0, 1, 1, 0, '{"name":"plg_twofactorauth_totp","type":"plugin","creationDate":"August 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION","group":"","filename":"totp"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(449, 'plg_authentication_cookie', 'plugin', 'cookie', 'authentication', 0, 1, 1, 0, '{"name":"plg_authentication_cookie","type":"plugin","creationDate":"July 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_COOKIE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(450, 'plg_twofactorauth_yubikey', 'plugin', 'yubikey', 'twofactorauth', 0, 1, 1, 0, '{"name":"plg_twofactorauth_yubikey","type":"plugin","creationDate":"September 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION","group":"","filename":"yubikey"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(451, 'plg_search_tags', 'plugin', 'tags', 'search', 0, 0, 1, 0, '{"name":"plg_search_tags","type":"plugin","creationDate":"March 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{"search_limit":"50","show_tagged_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(503, 'beez3', 'template', 'beez3', '', 0, 1, 1, 0, '{"name":"beez3","type":"template","creationDate":"25 November 2009","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"3.1.0","description":"TPL_BEEZ3_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{"name":"hathor","type":"template","creationDate":"May 2010","author":"Andrea Tarr","copyright":"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.","authorEmail":"hathor@tarrconsulting.com","authorUrl":"http:\\/\\/www.tarrconsulting.com","version":"3.0.0","description":"TPL_HATHOR_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"showSiteName":"0","colourChoice":"0","boldText":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(506, 'protostar', 'template', 'protostar', '', 0, 1, 1, 0, '{"name":"protostar","type":"template","creationDate":"4\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_PROTOSTAR_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(507, 'isis', 'template', 'isis', '', 1, 1, 1, 0, '{"name":"isis","type":"template","creationDate":"3\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_ISIS_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"templateColor":"","logoFile":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 'English (en-GB)', 'language', 'en-GB', '', 0, 1, 1, 1, '{"name":"English (en-GB)","type":"language","creationDate":"2013-03-07","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.3","description":"en-GB site language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 'English (en-GB)', 'language', 'en-GB', '', 1, 1, 1, 1, '{"name":"English (en-GB)","type":"language","creationDate":"2013-03-07","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.3","description":"en-GB administrator language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{"name":"files_joomla","type":"file","creationDate":"December 2015","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.8","description":"FILES_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(710, 'Gantry', 'component', 'com_gantry', '', 0, 1, 0, 0, '{"name":"Gantry","type":"component","creationDate":"March 9, 2015","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2015 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"4.1.29","description":"Gantry Starting Template for Joomla! v4.1.29","group":"","filename":"gantry"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(711, 'System - Gantry', 'plugin', 'gantry', 'system', 0, 1, 1, 0, '{"name":"System - Gantry","type":"plugin","creationDate":"March 9, 2015","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2015 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"4.1.29","description":"Gantry System Plugin for Joomla","group":"","filename":"gantry"}', '{"debugloglevel":"63"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(712, 'rt_afterburner2', 'template', 'rt_afterburner2', '', 0, 1, 1, 0, '{"name":"rt_afterburner2","type":"template","creationDate":"April 19, 2013","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2013 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"1.0","description":"Parent for all PHP based projects","group":""}', '{"master":"true"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(713, 'System - RokExtender', 'plugin', 'rokextender', 'system', 0, 1, 1, 0, '{"name":"System - RokExtender","type":"plugin","creationDate":"October 31, 2012","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2012 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"2.0.0","description":"System - Gantry","group":"","filename":"rokextender"}', '{"registered":"\\/modules\\/mod_roknavmenu\\/lib\\/RokNavMenuEvents.php"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(714, 'RokNavMenu', 'module', 'mod_roknavmenu', '', 0, 1, 1, 0, '{"name":"RokNavMenu","type":"module","creationDate":"February 24, 2015","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2015 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"2.0.8","description":"RocketTheme Customizable Navigation Menu","group":"","filename":"mod_roknavmenu"}', '{"limit_levels":"0","startLevel":"0","endLevel":"0","showAllChildren":"0","filteringspacer2":"","theme":"default","custom_layout":"default.php","custom_formatter":"default.php","cache":"0","module_cache":"1","cache_time":"900","cachemode":"itemid"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(719, 'PortugusBrasileiropt-BR', 'language', 'pt-BR', '', 0, 1, 0, 0, '{"name":"Portugu\\u00eas Brasileiro (pt-BR)","type":"language","creationDate":"07 SEP 2015","author":"Equipe de Tradu\\u00e7\\u00e3o pt-BR","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. Todos os Direitos reservados","authorEmail":"pt-br@joomlacarioca.com.br","authorUrl":"https:\\/\\/brasil.joomla.com","version":"3.4.4.1","description":"Idioma Portugu\\u00eas Brasileiro - Site","group":"","filename":"install"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(720, 'PortugusBrasileiropt-BR', 'language', 'pt-BR', '', 1, 1, 0, 0, '{"name":"Portugu\\u00eas Brasileiro (pt-BR)","type":"language","creationDate":"07 SEP 2015","author":"Equipe de Tradu\\u00e7\\u00e3o pt-BR","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. Todos os Direitos reservados","authorEmail":"pt-br@joomlacarioca.com.br","authorUrl":"http:\\/\\/brasil.joomla.com","version":"3.4.4.1","description":"Idioma Portugu\\u00eas Brasileiro - Administrador","group":"","filename":"install"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(721, 'TinyMCE Idioma Português (Brasil)', 'file', 'TinyMCE_pt-BR', '', 0, 1, 0, 0, '{"name":"TinyMCE Idioma Portugu\\u00eas (Brasil)","type":"file","creationDate":"03 Set 2012","author":"Ponto Mega","copyright":"(C) 2005-2013 Brazilian Translation Team","authorEmail":"traducao@pontomega.com.br","authorUrl":"","version":"3.5.1","description":"\\t\\t\\n\\t\\t<h3><strong>Instala\\u00e7\\u00e3o do pacote de idioma Portugu\\u00eas (Brasil) para o editor TinyMCE 3.5.1 foi conclu\\u00eddo com sucesso.<\\/strong><\\/h3><br\\/>\\n\\t\\tN\\u00e3o se esque\\u00e7a de selecionar o idioma para PT <a href=\\"index.php?option=com_plugins&view=plugins&filter_search=TinyMCE\\"><strong>Gerenciamento de plug-in TinyMCE<\\/strong><\\/a><br \\/>\\n\\t\\tSe voc\\u00ea usar a detec\\u00e7\\u00e3o autom\\u00e1tica, certifique-se de que est\\u00e3o instalados os pacotes de idiomas diferentes para TinyMCE correspondentes aos instalado para o Joomla !<\\/div>\\t<br\\/><br\\/>\\t\\n\\t\\t\\n\\t","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(722, 'Português Brasileiro (pt-BR)', 'package', 'pkg_pt-BR', '', 0, 1, 1, 0, '{"name":"Portugu\\u00eas Brasileiro (pt-BR)","type":"package","creationDate":"07 SEP 2015","author":"Equipe de Tradu\\u00e7\\u00e3o pt-BR","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. Todos os Direitos Reservados","authorEmail":"pt-br@joomlacarioca.com.br","authorUrl":"http:\\/\\/brasil.joomla.com","version":"3.4.4.1","description":"<div style=\\"text-align:left;\\">\\n  <h2>Pacote de Idioma Portugu\\u00eas Brasileiro (pt-BR) completo para Joomla! 3.4.4 instalado com sucesso!<\\/h2>\\n  <h3>Vers\\u00e3o 3.4.4v1 <\\/h3>\\n  <p>Por favor, informe qualquer problema ou assunto relacionado encontrado na p\\u00e1gina <a href=\\"https:\\/\\/www.facebook.com\\/groups\\/traduzjoomla\\/\\" target=\\"_blank\\">Grupo Tradu\\u00e7\\u00f5es Joomla pt-BR<\\/a> no Facebook.<\\/p>\\n  <p>Traduzido pela <a href=\\"http:\\/\\/brasil.joomla.com\\/como-participar\\/9-traducao-no-projeto\\" target=\\"_blank\\">Equipe de Tradu\\u00e7\\u00e3o Portugu\\u00eas Brasileiro<\\/a>.<\\/p>\\n  <h2>Successfully installed the Full Brazilian Portugues (pt-BR) Language Pack for Joomla! 3.4.4<\\/h2>\\n  <h3>Version 3.4.4v1<\\/h3>\\n  <p>Please report any bugs or issues at the <a href=\\"https:\\/\\/www.facebook.com\\/groups\\/traduzjoomla\\/\\" target=\\"_blank\\">pt-BR Translation Group<\\/a> Facebook page.<\\/p>\\n  <p>Translated by the <a href=\\"http:\\/\\/brasil.joomla.com\\/como-participar\\/9-traducao-no-projeto\\" target=\\"_blank\\">Brazilian Portuguese Translation Team<\\/a>.<\\/p>\\n  <\\/div>","group":"","filename":"pkg_pt-BR"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(723, 'News Show Pro GK5', 'module', 'mod_news_pro_gk5', '', 0, 1, 0, 0, '{"name":"News Show Pro GK5","type":"module","creationDate":"11\\/12\\/2015","author":"Gavick.com","copyright":"(C) 2009-2015 Gavick.com","authorEmail":"info@gavick.com","authorUrl":"www.gavick.com","version":"1.9.3.1","description":"\\n\\t\\n\\t\\t<style type=''text\\/css''>\\n\\t\\t\\tspan.readonly { padding: 10px; font-family: Arial; font-size:13px !important; font-weight: normal !important; text-align: justify; color: #4d4d4d; line-height: 24px; } \\n\\t\\t\\tspan.readonly h1 { clear:both; font-family: Georgia, sans-serif; font-size:38px; margin:30px 20px 23px; padding:0px 0px 24px 10px; color:#333; border-bottom: 1px solid #eee; font-weight: normal; } \\n\\t\\t\\tspan.readonly p { margin: 0 26px 10px } \\n\\t\\t\\tspan.readonly p a { color: #ef6b09 } \\n\\t\\t\\tspan.readonly p.homepage { margin-top: 30px } \\n\\t\\t\\tspan.readonly p.license { border-top: 1px solid #eee; font-size: 11px; margin: 30px 26px 0; padding: 6px 0; }\\n\\t\\t\\tspan.tooltip-content { display: none; }\\n\\t\\t\\t.tip-text span.readonly { display: none; }\\n\\t\\t\\t.tip-text span.tooltip-content { display: block; }\\n\\t\\t<\\/style>\\n\\t\\t<span class=''readonly''>\\n\\t\\t\\t<h1>News Show Pro GK5 <small>ver. 1.9.3.1<\\/small><\\/h1>\\n\\t\\t\\t<p>GK5 is new generation of our extensions dedicated to Joomla 3+.<\\/p>\\n\\t\\t\\t<p>Basing on experiences gathered, we created probably the best tool to present articles for Joomla! Huge amount of options and possibilities of formatting causes News Show Pro GK5 is a complex tool in making www pages content attractive. News Show Pro is appropriate while preparing simple structures with an individual article, the same as, complex arrangements including few articles and a list of links.<\\/p> \\n\\t\\t\\t<p class=''homepage''><a href=''http:\\/\\/www.gavick.com\\/news-show-pro-gk5.html'' target=''_blank''>Learn more at the NSP GK5 project website.<\\/a><\\/p>\\n\\t\\t\\t<p class=''license''>News Show Pro GK5 is released under the <a target=\\"_blank\\" href=\\"http:\\/\\/www.gnu.org\\/licenses\\/gpl-2.0.html\\">GNU\\/GPL v2 license.<\\/a><\\/p>\\n\\t\\t<\\/span>\\n\\t\\t<span class=''tooltip-content''>Advanced content module for Joomla! 3<\\/span>\\n\\t\\n\\t","group":"","filename":"mod_news_pro_gk5"}', '{"moduleclass_sfx":"","module_unique_id":"","module_mode":"normal","use_own_article_format":"0","article_format":"","data_source":"","source_name":"com_content","com_content_categories":"","com_content_articles":"","k2_categories":"","k2_tags":"","k2_articles":"","rss_feed":"","json_file":"","xml_file":"","news_sort_value":"created","news_sort_order":"DESC","offset":"0","news_since":"","news_in":"","news_featured":"1","only_featured":"0","news_unauthorized":"0","time_offset":"0","thumb_image_type":"first","com_content_comments_source":"none","k2_comments_source":"k2","k2_image_size":"Generic","rss_cache_time":"60","portal_mode_news_gallery_amount":"10","portal_mode_news_gallery_cols":"3","portal_mode_news_gallery_pagination_type":"arrows","portal_mode_news_gallery_autoanimation":"1","portal_mode_news_gallery_autoanimation_time":"5000","portal_mode_product_gallery_amount":"10","portal_mode_product_gallery_cols":"3","portal_mode_product_gallery_nav":"1","portal_mode_product_gallery_autoanimation":"1","portal_mode_product_gallery_autoanimation_time":"5000","portal_mode_news_blocks_cols":"2","portal_mode_news_blocks_rows":"2","portal_mode_title_overlay_text_pos":"top","portal_mode_title_overlay_text_padding":"30px","portal_mode_title_overlay_text_bg":"transparent","portal_mode_title_overlay_text_width":"100","portal_mode_portfolio_initial_anim":"0","portal_mode_portfolio_cols":"3","portal_mode_portfolio_rows":"3","portal_mode_portfolio_pages":"3","portal_mode_portfolio_link":"1","portal_mode_portfolio_link_url":"","news_full_pages":"3","news_column":"1","news_rows":"1","top_interface_style":"arrows_with_pagination","news_content_header_pos":"left","news_content_header_float":"none","news_header_link":"1","use_title_alias":"0","title_limit_type":"chars","title_limit":"40","news_content_image_pos":"left","news_content_image_float":"left","news_image_link":"1","news_content_text_pos":"left","news_content_text_float":"left","news_text_link":"0","news_limit_type":"words","news_limit":"30","clean_xhtml":"1","more_text_value":"...","parse_plugins":"0","clean_plugins":"0","news_content_info_pos":"left","news_content_info_float":"none","news_content_info2_pos":"left","news_content_info2_float":"left","info_format":"%DATE %HITS %CATEGORY %AUTHOR","info2_format":"","category_link":"1","date_format":"d-m-Y","date_publish":"0","username":"0","user_avatar":"1","avatar_size":"16","art_padding":"0 20px 20px 0","news_header_order":"1","news_header_enabled":"1","news_image_order":"3","news_image_enabled":"1","news_text_order":"4","news_text_enabled":"1","news_info_order":"2","news_info_enabled":"1","news_info2_order":"5","news_info2_enabled":"1","news_content_readmore_pos":"right","news_readmore_enabled":"1","news_short_pages":"3","links_amount":"3","links_columns_amount":"1","bottom_interface_style":"arrows_with_pagination","links_margin":"0","links_position":"bottom","links_width":"50","list_title_limit_type":"words","list_title_limit":"20","list_text_limit_type":"words","list_text_limit":"30","responsive_images":"0","wrap_content":"0","memory_limit":"128M","use_curl_download":"0","create_thumbs":"0","img_auto_scale":"1","img_keep_aspect_ratio":"0","img_width":"160","img_height":"120","img_margin":"6px 14px 0 0","img_bg":"#000","img_stretch":"0","img_quality":"95","cache_time":"30","simple_crop_editor":"","simple_crop_top":"0","simple_crop_bottom":"0","simple_crop_left":"0","simple_crop_right":"0","crop_rules":"","grayscale_filter":"0","sepia_filter":"0","blur_filter":"0","brightness_filter":"0","smooth_filter":"0","pixelate_filter":"0","contrast_filter":"0","filter_arg":"0","autoanim":"0","hover_anim":"0","animation_speed":"400","animation_interval":"5000","animation_function":"Fx.Transitions.Expo.easeIn","useCSS":"1","useScript":"2","engine_mode":"mootools","include_jquery":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(724, 'com_phocadownload', 'component', 'com_phocadownload', '', 1, 1, 0, 0, '{"name":"com_phocadownload","type":"component","creationDate":"30\\/05\\/2013","author":"Jan Pavelka (www.phoca.cz)","copyright":"Jan Pavelka","authorEmail":"","authorUrl":"www.phoca.cz","version":"3.0.0","description":"Phoca Download","group":""}', '{"filename_or_name":"filename","display_downloads":"0","display_description":"0","display_main_cat_desc":"0","display_detail":"0","display_new":"0","display_hot":"0","display_most_download":"1","display_file_view":"0","display_date_type":"0","download_external_link":"_self","download_metadesc":"","download_metakey":"","category_ordering":"1","file_ordering":"1","default_pagination":"999","pagination":"999","display_num_doc_secs":"0","display_num_doc_secs_header":"1","display_up_icon":"0","display_mirror_links":"0","display_report_link":"0","report_link_guestbook_id":"","tags_links":"0","display_tags_links":"0","license_box_height":"300","display_category_comments":"0","display_file_comments":"0","fb_comment_app_id":"","fb_comment_width":"550","fb_comment_lang":"en_US","fb_comment_count":"","display_rating_file":"0","file_icon_size":"16","file_icon_size_md":"16","file_icon_mime":"1","display_specific_layout":"0","display_play":"0","player_width":"328","player_height":"200","player_mp3_height":"30","play_popup_window":"0","display_preview":"0","preview_width":"640","preview_height":"480","preview_popup_window":"0","youtube_height_cv":"240","youtube_width_cv":"320","youtube_height_dv":"360","youtube_width_dv":"480","ignore_file_types_check":"2","allowed_file_types_download":"{hqx=application\\/mac-binhex40} {cpt=application\\/mac-compactpro} {csv=text\\/x-comma-separated-values} {bin=application\\/macbinary} {dms=application\\/octet-stream} {lha=application\\/octet-stream} {lzh=application\\/octet-stream} {exe=application\\/octet-stream} {class=application\\/octet-stream} {psd=application\\/x-photoshop} {so=application\\/octet-stream} {sea=application\\/octet-stream} {dll=application\\/octet-stream} {oda=application\\/oda} {pdf=application\\/pdf} {ai=application\\/postscript} {eps=application\\/postscript} {ps=application\\/postscript} {smi=application\\/smil} {smil=application\\/smil} {mif=application\\/vnd.mif} {xls=application\\/vnd.ms-excel} {ppt=application\\/powerpoint} {wbxml=application\\/wbxml} {wmlc=application\\/wmlc} {dcr=application\\/x-director} {dir=application\\/x-director} {dxr=application\\/x-director} {dvi=application\\/x-dvi} {gtar=application\\/x-gtar} {gz=application\\/x-gzip} {php=application\\/x-httpd-php} {php4=application\\/x-httpd-php} {php3=application\\/x-httpd-php} {phtml=application\\/x-httpd-php} {phps=application\\/x-httpd-php-source} {js=application\\/x-javascript} {swf=application\\/x-shockwave-flash} {sit=application\\/x-stuffit} {tar=application\\/x-tar} {tgz=application\\/x-tar} {xhtml=application\\/xhtml+xml} {xht=application\\/xhtml+xml} {zip=application\\/x-zip} {mid=audio\\/midi} {midi=audio\\/midi} {mpga=audio\\/mpeg} {mp2=audio\\/mpeg} {mp3=audio\\/mpeg} {aif=audio\\/x-aiff} {aiff=audio\\/x-aiff} {aifc=audio\\/x-aiff} {ram=audio\\/x-pn-realaudio} {rm=audio\\/x-pn-realaudio} {rpm=audio\\/x-pn-realaudio-plugin} {ra=audio\\/x-realaudio} {rv=video\\/vnd.rn-realvideo} {wav=audio\\/x-wav} {bmp=image\\/bmp} {gif=image\\/gif} {jpeg=image\\/jpeg} {jpg=image\\/jpeg} {jpe=image\\/jpeg} {png=image\\/png} {tiff=image\\/tiff} {tif=image\\/tiff} {css=text\\/css} {html=text\\/html} {htm=text\\/html} {shtml=text\\/html} {txt=text\\/plain} {text=text\\/plain} {log=text\\/plain} {rtx=text\\/richtext} {rtf=text\\/rtf} {xml=text\\/xml} {xsl=text\\/xml} {mpeg=video\\/mpeg} {mpg=video\\/mpeg} {mpe=video\\/mpeg} {qt=video\\/quicktime} {mov=video\\/quicktime} {avi=video\\/x-msvideo} {flv=video\\/x-flv} {movie=video\\/x-sgi-movie} {doc=application\\/msword} {xl=application\\/excel} {eml=message\\/rfc822} {pptx=application\\/vnd.openxmlformats-officedocument.presentationml.presentation} {xlsx=application\\/vnd.openxmlformats-officedocument.spreadsheetml.sheet} {docx=application\\/vnd.openxmlformats-officedocument.wordprocessingml.document} {rar=application\\/x-rar-compressed} {odb=application\\/vnd.oasis.opendocument.database} {odc=application\\/vnd.oasis.opendocument.chart} {odf=application\\/vnd.oasis.opendocument.formula} {odg=application\\/vnd.oasis.opendocument.graphics} {odi=application\\/vnd.oasis.opendocument.image} {odm=application\\/vnd.oasis.opendocument.text-master} {odp=application\\/vnd.oasis.opendocument.presentation} {ods=application\\/vnd.oasis.opendocument.spreadsheet} {odt=application\\/vnd.oasis.opendocument.text} {sxc=application\\/vnd.sun.xml.calc} {sxd=application\\/vnd.sun.xml.draw} {sxg=application\\/vnd.sun.xml.writer.global} {sxi=application\\/vnd.sun.xml.impress} {sxm=application\\/vnd.sun.xml.math} {sxw=application\\/vnd.sun.xml.writer}","allowed_file_types_upload":"{pdf=application\\/pdf} {ppt=application\\/powerpoint} {gz=application\\/x-gzip} {tar=application\\/x-tar} {tgz=application\\/x-tar} {zip=application\\/x-zip} {bmp=image\\/bmp} {gif=image\\/gif} {jpeg=image\\/jpeg} {jpg=image\\/jpeg} {jpe=image\\/jpeg} {png=image\\/png} {tiff=image\\/tiff} {tif=image\\/tiff} {txt=text\\/plain} {mpeg=video\\/mpeg} {mpg=video\\/mpeg} {mpe=video\\/mpeg} {qt=video\\/quicktime} {mov=video\\/quicktime} {avi=video\\/x-msvideo} {flv=video\\/x-flv} {doc=application\\/msword}","disallowed_file_types_download":"","disallowed_file_types_upload":"","send_mail_download":"0","user_files_max_count_download":"0","enable_user_cp":"0","user_files_max_count":"5","user_files_max_size":"20971520","user_file_upload_size":"3145728","enable_user_upload_approve":"0","user_ucp_lang":"1","send_mail_upload":"0","overwrite_existing_files":"0","pap_copy":"0","upload_maxsize":"3145728","enable_multiple_upload_admin":"0","enable_user_statistics":"1","enable_logging":"0","delete_existing_files":"0","description":"","download_folder":"phocadownload","download_folder_pap":"phocadownloadpap","absolute_path":"","enable_plugin_query":"0","enable_cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(726, 'chronoforms', 'component', 'com_chronoforms', '', 1, 1, 0, 0, '{"name":"ChronoForms","type":"component","creationDate":"25.April.2013","author":"Chronoman","copyright":"ChronoEngine.com 2013","authorEmail":"webmaster@chronoengine.com","authorUrl":"www.chronoengine.com","version":"4.0","description":"Create everytype of Forms with whatever features you like!!","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(801, 'pkg_weblinks', 'package', 'pkg_weblinks', '', 0, 1, 1, 0, '{"name":"pkg_weblinks","type":"package","creationDate":"December 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.1","description":"PKG_WEBLINKS_XML_DESCRIPTION","group":"","filename":"pkg_weblinks"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(803, 'Gantry', 'library', 'lib_gantry', '', 0, 1, 1, 0, '{"name":"Gantry","type":"library","creationDate":"March 9, 2015","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2015 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"4.1.29","description":"Gantry Starting Template for Joomla! v4.1.29","group":"","filename":"lib_gantry"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `irqdj_finder_filters`
--

CREATE TABLE IF NOT EXISTS `irqdj_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `irqdj_finder_links`
--

CREATE TABLE IF NOT EXISTS `irqdj_finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `irqdj_finder_links_terms0`
--

CREATE TABLE IF NOT EXISTS `irqdj_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `irqdj_finder_links_terms1`
--

CREATE TABLE IF NOT EXISTS `irqdj_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `irqdj_finder_links_terms2`
--

CREATE TABLE IF NOT EXISTS `irqdj_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `irqdj_finder_links_terms3`
--

CREATE TABLE IF NOT EXISTS `irqdj_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `irqdj_finder_links_terms4`
--

CREATE TABLE IF NOT EXISTS `irqdj_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `irqdj_finder_links_terms5`
--

CREATE TABLE IF NOT EXISTS `irqdj_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `irqdj_finder_links_terms6`
--

CREATE TABLE IF NOT EXISTS `irqdj_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `irqdj_finder_links_terms7`
--

CREATE TABLE IF NOT EXISTS `irqdj_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `irqdj_finder_links_terms8`
--

CREATE TABLE IF NOT EXISTS `irqdj_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `irqdj_finder_links_terms9`
--

CREATE TABLE IF NOT EXISTS `irqdj_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `irqdj_finder_links_termsa`
--

CREATE TABLE IF NOT EXISTS `irqdj_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `irqdj_finder_links_termsb`
--

CREATE TABLE IF NOT EXISTS `irqdj_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `irqdj_finder_links_termsc`
--

CREATE TABLE IF NOT EXISTS `irqdj_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `irqdj_finder_links_termsd`
--

CREATE TABLE IF NOT EXISTS `irqdj_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `irqdj_finder_links_termse`
--

CREATE TABLE IF NOT EXISTS `irqdj_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `irqdj_finder_links_termsf`
--

CREATE TABLE IF NOT EXISTS `irqdj_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `irqdj_finder_taxonomy`
--

CREATE TABLE IF NOT EXISTS `irqdj_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `irqdj_finder_taxonomy`
--

INSERT INTO `irqdj_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `irqdj_finder_taxonomy_map`
--

CREATE TABLE IF NOT EXISTS `irqdj_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `irqdj_finder_terms`
--

CREATE TABLE IF NOT EXISTS `irqdj_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `irqdj_finder_terms_common`
--

CREATE TABLE IF NOT EXISTS `irqdj_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `irqdj_finder_terms_common`
--

INSERT INTO `irqdj_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('ani', 'en'),
('any', 'en'),
('are', 'en'),
('aren''t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn''t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('noth', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('onli', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('veri', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('whi', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Estrutura da tabela `irqdj_finder_tokens`
--

CREATE TABLE IF NOT EXISTS `irqdj_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT '',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `irqdj_finder_tokens_aggregate`
--

CREATE TABLE IF NOT EXISTS `irqdj_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  `language` char(3) NOT NULL DEFAULT '',
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `irqdj_finder_types`
--

CREATE TABLE IF NOT EXISTS `irqdj_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `irqdj_languages`
--

CREATE TABLE IF NOT EXISTS `irqdj_languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_image` (`image`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `irqdj_languages`
--

INSERT INTO `irqdj_languages` (`lang_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en', '', '', '', '', 1, 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `irqdj_menu`
--

CREATE TABLE IF NOT EXISTS `irqdj_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_path` (`path`(255)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=158 ;

--
-- Extraindo dados da tabela `irqdj_menu`
--

INSERT INTO `irqdj_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 131, 0, '*', 0),
(2, 'mainmenu', 'YABT Brasil', 'yabt-brasil', '', 'yabt-brasil', '', 'separator', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu_image":null}', 3, 12, 0, '*', 0),
(3, 'mainmenu', 'Quem Somos', 'quem-somos', '', 'yabt-brasil/quem-somos', 'index.php?option=com_content&view=article&id=1', 'component', 1, 2, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_section":"","link_section":"","show_category":"","link_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_item_navigation":"","show_readmore":"","show_vote":"","show_icons":"","show_pdf_icon":"","show_print_icon":"","show_email_icon":"","show_hits":"","feed_summary":"","page_title":"","show_page_title":"1","pageclass_sfx":"","menu_image":null,"secure":"0","show_page_heading":"1"}', 4, 5, 0, '*', 0),
(4, 'mainmenu', 'Equipe YABT Brasil', 'equipe-yabt-brasil', '', 'yabt-brasil/equipe-yabt-brasil', 'index.php?option=com_content&view=article&id=2', 'component', 1, 2, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_section":"","link_section":"","show_category":"","link_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_item_navigation":"","show_readmore":"","show_vote":"","show_icons":"","show_pdf_icon":"","show_print_icon":"","show_email_icon":"","show_hits":"","feed_summary":"","page_title":"","show_page_title":"1","pageclass_sfx":"","menu_image":null,"secure":"0","show_page_heading":"1"}', 6, 7, 0, '*', 0),
(5, 'mainmenu', 'Áreas de Atuação', 'areas-de-atuacao', '', 'areas-de-atuacao', 'index.php?option=com_content&view=article&id=3', 'component', -2, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_section":"","link_section":"","show_category":"","link_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_item_navigation":"","show_readmore":"","show_vote":"","show_icons":"","show_pdf_icon":"","show_print_icon":"","show_email_icon":"","show_hits":"","feed_summary":"","page_title":"","show_page_title":"1","pageclass_sfx":"","menu_image":null,"secure":"0","show_page_heading":"1"}', 43, 44, 0, '*', 0),
(6, 'mainmenu', 'Programas', 'programas', '', 'programas', '', 'separator', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu_image":null}', 13, 28, 0, '*', 0),
(7, 'mainmenu', 'Business Labs', 'business-labs', '', 'programas/business-labs', 'index.php?option=com_content&view=article&id=4', 'component', 1, 6, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_section":"","link_section":"","show_category":"","link_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_item_navigation":"","show_readmore":"","show_vote":"","show_icons":"","show_pdf_icon":"","show_print_icon":"","show_email_icon":"","show_hits":"","feed_summary":"","page_title":"","show_page_title":"1","pageclass_sfx":"","menu_image":null,"secure":"0","show_page_heading":"1"}', 14, 21, 0, '*', 0),
(8, 'mainmenu', 'InfoBiz', 'infobiz', '', 'programas/infobiz', 'http://ybiz.org/yabt/programs_and_plans/technology/InfoBiz/infobiz_eng.asp', 'url', 1, 6, 2, 0, 0, '0000-00-00 00:00:00', 1, 1, '', 0, '{"menu_image":null}', 22, 23, 0, '*', 0),
(9, 'mainmenu', 'TIC Américas', 'tic-americas', '', 'programas/tic-americas', 'http://www.meworks.net/meworksv2a/meworks/page.aspx?no=9864', 'url', 1, 6, 2, 0, 0, '0000-00-00 00:00:00', 1, 1, '', 0, '{"menu_image":null}', 24, 25, 0, '*', 0),
(10, 'mainmenu', 'Treinamentos', 'treinamentos', '', 'programas/treinamentos', 'index.php?option=com_content&view=category&layout=blog&id=7', 'component', 1, 6, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_description":"1","show_description_image":"0","num_leading_articles":"0","num_intro_articles":"6","num_columns":"2","num_links":"4","orderby_pri":"order","orderby_sec":"order","multi_column_order":"0","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1","show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_section":"","link_section":"","show_category":"","link_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_item_navigation":"","show_readmore":"","show_vote":"","show_icons":"","show_pdf_icon":"","show_print_icon":"","show_email_icon":"","show_hits":"","feed_summary":"","page_title":"","show_page_title":"1","pageclass_sfx":"","menu_image":null,"secure":"0","show_page_heading":"1"}', 26, 27, 0, '*', 0),
(11, 'mainmenu', 'Biblioteca', 'biblioteca', '', 'biblioteca', 'index.php?option=com_phocadownload&view=category&id=1', 'component', 1, 1, 1, 724, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_pagination":"1","show_pagination_limit":"1","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"dropdown_dropdown_width":""}', 29, 30, 0, '*', 0),
(12, 'mainmenu', 'Notícias', 'noticias', '', 'noticias', 'index.php?option=com_content&view=category&layout=blog&id=6', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_description":"0","show_description_image":"0","num_leading_articles":"0","num_intro_articles":"10","num_columns":"1","num_links":"6","orderby_pri":"","orderby_sec":"","multi_column_order":"0","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1","show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_section":"","link_section":"","show_category":"","link_category":"","show_author":"","show_create_date":"1","show_modify_date":"","show_item_navigation":"1","show_readmore":"","show_vote":"","show_icons":"","show_pdf_icon":"","show_print_icon":"","show_email_icon":"","show_hits":"","feed_summary":"","page_title":"","show_page_title":"0","pageclass_sfx":"","menu_image":null,"secure":"0","show_page_heading":"0"}', 35, 36, 0, '*', 0),
(13, 'mainmenu', 'Participe', 'participe', '', 'participe', 'index.php?option=com_content&view=article&id=34', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_section":"","link_section":"","show_category":"","link_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_item_navigation":"","show_readmore":"","show_vote":"","show_icons":"","show_pdf_icon":"","show_print_icon":"","show_email_icon":"","show_hits":"","feed_summary":"","page_title":"","show_page_title":"1","pageclass_sfx":"","menu_image":null,"secure":"0","show_page_heading":"1"}', 37, 38, 0, '*', 0),
(14, 'mainmenu', 'Sala de Imprensa', 'sala-de-imprensa', '', 'sala-de-imprensa', 'index.php?option=com_phocadownload&view=category&id=11', 'component', 1, 1, 1, 724, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_pagination":"1","show_pagination_limit":"1","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":1,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"dropdown_dropdown_width":""}', 33, 34, 0, '*', 0),
(15, 'mainmenu', 'Áreas de Atuação', 'areas-de-atuacao', '', 'yabt-brasil/areas-de-atuacao', 'index.php?option=com_content&view=article&id=35', 'component', 1, 2, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_section":"","link_section":"","show_category":"","link_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_item_navigation":"","show_readmore":"","show_vote":"","show_icons":"","show_pdf_icon":"","show_print_icon":"","show_email_icon":"","show_hits":"","feed_summary":"","page_title":"","show_page_title":"1","pageclass_sfx":"","menu_image":null,"secure":"0","show_page_heading":"1"}', 8, 9, 0, '*', 0),
(16, 'mainmenu', 'Casos de Sucesso', 'casos-de-sucesso', '', 'casos-de-sucesso', 'index.php?option=com_content&view=article&id=40', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_section":"","link_section":"","show_category":"","link_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_item_navigation":"","show_readmore":"","show_vote":"","show_icons":"","show_pdf_icon":"","show_print_icon":"","show_email_icon":"","show_hits":"","feed_summary":"","page_title":"","show_page_title":"1","pageclass_sfx":"","menu_image":null,"secure":"0","show_page_heading":"1"}', 31, 32, 0, '*', 0),
(17, 'mainmenu', 'Nossos Parceiros', 'nossos-parceiros', '', 'yabt-brasil/nossos-parceiros', 'index.php?option=com_content&view=article&id=41', 'component', 1, 2, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_section":"","link_section":"","show_category":"","link_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_item_navigation":"0","show_readmore":"","show_vote":"","show_icons":"","show_pdf_icon":"","show_print_icon":"","show_email_icon":"","show_hits":"","feed_summary":"","page_title":"","show_page_title":"1","pageclass_sfx":"","menu_image":null,"secure":"0","show_page_heading":"1"}', 10, 11, 0, '*', 0),
(18, 'mainmenu', 'Contato', 'contato', '', 'contato', 'index.php?option=com_content&view=article&id=42', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"0","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"0","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":1,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"dropdown_dropdown_width":""}', 39, 40, 0, '*', 0),
(19, 'mainmenu', 'Cadastre-se', 'cadastre-se', '', 'programas/business-labs/cadastre-se', 'index.php?option=com_chronoforms&view=form', 'component', 1, 7, 3, 726, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"formname":"cadastro","event":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"dropdown_dropdown_width":""}', 15, 16, 0, '*', 0),
(20, 'mainmenu', 'Salvador/BA', 'salvadorba', '', 'programas/business-labs/salvadorba', 'index.php?option=com_content&view=category&layout=blog&id=17', 'component', 1, 7, 3, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_heading_title_text":"","show_category_title":"","show_description":"1","show_description_image":"0","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"0","num_intro_articles":"999","num_columns":"1","num_links":"0","multi_column_order":"0","show_subcategory_content":"","orderby_pri":"","orderby_sec":"order","order_date":"","show_pagination":"0","show_pagination_results":"1","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"1","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":1,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 17, 18, 0, '*', 0),
(21, 'mainmenu', 'Laboratórios Empresariais', 'laboratorios-empresariais', '', 'programas/business-labs/laboratorios-empresariais', 'index.php?option=com_content&view=article&id=4', 'component', 1, 7, 3, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_section":"","link_section":"","show_category":"","link_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_item_navigation":"","show_readmore":"","show_vote":"","show_icons":"","show_pdf_icon":"","show_print_icon":"","show_email_icon":"","show_hits":"","feed_summary":"","page_title":"","show_page_title":"1","pageclass_sfx":"","menu_image":null,"secure":"0","show_page_heading":"1"}', 19, 20, 0, '*', 0),
(22, 'mainmenu', 'teste', 'teste', '', 'teste', 'index.php?option=com_phocadownload&view=category&id=8', 'component', -2, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_pagination":"1","show_pagination_limit":"1","filename_or_name":"","download_external_link":"","display_downloads":"","display_description":"","display_detail":"","display_new":"","display_hot":"","display_most_download":"","display_file_view":"","display_date_type":"","download_metadesc":"","download_metakey":"","section_ordering":"","category_ordering":"","file_ordering":"","default_pagination":"","pagination":"","display_up_icon":"","enable_plugin_query":"","display_category_comments":"","display_file_comments":"","file_icon_size":"","file_icon_size_md":"","button_style":"","theme":"","display_num_doc_secs":"","display_num_doc_secs_header":"","license_box_height":"","display_play":"","player_width":"","player_height":"","player_mp3_height":"","play_popup_window":"","display_preview":"","preview_width":"","preview_height":"","preview_popup_window":"","enable_user_cp":"","user_files_max_count":"","user_files_max_size":"","user_file_upload_size":"","enable_user_upload_approve":"","page_title":"","show_page_title":"1","pageclass_sfx":"","menu_image":null,"secure":"0","show_page_heading":"1"}', 41, 42, 0, '*', 0),
(23, 'othermenu', 'Downloads Diversos', 'downloads-diversos', '', 'downloads-diversos', 'index.php?option=com_phocadownload&view=category&id=8', 'component', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_pagination":"1","show_pagination_limit":"1","filename_or_name":"","download_external_link":"","display_downloads":"","display_description":"","display_detail":"","display_new":"","display_hot":"","display_most_download":"","display_file_view":"","display_date_type":"","download_metadesc":"","download_metakey":"","section_ordering":"","category_ordering":"","file_ordering":"","default_pagination":"","pagination":"","display_up_icon":"","enable_plugin_query":"","display_category_comments":"","display_file_comments":"","file_icon_size":"","file_icon_size_md":"","button_style":"","theme":"","display_num_doc_secs":"","display_num_doc_secs_header":"","license_box_height":"","display_play":"","player_width":"","player_height":"","player_mp3_height":"","play_popup_window":"","display_preview":"","preview_width":"","preview_height":"","preview_popup_window":"","enable_user_cp":"","user_files_max_count":"","user_files_max_size":"","user_file_upload_size":"","enable_user_upload_approve":"","page_title":"","show_page_title":"1","pageclass_sfx":"","menu_image":null,"secure":"0","show_page_heading":"1"}', 47, 48, 0, '*', 0),
(25, 'menu', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 0, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 49, 58, 0, '*', 1),
(26, 'menu', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 0, 25, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 50, 51, 0, '*', 1),
(27, 'menu', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 0, 25, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 52, 53, 0, '*', 1),
(28, 'menu', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 0, 25, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 54, 55, 0, '*', 1),
(29, 'menu', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 0, 25, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 56, 57, 0, '*', 1),
(30, 'menu', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 0, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 59, 64, 0, '*', 1),
(31, 'menu', 'com_contact', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 0, 30, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 60, 61, 0, '*', 1),
(32, 'menu', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 0, 30, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 62, 63, 0, '*', 1),
(33, 'menu', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 0, 1, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 65, 70, 0, '*', 1),
(34, 'menu', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 0, 33, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 66, 67, 0, '*', 1),
(35, 'menu', 'com_messages_read', 'Read Private Message', '', 'Messaging/Read Private Message', 'index.php?option=com_messages', 'component', 0, 33, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-read', 0, '', 68, 69, 0, '*', 1),
(36, 'menu', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 71, 76, 0, '*', 1),
(37, 'menu', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 36, 2, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 72, 73, 0, '*', 1),
(38, 'menu', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 0, 36, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 74, 75, 0, '*', 1),
(39, 'menu', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 0, 1, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 77, 78, 0, '*', 1),
(40, 'menu', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 0, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 79, 80, 0, '*', 1),
(44, 'menu', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 0, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 81, 82, 0, '*', 1),
(45, 'menu', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 0, 1, 1, 28, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 83, 84, 0, '*', 1),
(46, 'main', 'com_tags', 'Tags', '', 'Tags', 'index.php?option=com_tags', 'component', 0, 1, 1, 29, 0, '0000-00-00 00:00:00', 0, 1, 'class:tags', 0, '', 85, 86, 0, '', 1),
(124, 'mainmenu', 'Home', 'home', '', 'home', 'index.php?option=com_content&view=article&id=50', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"0","link_titles":"0","show_intro":"0","info_block_position":"","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_tags":"","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"0","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"YABT Brasil - Young Americas Business Trust","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"dropdown_dropdown_width":""}', 1, 2, 1, '*', 0),
(130, 'main', 'COM_PHOCADOWNLOAD', 'com-phocadownload', '', 'com-phocadownload', 'index.php?option=com_phocadownload', 'component', 0, 1, 1, 724, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_phocadownload/images/administrator/icon-16-pdl-menu.png', 0, '', 87, 114, 0, '', 1),
(131, 'main', 'COM_PHOCADOWNLOAD_CONTROLPANEL', 'com-phocadownload-controlpanel', '', 'com-phocadownload/com-phocadownload-controlpanel', 'index.php?option=com_phocadownload', 'component', 0, 130, 2, 724, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_phocadownload/images/administrator/icon-16-pdl-control-panel.png', 0, '', 88, 89, 0, '', 1),
(132, 'main', 'COM_PHOCADOWNLOAD_FILES', 'com-phocadownload-files', '', 'com-phocadownload/com-phocadownload-files', 'index.php?option=com_phocadownload&view=phocadownloadfiles', 'component', 0, 130, 2, 724, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_phocadownload/images/administrator/icon-16-pdl-menu-files.png', 0, '', 90, 91, 0, '', 1),
(133, 'main', 'COM_PHOCADOWNLOAD_CATEGORIES', 'com-phocadownload-categories', '', 'com-phocadownload/com-phocadownload-categories', 'index.php?option=com_phocadownload&view=phocadownloadcats', 'component', 0, 130, 2, 724, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_phocadownload/images/administrator/icon-16-pdl-menu-category.png', 0, '', 92, 93, 0, '', 1),
(134, 'main', 'COM_PHOCADOWNLOAD_LICENSES', 'com-phocadownload-licenses', '', 'com-phocadownload/com-phocadownload-licenses', 'index.php?option=com_phocadownload&view=phocadownloadlics', 'component', 0, 130, 2, 724, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_phocadownload/images/administrator/icon-16-pdl-menu-lic.png', 0, '', 94, 95, 0, '', 1),
(135, 'main', 'COM_PHOCADOWNLOAD_STATISTICS', 'com-phocadownload-statistics', '', 'com-phocadownload/com-phocadownload-statistics', 'index.php?option=com_phocadownload&view=phocadownloadstat', 'component', 0, 130, 2, 724, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_phocadownload/images/administrator/icon-16-pdl-menu-stat.png', 0, '', 96, 97, 0, '', 1),
(136, 'main', 'COM_PHOCADOWNLOAD_DOWNLOADS', 'com-phocadownload-downloads', '', 'com-phocadownload/com-phocadownload-downloads', 'index.php?option=com_phocadownload&view=phocadownloaddownloads', 'component', 0, 130, 2, 724, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_phocadownload/images/administrator/icon-16-pdl-menu-downloads.png', 0, '', 98, 99, 0, '', 1),
(137, 'main', 'COM_PHOCADOWNLOAD_UPLOADS', 'com-phocadownload-uploads', '', 'com-phocadownload/com-phocadownload-uploads', 'index.php?option=com_phocadownload&view=phocadownloaduploads', 'component', 0, 130, 2, 724, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_phocadownload/images/administrator/icon-16-pdl-menu-uploads.png', 0, '', 100, 101, 0, '', 1),
(138, 'main', 'COM_PHOCADOWNLOAD_FILE_RATING', 'com-phocadownload-file-rating', '', 'com-phocadownload/com-phocadownload-file-rating', 'index.php?option=com_phocadownload&view=phocadownloadrafile', 'component', 0, 130, 2, 724, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_phocadownload/images/administrator/icon-16-pdl-menu-vote-file.png', 0, '', 102, 103, 0, '', 1),
(139, 'main', 'COM_PHOCADOWNLOAD_TAGS', 'com-phocadownload-tags', '', 'com-phocadownload/com-phocadownload-tags', 'index.php?option=com_phocadownload&view=phocadownloadtags', 'component', 0, 130, 2, 724, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_phocadownload/images/administrator/icon-16-pdl-menu-tags.png', 0, '', 104, 105, 0, '', 1),
(140, 'main', 'COM_PHOCADOWNLOAD_LAYOUT', 'com-phocadownload-layout', '', 'com-phocadownload/com-phocadownload-layout', 'index.php?option=com_phocadownload&view=phocadownloadlayouts', 'component', 0, 130, 2, 724, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_phocadownload/images/administrator/icon-16-pdl-menu-layout.png', 0, '', 106, 107, 0, '', 1),
(141, 'main', 'COM_PHOCADOWNLOAD_STYLES', 'com-phocadownload-styles', '', 'com-phocadownload/com-phocadownload-styles', 'index.php?option=com_phocadownload&view=phocadownloadstyles', 'component', 0, 130, 2, 724, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_phocadownload/images/administrator/icon-16-pdl-menu-style.png', 0, '', 108, 109, 0, '', 1),
(142, 'main', 'COM_PHOCADOWNLOAD_LOGGING', 'com-phocadownload-logging', '', 'com-phocadownload/com-phocadownload-logging', 'index.php?option=com_phocadownload&view=phocadownloadlogs', 'component', 0, 130, 2, 724, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_phocadownload/images/administrator/icon-16-pdl-menu-logs.png', 0, '', 110, 111, 0, '', 1),
(143, 'main', 'COM_PHOCADOWNLOAD_INFO', 'com-phocadownload-info', '', 'com-phocadownload/com-phocadownload-info', 'index.php?option=com_phocadownload&view=phocadownloadinfo', 'component', 0, 130, 2, 724, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_phocadownload/images/administrator/icon-16-pdl-menu-info.png', 0, '', 112, 113, 0, '', 1),
(149, 'main', 'COM_CHRONOFORMS', 'com-chronoforms', '', 'com-chronoforms', 'index.php?option=com_chronoforms', 'component', 0, 1, 1, 726, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_chronoforms/CF.png', 0, '', 115, 124, 0, '', 1),
(150, 'main', 'COM_CHRONOFORMS_FORMS_MANAGER', 'com-chronoforms-forms-manager', '', 'com-chronoforms/com-chronoforms-forms-manager', 'index.php?option=com_chronoforms', 'component', 0, 149, 2, 726, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 116, 117, 0, '', 1),
(151, 'main', 'COM_CHRONOFORMS_WIZARD', 'com-chronoforms-wizard', '', 'com-chronoforms/com-chronoforms-wizard', 'index.php?option=com_chronoforms&task=form_wizard', 'component', 0, 149, 2, 726, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 118, 119, 0, '', 1),
(152, 'main', 'COM_CHRONOFORMS_EASY_WIZARD', 'com-chronoforms-easy-wizard', '', 'com-chronoforms/com-chronoforms-easy-wizard', 'index.php?option=com_chronoforms&task=form_wizard&wizard_mode=easy', 'component', 0, 149, 2, 726, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 120, 121, 0, '', 1),
(153, 'main', 'COM_CHRONOFORMS_VALIDATE', 'com-chronoforms-validate', '', 'com-chronoforms/com-chronoforms-validate', 'index.php?option=com_chronoforms&task=validatelicense', 'component', 0, 149, 2, 726, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 122, 123, 0, '', 1),
(154, 'main', 'com_postinstall', 'Post-installation messages', '', 'Post-installation messages', 'index.php?option=com_postinstall', 'component', 0, 1, 1, 32, 0, '0000-00-00 00:00:00', 0, 1, 'class:postinstall', 0, '', 45, 46, 0, '*', 1),
(155, 'main', 'com_weblinks', 'com-weblinks', '', 'com-weblinks', 'index.php?option=com_weblinks', 'component', 0, 1, 1, 21, 0, '0000-00-00 00:00:00', 0, 1, 'class:weblinks', 0, '{}', 125, 130, 0, '', 1),
(156, 'main', 'com_weblinks_links', 'com-weblinks-links', '', 'com-weblinks/com-weblinks-links', 'index.php?option=com_weblinks', 'component', 0, 155, 2, 21, 0, '0000-00-00 00:00:00', 0, 1, 'class:weblinks', 0, '{}', 126, 127, 0, '', 1),
(157, 'main', 'com_weblinks_categories', 'com-weblinks-categories', '', 'com-weblinks/com-weblinks-categories', 'index.php?option=com_categories&extension=com_weblinks', 'component', 0, 155, 2, 21, 0, '0000-00-00 00:00:00', 0, 1, 'class:weblinks-cat', 0, '{}', 128, 129, 0, '', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `irqdj_menu_types`
--

CREATE TABLE IF NOT EXISTS `irqdj_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Extraindo dados da tabela `irqdj_menu_types`
--

INSERT INTO `irqdj_menu_types` (`id`, `menutype`, `title`, `description`) VALUES
(1, 'mainmenu', 'Main Menu', 'The main menu for the site'),
(2, 'othermenu', 'Other Menu', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `irqdj_messages`
--

CREATE TABLE IF NOT EXISTS `irqdj_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `irqdj_messages_cfg`
--

CREATE TABLE IF NOT EXISTS `irqdj_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `irqdj_modules`
--

CREATE TABLE IF NOT EXISTS `irqdj_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=92 ;

--
-- Extraindo dados da tabela `irqdj_modules`
--

INSERT INTO `irqdj_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 0, 'Menu Cabeçalho', '', '', 1, 'header-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_menu', 1, 0, '{"menutype":"mainmenu","menu_style":"list","startLevel":"0","endLevel":"0","showAllChildren":"1","window_open":"","show_whitespace":"0","cache":"1","tag_id":"","class_sfx":"","moduleclass_sfx":"_menu","maxdepth":"10","menu_images":"0","menu_images_align":"0","menu_images_link":"0","expand_menu":"0","activate_parent":"0","full_active_id":"0","indent_image":"0","indent_image1":"","indent_image2":"","indent_image3":"","indent_image4":"","indent_image5":"","indent_image6":"","spacer":"","end_spacer":""}', 0, '*'),
(2, 0, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 0, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(4, 0, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(8, 0, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 0, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 0, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{"count":"5","name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(12, 0, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"}', 1, '*'),
(13, 0, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 0, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 0, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 0, 'Young Americas Business Trust', '', '<center><img src="images/stories/oeasite.jpg" alt="oea" title="oea" /></center>\r\n<br />O YABT Brasil é uma unidade nacional do Young Americas Business Trust, afiliado à Secretaria Geral da OEA.', 1, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"moduleclass_sfx":""}', 0, '*'),
(17, 0, 'Navegação', '', '', 1, 'breadcrumb', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 1, 0, '{"showHere":"1","showHome":"1","homeText":"Home","showLast":"1","separator":"","layout":"_:default","moduleclass_sfx":"","cache":"0","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(18, 0, 'Mais Lidos', '', '', 1, 'bottom-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_popular', 1, 1, '{"moduleclass_sfx":"","show_front":"1","count":"5","catid":"","secid":"","cache":"1","cache_time":"900"}', 0, '*'),
(19, 0, 'Parceiros em Destaque', '', '<center> <a target="_blank" href="http://www.ceade.org.br"><img style="border-width: 0px; margin: 6px;" alt="ceade" src="images/stories/ceade.jpg" height="87" width="125" /></a> <br /><br /><img style="border-width: 0px; margin: 6px;" alt="worldbank" src="images/stories/parceiros/worldbank.jpg" height="72" width="104" /> <br />&nbsp; <br /> <a target="_blank" href="http://www.datamallmr.com.br/"><img style="border-width: 0px; margin: 6px;" alt="datamall" src="images/stories/parceiros/datamall.jpg" height="30" width="137" /></a><br /><br /> <a target="_blank" href="http://www.acbeubahia.org.br/"><img style="border-width: 0px; margin: 6px;" alt="acbeu" src="images/stories/parceiros/acbeu.jpg" height="49" width="112" /></a>\r\n<p><img style="margin: 6px;" alt="LOGO_PMS_SETAD" src="images/stories/LOGO_PMS_SETAD.jpg" height="126" width="139" /></p>\r\n<p><img style="margin: 6px; border-width: 0px;" alt="SOL_EXPRESS" src="images/stories/SOL_EXPRESS.png" height="131" width="158" /></p>\r\n</center>', 2, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"moduleclass_sfx":""}', 0, '*'),
(20, 0, 'Tic Americas 2011', '', '<a href="http://www.ticamericas.net"><img src="images/stories/tic americas 11.gif" /></a>', 3, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"moduleclass_sfx":""}', 0, '*'),
(23, 0, 'Últimas Notícias', '', '', 2, 'content-top-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_news_pro_gk1', 1, 1, '{"moduleclass_sfx":"","module_unique_id":"newspro1","width_module":"600","width_links":"300","td_padding":"4","section":"6","category":"6","sections":"","categories":"","ids":"","mode":"standard","news_full_pages":"4","news_short_pages":"0","news_column":"2","news_rows":"1","links_amount":"0","news_sort_value":"created","news_sort_order":"DESC","news_frontpage":"0","unauthorized":"0","only_frontpage":"0","startposition":"0","show_list":"1","list_position":"right","interface_style":"1","show_category":"1","news_readmore_text":"Leia Mais","news_header_link":"1","news_image_link":"1","news_text_link":"0","news_author":"0","news_cats":"1","news_comments":"0","news_date":"1","news_hits":"0","news_more_in":"1","date_format":"D, d M Y","date_publish":"0","username":"0","news_content_header_pos":"1","news_content_image_pos":"1","news_content_text_pos":"1","news_content_info_pos":"1","news_content_readmore_pos":"1","news_header_order":"1","news_image_order":"2","news_text_order":"3","news_info_order":"4","head_nofollow":"0","image_nofollow":"0","text_nofollow":"0","info_nofollow":"0","list_nofollow":"0","readmore_nofollow":"0","head_target":"0","image_target":"0","text_target":"0","info_target":"0","list_target":"0","readmore_target":"0","news_limit_type":"0","news_limit":"50","title_limit":"999","list_title_limit":"50","list_text_limit":"50","show_list_desc":"1","clean_xhtml":"1","plugin_support":"0","only_plugin":"0","default_image":"1","create_thumbs":"1","img_width":"100px","img_height":"100px","img_margin":"3px","img_bg":"#000","img_stretch":"0","img_quality":"95","cache_time":"30","autoanim":"1","animation_speed":"500","animation_interval":"8000","parse_plugins":"0","clean_plugins":"0","useCSS":"1","useMoo":"2","useScript":"2","compress_js":"1"}', 0, '*'),
(24, 0, 'Treinamentos', '', '', 3, 'content-top-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_news_pro_gk1', 1, 1, '{"moduleclass_sfx":"","module_unique_id":"newspro2","width_module":"600","width_links":"300","td_padding":"4","section":"2","category":"7","sections":"","categories":"","ids":"","mode":"standard","news_full_pages":"10","news_short_pages":"0","news_column":"2","news_rows":"1","links_amount":"0","news_sort_value":"created","news_sort_order":"DESC","news_frontpage":"0","unauthorized":"0","only_frontpage":"0","startposition":"0","show_list":"1","list_position":"right","interface_style":"1","show_category":"1","news_readmore_text":"Leia Mais","news_header_link":"1","news_image_link":"1","news_text_link":"0","news_author":"0","news_cats":"1","news_comments":"0","news_date":"1","news_hits":"0","news_more_in":"1","date_format":"D, d M Y","date_publish":"0","username":"0","news_content_header_pos":"1","news_content_image_pos":"1","news_content_text_pos":"1","news_content_info_pos":"1","news_content_readmore_pos":"1","news_header_order":"1","news_image_order":"2","news_text_order":"3","news_info_order":"4","head_nofollow":"0","image_nofollow":"0","text_nofollow":"0","info_nofollow":"0","list_nofollow":"0","readmore_nofollow":"0","head_target":"0","image_target":"0","text_target":"0","info_target":"0","list_target":"0","readmore_target":"0","news_limit_type":"0","news_limit":"50","title_limit":"999","list_title_limit":"50","list_text_limit":"50","show_list_desc":"1","clean_xhtml":"1","plugin_support":"0","only_plugin":"0","default_image":"1","create_thumbs":"1","img_width":"100px","img_height":"100px","img_margin":"3px","img_bg":"#000","img_stretch":"0","img_quality":"95","cache_time":"30","autoanim":"1","animation_speed":"500","animation_interval":"8000","parse_plugins":"0","clean_plugins":"1","useCSS":"1","useMoo":"2","useScript":"2","compress_js":"1"}', 0, '*'),
(25, 0, 'Cópia de Notícias', '', '', 1, 'maintop-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_news_pro_gk1', 1, 1, '{"moduleclass_sfx":"","module_unique_id":"newspro1","width_module":"600","width_links":"300","td_padding":"4","section":"6","category":"6","sections":"","categories":"","ids":"","mode":"standard","news_full_pages":"10","news_short_pages":"10","news_column":"1","news_rows":"2","links_amount":"6","news_sort_value":"created","news_sort_order":"DESC","news_frontpage":"0","unauthorized":"0","only_frontpage":"0","startposition":"0","show_list":"1","list_position":"right","interface_style":"1","show_category":"1","news_readmore_text":"Leia Mais","news_header_link":"1","news_image_link":"1","news_text_link":"0","news_author":"0","news_cats":"1","news_comments":"0","news_date":"1","news_hits":"0","news_more_in":"1","date_format":"D, d M Y","date_publish":"0","username":"0","news_content_header_pos":"1","news_content_image_pos":"1","news_content_text_pos":"1","news_content_info_pos":"1","news_content_readmore_pos":"1","news_header_order":"1","news_image_order":"2","news_text_order":"3","news_info_order":"4","head_nofollow":"0","image_nofollow":"0","text_nofollow":"0","info_nofollow":"0","list_nofollow":"0","readmore_nofollow":"0","head_target":"0","image_target":"0","text_target":"0","info_target":"0","list_target":"0","readmore_target":"0","news_limit_type":"0","news_limit":"50","title_limit":"999","list_title_limit":"50","list_text_limit":"50","show_list_desc":"1","clean_xhtml":"1","plugin_support":"0","only_plugin":"0","default_image":"1","create_thumbs":"1","img_width":"100px","img_height":"100px","img_margin":"3px","img_bg":"#000","img_stretch":"0","img_quality":"95","cache_time":"30","autoanim":"1","animation_speed":"500","animation_interval":"8000","parse_plugins":"0","clean_plugins":"0","useCSS":"1","useMoo":"2","useScript":"2","compress_js":"1"}', 0, '*'),
(26, 0, 'Public Serve Ads', '', '', 1, 'bottom-c', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(27, 0, 'Webmail YBIZ.NET', '', '<form action="http://ybiz.mail.everyone.net/email/scripts/loginuser.pl" method="post" name="login_form2">\r\n<p><label for="loginName">Usuário:</label> <input type="text" name="loginName" size="21" maxlength="32" /> <label for="user_pwd">Senha:</label> <input type="password" name="user_pwd" size="21" maxlength="32" /></p>\r\n<p><input class="submit" type="submit" name="login" value="login" /></p>\r\n<p>Tenha um e-mail gratuito YBIZ.NET <a href="http://ybiz.mail.everyone.net/email/scripts/useragreement.pl" target="_blank">Inscreva-se!</a></p>\r\n</form>', 1, 'bottom-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(28, 0, 'Slogan', '', '<p><br /><object width="400" height="50" data="images/slogan.swf" type="application/x-shockwave-flash"><param name="src" value="images/slogan.swf" /><param name="wmode" value="transparent" /></object></p>', 1, 'top-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(29, 0, 'ChronoForms', '', '', 2, 'left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_chronocontact', 1, 1, '', 0, '*'),
(30, 0, 'Próximos Cursos', '', '<p><img src="images/stories/banner_lea_home.jpg" alt="banner_lea_home" width="279" height="159" style="margin: 6px; border-width: 0px; float: left;" /><span style="color: #339966;"><strong>Local:</strong></span> <em>CEADe - Comércio - Salvador</em></p>\r\n<p><span style="color: #339966;"><strong>Duração :</strong></span> <em>20 Horas - 2a a 6a Feira</em></p>\r\n<p><span style="color: #339966;"><strong>Turno :</strong></span> <em>Manhã</em></p>\r\n<p><span style="color: #339966;"><strong>Período:</strong></span> <em>Maio a Julho 2011</em></p>\r\n<p><span style="color: #339966;"><strong>Informações:</strong></span> <a href="mailto:assessoria@ybiz.org.br">assessoria@ybiz.org.br</a></p>\r\n<p>    <span style="font-size: 12pt;"> <strong><span style="font-size: 14pt;"><a href="index.php?option=com_chronocontact&amp;Itemid=19">Inscrições AQUI</a>        "<span style="font-family: ''courier new'', courier;">Em</span> <span style="font-family: ''courier new'', courier;">Breve-YABT no Rio de Janeiro"</span></span></strong></span></p>', 1, 'content-top-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(79, 0, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(86, 0, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{"format":"short","product":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(87, 0, 'RokNavMenu', '', '', 1, 'header-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_roknavmenu', 1, 1, '{"menutype":"mainmenu","limit_levels":"0","startLevel":"0","endLevel":"0","showAllChildren":"0","theme":"default","custom_layout":"default.php","custom_formatter":"default.php","roknavmenu_fusion_load_css":"1","roknavmenu_fusion_enable_js":"0","roknavmenu_fusion_opacity":"1","roknavmenu_fusion_effect":"slidefade","roknavmenu_fusion_hidedelay":"500","roknavmenu_fusion_menu_animation":"Quad.easeOut","roknavmenu_fusion_menu_duration":"400","roknavmenu_fusion_pill":"0","roknavmenu_fusion_pill_animation":"Back.easeOut","roknavmenu_fusion_pill_duration":"400","roknavmenu_fusion_centeredOffset":"0","roknavmenu_fusion_tweakInitial_x":"0","roknavmenu_fusion_tweakInitial_y":"0","roknavmenu_fusion_tweakSubsequent_x":"0","roknavmenu_fusion_tweakSubsequent_y":"0","roknavmenu_fusion_enable_current_id":"0","tag_id":"","class_sfx":"","window_open":"","moduleclass_sfx":"","cache":"0","module_cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(88, 0, 'Últimas Notícias', '', '', 1, 'conteudo', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_news_pro_gk5', 1, 1, '{"moduleclass_sfx":"","module_unique_id":"newspro1","module_mode":"normal","use_own_article_format":"0","article_format":"-1","data_source":"com_content_categories","source_name":"com_content","com_content_categories":["6"],"com_content_articles":"","k2_articles":"","rss_feed":"","json_file":"-1","xml_file":"-1","news_sort_value":"created","news_sort_order":"DESC","offset":"0","news_since":"","news_in":"","news_featured":"1","only_featured":"0","news_unauthorized":"0","time_offset":"0","thumb_image_type":"first","com_content_comments_source":"none","k2_comments_source":"k2","k2_image_size":"Generic","rss_cache_time":"60","portal_mode_news_gallery_amount":"10","portal_mode_news_gallery_cols":"3","portal_mode_news_gallery_pagination_type":"arrows","portal_mode_news_gallery_autoanimation":"1","portal_mode_news_gallery_autoanimation_time":"5000","portal_mode_product_gallery_amount":"10","portal_mode_product_gallery_cols":"3","portal_mode_product_gallery_nav":"1","portal_mode_product_gallery_autoanimation":"1","portal_mode_product_gallery_autoanimation_time":"5000","portal_mode_news_blocks_cols":"2","portal_mode_news_blocks_rows":"2","portal_mode_title_overlay_text_pos":"top","portal_mode_title_overlay_text_padding":"30px","portal_mode_title_overlay_text_bg":"transparent","portal_mode_title_overlay_text_width":"100","portal_mode_portfolio_initial_anim":"0","portal_mode_portfolio_cols":"3","portal_mode_portfolio_rows":"3","portal_mode_portfolio_pages":"3","portal_mode_portfolio_link":"1","portal_mode_portfolio_link_url":"","news_full_pages":"3","news_column":"2","news_rows":"1","top_interface_style":"arrows_with_pagination","news_content_header_pos":"left","news_content_header_float":"none","news_header_link":"1","use_title_alias":"0","title_limit_type":"chars","title_limit":"40","news_content_image_pos":"left","news_content_image_float":"left","news_image_link":"1","news_content_text_pos":"left","news_content_text_float":"left","news_text_link":"0","news_limit_type":"words","news_limit":"30","clean_xhtml":"1","more_text_value":"...","parse_plugins":"0","clean_plugins":"0","news_content_info_pos":"left","news_content_info_float":"none","news_content_info2_pos":"left","news_content_info2_float":"left","info_format":"%DATE %HITS %CATEGORY %AUTHOR","info2_format":"","category_link":"1","date_format":"d-m-Y","date_publish":"0","username":"users.name","user_avatar":"1","avatar_size":"16","art_padding":"0 20px 20px 0","news_header_order":"1","news_header_enabled":"1","news_image_order":"3","news_image_enabled":"1","news_text_order":"4","news_text_enabled":"1","news_info_order":"2","news_info_enabled":"1","news_info2_order":"5","news_info2_enabled":"1","news_content_readmore_pos":"right","news_readmore_enabled":"1","news_short_pages":"0","links_amount":"3","links_columns_amount":"1","bottom_interface_style":"arrows_with_pagination","links_margin":"0","links_position":"bottom","links_width":"50","list_title_limit_type":"words","list_title_limit":"20","list_text_limit_type":"words","list_text_limit":"30","responsive_images":"0","wrap_content":"0","memory_limit":"128M","use_curl_download":"0","create_thumbs":"0","img_auto_scale":"1","img_keep_aspect_ratio":"0","img_width":"160","img_height":"120","img_margin":"6px 14px 0 0","img_bg":"#000","img_stretch":"0","img_quality":"95","cache_time":"30","simple_crop_top":"0","simple_crop_bottom":"0","simple_crop_left":"0","simple_crop_right":"0","crop_rules":"","grayscale_filter":"0","sepia_filter":"0","blur_filter":"0","brightness_filter":"0","smooth_filter":"0","pixelate_filter":"0","contrast_filter":"0","filter_arg":"0","autoanim":"1","hover_anim":"0","animation_speed":"400","animation_interval":"5000","animation_function":"Fx.Transitions.Expo.easeIn","useCSS":"1","useScript":"2","engine_mode":"mootools","include_jquery":"0","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(89, 0, 'Treinamentos', '', '', 1, 'content-bottom-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_news_pro_gk5', 1, 1, '{"moduleclass_sfx":"","module_unique_id":"newspro2","module_mode":"normal","use_own_article_format":"0","article_format":"-1","data_source":"com_content_categories","source_name":"com_content","com_content_categories":["7"],"com_content_articles":"","k2_articles":"","rss_feed":"","json_file":"-1","xml_file":"-1","news_sort_value":"created","news_sort_order":"DESC","offset":"0","news_since":"","news_in":"","news_featured":"1","only_featured":"0","news_unauthorized":"0","time_offset":"0","thumb_image_type":"first","com_content_comments_source":"none","k2_comments_source":"k2","k2_image_size":"Generic","rss_cache_time":"60","portal_mode_news_gallery_amount":"10","portal_mode_news_gallery_cols":"3","portal_mode_news_gallery_pagination_type":"arrows","portal_mode_news_gallery_autoanimation":"1","portal_mode_news_gallery_autoanimation_time":"5000","portal_mode_product_gallery_amount":"10","portal_mode_product_gallery_cols":"3","portal_mode_product_gallery_nav":"1","portal_mode_product_gallery_autoanimation":"1","portal_mode_product_gallery_autoanimation_time":"5000","portal_mode_news_blocks_cols":"2","portal_mode_news_blocks_rows":"2","portal_mode_title_overlay_text_pos":"top","portal_mode_title_overlay_text_padding":"30px","portal_mode_title_overlay_text_bg":"transparent","portal_mode_title_overlay_text_width":"100","portal_mode_portfolio_initial_anim":"0","portal_mode_portfolio_cols":"3","portal_mode_portfolio_rows":"3","portal_mode_portfolio_pages":"3","portal_mode_portfolio_link":"1","portal_mode_portfolio_link_url":"","news_full_pages":"3","news_column":"2","news_rows":"1","top_interface_style":"arrows_with_pagination","news_content_header_pos":"left","news_content_header_float":"none","news_header_link":"1","use_title_alias":"0","title_limit_type":"chars","title_limit":"40","news_content_image_pos":"left","news_content_image_float":"left","news_image_link":"1","news_content_text_pos":"left","news_content_text_float":"left","news_text_link":"0","news_limit_type":"words","news_limit":"30","clean_xhtml":"1","more_text_value":"...","parse_plugins":"0","clean_plugins":"0","news_content_info_pos":"left","news_content_info_float":"none","news_content_info2_pos":"left","news_content_info2_float":"left","info_format":"%DATE %HITS %CATEGORY %AUTHOR","info2_format":"","category_link":"1","date_format":"d-m-Y","date_publish":"0","username":"users.name","user_avatar":"1","avatar_size":"16","art_padding":"0 20px 20px 0","news_header_order":"1","news_header_enabled":"1","news_image_order":"3","news_image_enabled":"1","news_text_order":"4","news_text_enabled":"1","news_info_order":"2","news_info_enabled":"1","news_info2_order":"5","news_info2_enabled":"1","news_content_readmore_pos":"right","news_readmore_enabled":"1","news_short_pages":"0","links_amount":"3","links_columns_amount":"1","bottom_interface_style":"arrows_with_pagination","links_margin":"0","links_position":"bottom","links_width":"50","list_title_limit_type":"words","list_title_limit":"20","list_text_limit_type":"words","list_text_limit":"30","responsive_images":"0","wrap_content":"0","memory_limit":"128M","use_curl_download":"0","create_thumbs":"0","img_auto_scale":"1","img_keep_aspect_ratio":"0","img_width":"160","img_height":"120","img_margin":"6px 14px 0 0","img_bg":"#000","img_stretch":"0","img_quality":"95","cache_time":"30","simple_crop_top":"0","simple_crop_bottom":"0","simple_crop_left":"0","simple_crop_right":"0","crop_rules":"","grayscale_filter":"0","sepia_filter":"0","blur_filter":"0","brightness_filter":"0","smooth_filter":"0","pixelate_filter":"0","contrast_filter":"0","filter_arg":"0","autoanim":"1","hover_anim":"0","animation_speed":"400","animation_interval":"5000","animation_function":"Fx.Transitions.Expo.easeIn","useCSS":"1","useScript":"2","engine_mode":"mootools","include_jquery":"0","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(90, 0, 'Copyright', '', '<p>YABT Brasil - Jovens Empresários das Américas</p>', 1, 'footer-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(91, 0, 'Desenvolvido', '', '<p>Desenvolvido por <a href="http://www.devhouse.com.br" target="_blank">DevHouse</a></p>', 1, 'footer-d', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*');

-- --------------------------------------------------------

--
-- Estrutura da tabela `irqdj_modules_menu`
--

CREATE TABLE IF NOT EXISTS `irqdj_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `irqdj_modules_menu`
--

INSERT INTO `irqdj_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 2),
(17, 3),
(17, 4),
(17, 6),
(17, 7),
(17, 8),
(17, 9),
(17, 10),
(17, 11),
(17, 12),
(17, 13),
(17, 14),
(17, 15),
(17, 16),
(17, 17),
(17, 18),
(18, 0),
(19, 0),
(20, 0),
(23, 0),
(24, 0),
(25, 0),
(26, 0),
(27, 0),
(28, 0),
(29, 0),
(30, 124),
(79, 0),
(86, 0),
(88, 124),
(89, 124),
(90, 0),
(91, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `irqdj_newsfeeds`
--

CREATE TABLE IF NOT EXISTS `irqdj_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `images` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `irqdj_overrider`
--

CREATE TABLE IF NOT EXISTS `irqdj_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `irqdj_phocadownload`
--

CREATE TABLE IF NOT EXISTS `irqdj_phocadownload` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `sectionid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `owner_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `filename` varchar(250) NOT NULL DEFAULT '',
  `filename_play` varchar(250) NOT NULL DEFAULT '',
  `filename_preview` varchar(250) NOT NULL DEFAULT '',
  `filesize` int(11) NOT NULL DEFAULT '0',
  `author` varchar(255) NOT NULL DEFAULT '',
  `author_email` varchar(255) NOT NULL DEFAULT '',
  `author_url` varchar(255) NOT NULL DEFAULT '',
  `license` varchar(255) NOT NULL DEFAULT '',
  `license_url` varchar(255) NOT NULL DEFAULT '',
  `image_filename` varchar(255) NOT NULL DEFAULT '',
  `image_filename_spec1` varchar(255) NOT NULL DEFAULT '',
  `image_filename_spec2` varchar(255) NOT NULL DEFAULT '',
  `image_download` varchar(255) NOT NULL DEFAULT '',
  `video_filename` varchar(255) NOT NULL DEFAULT '',
  `link_external` varchar(255) NOT NULL DEFAULT '',
  `mirror1link` varchar(255) NOT NULL DEFAULT '',
  `mirror1title` varchar(255) NOT NULL DEFAULT '',
  `mirror1target` varchar(10) NOT NULL DEFAULT '',
  `mirror2link` varchar(255) NOT NULL DEFAULT '',
  `mirror2title` varchar(255) NOT NULL DEFAULT '',
  `mirror2target` varchar(10) NOT NULL DEFAULT '',
  `description` text,
  `features` text,
  `changelog` text,
  `notes` text,
  `userid` int(11) NOT NULL DEFAULT '0',
  `version` varchar(255) NOT NULL DEFAULT '',
  `directlink` tinyint(1) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL DEFAULT '0',
  `textonly` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` int(11) unsigned NOT NULL DEFAULT '0',
  `confirm_license` int(11) NOT NULL DEFAULT '0',
  `unaccessible_file` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `metakey` text,
  `metadesc` text,
  `metadata` text,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`,`published`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=43 ;

--
-- Extraindo dados da tabela `irqdj_phocadownload`
--

INSERT INTO `irqdj_phocadownload` (`id`, `catid`, `sectionid`, `sid`, `owner_id`, `title`, `alias`, `filename`, `filename_play`, `filename_preview`, `filesize`, `author`, `author_email`, `author_url`, `license`, `license_url`, `image_filename`, `image_filename_spec1`, `image_filename_spec2`, `image_download`, `video_filename`, `link_external`, `mirror1link`, `mirror1title`, `mirror1target`, `mirror2link`, `mirror2title`, `mirror2target`, `description`, `features`, `changelog`, `notes`, `userid`, `version`, `directlink`, `date`, `publish_up`, `publish_down`, `hits`, `textonly`, `published`, `approved`, `checked_out`, `checked_out_time`, `ordering`, `access`, `confirm_license`, `unaccessible_file`, `params`, `metakey`, `metadesc`, `metadata`, `language`) VALUES
(1, 2, 1, 0, 0, 'Declaração de Buenos Aires - Forum Interamericano de Jovens Empresários / Cúpula das Américas - 2005', 'declaracao-de-buenos-aires-forum-interamericano-de-jovens-empresarios-cupula-das-americas-2005', 'biblioteca/declaracaobsas-port.doc', '', '', 38912, '', '', '', '', '', '', '', '', '', '', '', '', '', '_self', '', '', '_self', '', '', '', '', 0, '', 0, '2010-05-04 01:02:33', '2010-05-03 21:59:27', '0000-00-00 00:00:00', 172, 0, 1, 1, 0, '0000-00-00 00:00:00', 1, 5, 0, 0, NULL, '', '', NULL, '*'),
(2, 2, 1, 0, 0, 'Recomendações de Buenos Aires - Forum Interamericano de Jovens Empresários / Cúpula das Américas - 2005', 'recomendacoes-de-buenos-aires-forum-interamericano-de-jovens-empresarios-cupula-das-americas-2005', 'biblioteca/recomencacoesbsas-port.doc', '', '', 74752, '', '', '', '', '', '', '', '', '', '', '', '', '', '_self', '', '', '_self', '', '', '', '', 0, '', 0, '2010-05-04 01:27:51', '2010-05-03 22:26:33', '0000-00-00 00:00:00', 153, 0, 1, 1, 0, '0000-00-00 00:00:00', 2, 5, 0, 0, NULL, '', '', NULL, '*'),
(3, 3, 1, 0, 0, 'Uma breve história sobre o marketing de relacionamento', 'uma-breve-historia-sobre-o-marketing-de-relacionamento', 'biblioteca/toshiro.doc', '', '', 27648, '', '', '', '', '', '', '', '', '', '', '', '', '', '_self', '', '', '_self', '', '', '', '', 0, '', 0, '2010-05-04 01:29:49', '2010-05-03 22:28:32', '0000-00-00 00:00:00', 163, 0, 1, 1, 0, '0000-00-00 00:00:00', 1, 5, 0, 0, NULL, '', '', NULL, '*'),
(4, 4, 1, 0, 0, 'Ranking Internacional do Empreendedorismo - Pesquisa Global Entrepreneurship Monitor (GEM) 2006', 'ranking-internacional-do-empreendedorismo-pesquisa-global-entrepreneurship-monitor-gem-2006', 'biblioteca/gem2006.ppt', '', '', 809984, '', '', '', '', '', '', '', '', '', '', '', '', '', '_self', '', '', '_self', '', '', '', '', 0, '', 0, '2010-05-04 01:33:44', '2010-05-03 19:30:56', '0000-00-00 00:00:00', 154, 0, 1, 1, 0, '0000-00-00 00:00:00', 2, 5, 0, 0, NULL, '', '', NULL, '*'),
(5, 4, 1, 0, 0, '25 tips for entrepreneurs from entrepreneurs', '25-tips-for-entrepreneurs-from-entrepreneurs', 'biblioteca/25 tips for entrepreneurs by entrepreneurs.doc', '', '', 26624, '', '', '', '', '', '', '', '', '', '', '', '', '', '_self', '', '', '_self', '', '', '', '', 0, '', 0, '2010-05-04 01:34:34', '2010-05-03 22:34:05', '0000-00-00 00:00:00', 148, 0, 1, 1, 0, '0000-00-00 00:00:00', 3, 5, 0, 0, NULL, '', '', NULL, '*'),
(6, 4, 1, 0, 0, '101 dicas de captação de recursos para ONGs', '101-dicas-de-captacao-de-recursos-para-ongs', 'biblioteca/101 dicas de captao de recursos.doc', '', '', 35328, '', '', '', '', '', '', '', '', '', '', '', '', '', '_self', '', '', '_self', '', '', '', '', 0, '', 0, '2010-05-04 01:35:18', '2010-05-03 22:34:39', '0000-00-00 00:00:00', 158, 0, 1, 1, 0, '0000-00-00 00:00:00', 4, 5, 0, 0, NULL, '', '', NULL, '*'),
(7, 4, 1, 0, 0, 'Estudo sobre a mortalidade empresarial no Brasil', 'estudo-sobre-a-mortalidade-empresarial-no-brasil', 'biblioteca/mortalidade empresarial.pdf', '', '', 576713, '', '', '', '', '', '', '', '', '', '', '', '', '', '_self', '', '', '_self', '', '', '', '', 0, '', 0, '2010-05-04 01:36:02', '2010-05-03 22:35:21', '0000-00-00 00:00:00', 164, 0, 1, 1, 0, '0000-00-00 00:00:00', 5, 5, 0, 0, NULL, '', '', NULL, '*'),
(8, 4, 1, 0, 0, 'Apresentação do Curso de Plano de Negócios YABT Brasil', 'apresentacao-do-curso-de-plano-de-negocios-yabt-brasil', 'biblioteca/treinamento plano de negcios yabt brasil.pptx', '', '', 305499, '', '', '', '', '', '', '', '', '', '', '', '', '', '_self', '', '', '_self', '', '', '', '', 0, '', 0, '2010-05-04 01:41:38', '2010-05-03 22:36:04', '0000-00-00 00:00:00', 254, 0, 1, 1, 0, '0000-00-00 00:00:00', 6, 5, 0, 0, NULL, '', '', NULL, '*'),
(9, 4, 1, 0, 0, 'Visão Geral do Empreendedorismo e a sua condição no Estado da Bahia', 'visao-geral-do-empreendedorismo-e-a-sua-condicao-no-estado-da-bahia', 'biblioteca/visao_geral_do_empreendedorismo_bahia.zip', '', '', 1103, '', '', '', '', '', '', '', '', '', '', '', '', '', '_self', '', '', '_self', '', '', '', '', 0, '', 0, '2010-05-04 01:43:40', '2010-05-03 22:41:41', '0000-00-00 00:00:00', 153, 0, 1, 1, 0, '0000-00-00 00:00:00', 7, 5, 0, 0, NULL, '', '', NULL, '*'),
(10, 4, 1, 0, 0, 'A história do YABT Brasil - Estudo de caso', 'a-historia-do-yabt-brasil-estudo-de-caso', 'biblioteca/yabt brasil - histrico de desenvolvimento.doc', '', '', 88064, '', '', '', '', '', '', '', '', '', '', '', '', '', '_self', '', '', '_self', '', '', '', '', 0, '', 0, '2010-05-04 01:44:20', '2010-05-03 22:43:42', '0000-00-00 00:00:00', 191, 0, 1, 1, 0, '0000-00-00 00:00:00', 8, 5, 0, 0, NULL, '', '', NULL, '*'),
(11, 5, 1, 0, 0, 'Strategy Development for Junior Enterprises', 'strategy-development-for-junior-enterprises', 'biblioteca/strategy developement_uniforce_091.07.2002.pdf', '', '', 623423, '', '', '', '', '', '', '', '', '', '', '', '', '', '_self', '', '', '_self', '', '', '', '', 0, '', 0, '2010-05-04 23:30:03', '2010-05-04 20:29:50', '0000-00-00 00:00:00', 164, 0, 1, 1, 0, '0000-00-00 00:00:00', 1, 5, 0, 0, NULL, '', '', NULL, '*'),
(12, 6, 1, 0, 0, 'O ressurgimento da influência cultural chinesa e as oportunidades oferecidas ao Brasil', 'o-ressurgimento-da-influencia-cultural-chinesa-e-as-oportunidades-oferecidas-ao-brasil', 'biblioteca/o ressurgimento da influncia cultural chinesa e as oportunidades oferecidas ao brasil.doc', '', '', 130560, '', '', '', '', '', '', '', '', '', '', '', '', '', '_self', '', '', '_self', '', '', '', '', 0, '', 0, '2010-05-04 23:31:12', '2010-05-04 20:30:33', '0000-00-00 00:00:00', 687, 0, 1, 1, 0, '0000-00-00 00:00:00', 1, 5, 0, 0, NULL, '', '', NULL, '*'),
(13, 6, 1, 0, 0, 'El Brasil Emprendedor', 'el-brasil-emprendedor', 'biblioteca/el brasil emprendedor2.doc', '', '', 217600, '', '', '', '', '', '', '', '', '', '', '', '', '', '_self', '', '', '_self', '', '', '', '', 0, '', 0, '2010-05-04 23:31:59', '2010-05-04 20:31:27', '0000-00-00 00:00:00', 359, 0, 1, 1, 0, '0000-00-00 00:00:00', 2, 5, 0, 0, NULL, '', '', NULL, '*'),
(14, 7, 1, 0, 0, 'Pesquisa Sebrae - O Perfil da Juventude Brasileira', 'pesquisa-sebrae-o-perfil-da-juventude-brasileira', 'biblioteca/pesquisa perfil_juventude_brasileira.ppt', '', '', 880640, '', '', '', '', '', '', '', '', '', '', '', '', '', '_self', '', '', '_self', '', '', '', '', 0, '', 0, '2010-05-04 23:33:41', '2010-05-04 17:32:28', '0000-00-00 00:00:00', 154, 0, 1, 1, 0, '0000-00-00 00:00:00', 3, 5, 0, 0, NULL, '', '', NULL, '*'),
(15, 9, 1, 0, 0, 'Além da Aparência', 'alem-da-aparencia', 'biblioteca/aparencia.doc', '', '', 28672, '', '', '', '', '', '', '', '', '', '', '', '', '', '_self', '', '', '_self', '', '', '', '', 0, '', 0, '2010-05-04 23:35:28', '2010-05-04 20:35:01', '0000-00-00 00:00:00', 152, 0, 1, 1, 0, '0000-00-00 00:00:00', 1, 5, 0, 0, NULL, '', '', NULL, '*'),
(16, 9, 1, 0, 0, 'Coerência', 'coerencia', 'biblioteca/coerencia.doc', '', '', 29184, '', '', '', '', '', '', '', '', '', '', '', '', '', '_self', '', '', '_self', '', '', '', '', 0, '', 0, '2010-05-04 23:36:07', '2010-05-04 20:35:43', '0000-00-00 00:00:00', 169, 0, 1, 1, 0, '0000-00-00 00:00:00', 2, 5, 0, 0, NULL, '', '', NULL, '*'),
(17, 9, 1, 0, 0, 'As Formigas e a Cigarra', 'as-formigas-e-a-cigarra', 'biblioteca/1 - as formigas e a cigarra.doc', '', '', 22016, '', '', '', '', '', '', '', '', '', '', '', '', '', '_self', '', '', '_self', '', '', '', '', 0, '', 0, '2010-05-04 23:36:32', '2010-05-04 20:36:10', '0000-00-00 00:00:00', 226, 0, 1, 1, 0, '0000-00-00 00:00:00', 3, 5, 0, 0, NULL, '', '', NULL, '*'),
(18, 9, 1, 0, 0, 'Educação Corporativa', 'educacao-corporativa', 'biblioteca/11 - educao corporativa.doc', '', '', 23552, '', '', '', '', '', '', '', '', '', '', '', '', '', '_self', '', '', '_self', '', '', '', '', 0, '', 0, '2010-05-04 23:36:57', '2010-05-04 20:36:34', '0000-00-00 00:00:00', 147, 0, 1, 1, 0, '0000-00-00 00:00:00', 4, 5, 0, 0, NULL, '', '', NULL, '*'),
(19, 9, 1, 0, 0, 'O bom da vida é que podemos fazer escolhas', 'o-bom-da-vida-e-que-podemos-fazer-escolhas', 'biblioteca/12 - o bom da vida  que podemos fazer escolhas.doc', '', '', 22528, '', '', '', '', '', '', '', '', '', '', '', '', '', '_self', '', '', '_self', '', '', '', '', 0, '', 0, '2010-05-04 23:37:21', '2010-05-04 20:36:59', '0000-00-00 00:00:00', 184, 0, 1, 1, 0, '0000-00-00 00:00:00', 5, 5, 0, 0, NULL, '', '', NULL, '*'),
(20, 9, 1, 0, 0, 'Nossa matriz SWOT de cada dia', 'nossa-matriz-swot-de-cada-dia', 'biblioteca/13 - nossa matriz swot de cada dia.doc', '', '', 26624, '', '', '', '', '', '', '', '', '', '', '', '', '', '_self', '', '', '_self', '', '', '', '', 0, '', 0, '2010-05-04 23:37:50', '2010-05-04 20:37:35', '0000-00-00 00:00:00', 233, 0, 1, 1, 0, '0000-00-00 00:00:00', 6, 5, 0, 0, NULL, '', '', NULL, '*'),
(21, 9, 1, 0, 0, 'Comunicação', 'comunicacao', 'biblioteca/14 - comunicao.doc', '', '', 27648, '', '', '', '', '', '', '', '', '', '', '', '', '', '_self', '', '', '_self', '', '', '', '', 0, '', 0, '2010-05-04 23:38:15', '2010-05-04 20:37:52', '0000-00-00 00:00:00', 181, 0, 1, 1, 0, '0000-00-00 00:00:00', 7, 5, 0, 0, NULL, '', '', NULL, '*'),
(22, 9, 1, 0, 0, 'Valorização do ser humano', 'valorizacao-do-ser-humano', 'biblioteca/17- valorizao do ser humano.doc', '', '', 27136, '', '', '', '', '', '', '', '', '', '', '', '', '', '_self', '', '', '_self', '', '', '', '', 0, '', 0, '2010-05-04 23:38:51', '2010-05-04 20:38:23', '0000-00-00 00:00:00', 169, 0, 1, 1, 0, '0000-00-00 00:00:00', 8, 5, 0, 0, NULL, '', '', NULL, '*'),
(23, 9, 1, 0, 0, 'Tempo', 'tempo', 'biblioteca/19 - tempo.doc', '', '', 25600, '', '', '', '', '', '', '', '', '', '', '', '', '', '_self', '', '', '_self', '', '', '', '', 0, '', 0, '2010-05-04 23:39:17', '2010-05-04 20:38:53', '0000-00-00 00:00:00', 154, 0, 1, 1, 0, '0000-00-00 00:00:00', 9, 5, 0, 0, NULL, '', '', NULL, '*'),
(24, 9, 1, 0, 0, 'Faltou atidude!', 'faltou-atidude', 'biblioteca/21 - faltou atitude.doc', '', '', 28160, '', '', '', '', '', '', '', '', '', '', '', '', '', '_self', '', '', '_self', '', '', '', '', 0, '', 0, '2010-05-04 23:39:45', '2010-05-04 20:39:19', '0000-00-00 00:00:00', 149, 0, 1, 1, 0, '0000-00-00 00:00:00', 10, 5, 0, 0, NULL, '', '', NULL, '*'),
(25, 9, 1, 0, 0, 'Faltam Talentos', 'faltam-talentos', 'biblioteca/24 - faltam talentos.doc', '', '', 38400, '', '', '', '', '', '', '', '', '', '', '', '', '', '_self', '', '', '_self', '', '', '', '', 0, '', 0, '2010-05-04 23:40:08', '2010-05-04 20:39:47', '0000-00-00 00:00:00', 145, 0, 1, 1, 0, '0000-00-00 00:00:00', 11, 5, 0, 0, NULL, '', '', NULL, '*'),
(26, 10, 2, 0, 0, 'Calendário Geral de Treinamentos Abertos 2007', 'calendario-geral-de-treinamentos-abertos-2007', 'diversos/calendario.doc', '', '', 174592, '', '', '', '', '', '', '', '', '', '', '', '', '', '_self', '', '', '_self', '', '', '', '', 0, '', 0, '2010-05-04 23:48:09', '2010-05-04 20:47:06', '0000-00-00 00:00:00', 55, 0, 1, 1, 0, '0000-00-00 00:00:00', 1, 5, 0, 0, NULL, '', '', NULL, '*'),
(27, 10, 2, 0, 0, 'Resumo Rial', 'resumo-rial', 'diversos/resumo_rial_por.doc', '', '', 81408, '', '', '', '', '', '', '', '', '', '', '', '', '', '_self', '', '', '_self', '', '', '', '', 0, '', 0, '2010-05-08 19:52:09', '2010-05-08 16:51:35', '0000-00-00 00:00:00', 193, 0, 1, 1, 0, '0000-00-00 00:00:00', 2, 5, 0, 0, NULL, '', '', NULL, '*'),
(28, 10, 2, 0, 0, 'Palestra Tulio Severo Jr Rial', 'palestra-tulio-severo-jr-rial', 'diversos/palestra_tulio_severo_rial panel4_yabt brasil_por.doc', '', '', 33792, '', '', '', '', '', '', '', '', '', '', '', '', '', '_self', '', '', '_self', '', '', '', '', 0, '', 0, '2010-05-08 19:52:38', '2010-05-08 16:52:15', '0000-00-00 00:00:00', 231, 0, 1, 1, 0, '0000-00-00 00:00:00', 3, 5, 0, 0, NULL, '', '', NULL, '*'),
(29, 11, 3, 0, 0, 'Logomarca YABT Brasil fundo branco - em JPG', 'logomarca-yabt-brasil-fundo-branco-em-jpg', 'imprensa/logo yabt brasil em jpg.jpg', '', '', 20473, '', '', '', '', '', '', '', '', '', '', '', '', '', '_self', '', '', '_self', '', '', '', '', 0, '', 0, '2010-05-08 20:26:57', '2010-05-08 17:25:59', '0000-00-00 00:00:00', 191, 0, 1, 1, 0, '0000-00-00 00:00:00', 1, 5, 0, 0, NULL, '', '', NULL, '*'),
(30, 11, 3, 0, 0, 'Logomarca YABT Brasil fundo branco - em CDR', 'logomarca-yabt-brasil-fundo-branco-em-cdr', 'imprensa/logo yabt brasil em corel.cdr', '', '', 14526, '', '', '', '', '', '', '', '', '', '', '', '', '', '_self', '', '', '_self', '', '', '', '', 0, '', 0, '2010-05-08 20:34:18', '2010-05-08 17:33:56', '0000-00-00 00:00:00', 154, 0, 1, 1, 0, '0000-00-00 00:00:00', 2, 5, 0, 0, NULL, '', '', NULL, '*'),
(31, 11, 3, 0, 0, 'Logomarca YABT Brasil fundo preto - em JPG', 'logomarca-yabt-brasil-fundo-preto-em-jpg', 'imprensa/logo yabt fundo preto em jpg.jpg', '', '', 17171, '', '', '', '', '', '', '', '', '', '', '', '', '', '_self', '', '', '_self', '', '', '', '', 0, '', 0, '2010-05-08 20:34:54', '2010-05-08 17:34:40', '0000-00-00 00:00:00', 167, 0, 1, 1, 0, '0000-00-00 00:00:00', 3, 5, 0, 0, NULL, '', '', NULL, '*'),
(32, 11, 3, 0, 0, 'Logomarca YABT Brasil fundo preto - em CDR', 'logomarca-yabt-brasil-fundo-preto-em-cdr', 'imprensa/logo yabt fundo preto em corel.cdr', '', '', 162362, '', '', '', '', '', '', '', '', '', '', '', '', '', '_self', '', '', '_self', '', '', '', '', 0, '', 0, '2010-05-08 20:35:23', '2010-05-08 17:34:56', '0000-00-00 00:00:00', 162, 0, 1, 1, 0, '0000-00-00 00:00:00', 4, 5, 0, 0, NULL, '', '', NULL, '*'),
(33, 11, 3, 0, 0, 'Release Almoço de Negócios - Secretário de Indústria e Comércio', 'release-almoco-de-negocios-secretario-de-industria-e-comercio', 'imprensa/releaseamoedo.doc', '', '', 35328, '', '', '', '', '', '', '', '', '', '', '', '', '', '_self', '', '', '_self', '', '', '', '', 0, '', 0, '2010-05-08 20:36:02', '2010-05-08 17:35:48', '0000-00-00 00:00:00', 221, 0, 1, 1, 0, '0000-00-00 00:00:00', 5, 5, 0, 0, NULL, '', '', NULL, '*'),
(34, 11, 3, 0, 0, 'Release do Chá das Empreendedoras', 'release-do-cha-das-empreendedoras', 'imprensa/release_cha.doc', '', '', 85504, '', '', '', '', '', '', '', '', '', '', '', '', '', '_self', '', '', '_self', '', '', '', '', 0, '', 0, '2010-05-08 20:36:30', '2010-05-08 17:36:15', '0000-00-00 00:00:00', 246, 0, 1, 1, 0, '0000-00-00 00:00:00', 6, 5, 0, 0, NULL, '', '', NULL, '*'),
(35, 11, 3, 0, 0, 'Release do TIC Americas', 'release-do-tic-americas', 'imprensa/releasetic230107.doc', '', '', 245248, '', '', '', '', '', '', '', '', '', '', '', '', '', '_self', '', '', '_self', '', '', '', '', 0, '', 0, '2010-05-08 20:36:59', '2010-05-08 17:36:45', '0000-00-00 00:00:00', 242, 0, 1, 1, 0, '0000-00-00 00:00:00', 7, 5, 0, 0, NULL, '', '', NULL, '*'),
(36, 11, 3, 0, 0, 'Sumário executivo do YABT Brasil', 'sumario-executivo-do-yabt-brasil', 'imprensa/portifolio yabt brasil.pdf', '', '', 75457, '', '', '', '', '', '', '', '', '', '', '', '', '', '_self', '', '', '_self', '', '', '', '', 0, '', 0, '2010-05-08 20:37:33', '2010-05-08 17:37:16', '0000-00-00 00:00:00', 262, 0, 1, 1, 0, '0000-00-00 00:00:00', 8, 5, 0, 0, NULL, '', '', NULL, '*'),
(37, 11, 3, 0, 0, 'Pacote de Sumários Executivos - YABT Brasil e Programas', 'pacote-de-sumarios-executivos-yabt-brasil-e-programas', 'imprensa/sumarios.rar', '', '', 6406219, '', '', '', '', '', '', '', '', '', '', '', '', '', '_self', '', '', '_self', '', '', '', '', 0, '', 0, '2010-05-08 22:01:17', '2010-05-08 18:59:31', '0000-00-00 00:00:00', 171, 0, 1, 1, 0, '0000-00-00 00:00:00', 9, 5, 0, 0, NULL, '', '', NULL, '*'),
(38, 12, 4, 0, 0, 'Curso Preparatório para Processos Seletivos Trainees', 'curso-preparatorio-para-processos-seletivos-trainees', 'treinamentos/trainees.doc', '', '', 86016, '', '', '', '', '', '', '', '', '', '', '', '', '', '_self', '', '', '_self', '', '', '', '', 0, '', 0, '2010-05-08 22:21:50', '2010-05-08 19:21:21', '0000-00-00 00:00:00', 17, 0, 1, 1, 0, '0000-00-00 00:00:00', 1, 5, 0, 0, NULL, '', '', NULL, '*'),
(39, 12, 4, 0, 0, 'Planejamento Estratégico', 'planejamento-estrategico', 'treinamentos/pe.doc', '', '', 81408, '', '', '', '', '', '', '', '', '', '', '', '', '', '_self', '', '', '_self', '', '', '', '', 0, '', 0, '2010-05-08 23:08:45', '2010-05-08 20:08:10', '0000-00-00 00:00:00', 17, 0, 1, 1, 0, '0000-00-00 00:00:00', 2, 5, 0, 0, NULL, '', '', NULL, '*'),
(40, 12, 4, 0, 0, 'Plano de Marketing', 'plano-de-marketing', 'treinamentos/mktg.doc', '', '', 87040, '', '', '', '', '', '', '', '', '', '', '', '', '', '_self', '', '', '_self', '', '', '', '', 0, '', 0, '2010-05-08 23:09:57', '2010-05-08 20:09:38', '0000-00-00 00:00:00', 17, 0, 1, 1, 0, '0000-00-00 00:00:00', 3, 5, 0, 0, NULL, '', '', NULL, '*'),
(41, 10, 2, 0, 0, 'Zaqueu 1', 'zaqueu-1', 'diversos/zaqueu_1.2.pdf', '', '', 95373, '', '', '', '', '', '', '', '', '', '', '', '', '', '_self', '', '', '_self', '', '', '', '', 0, '', 0, '2010-05-11 00:32:15', '2010-05-10 21:31:49', '0000-00-00 00:00:00', 281, 0, 1, 1, 0, '0000-00-00 00:00:00', 4, 5, 0, 0, NULL, '', '', NULL, '*'),
(42, 10, 2, 0, 0, 'Zaqueu 2', 'zaqueu-2', 'diversos/zaqueu_2.2.pdf', '', '', 94216, '', '', '', '', '', '', '', '', '', '', '', '', '', '_self', '', '', '_self', '', '', '', '', 0, '', 0, '2010-05-11 00:32:34', '2010-05-10 21:32:17', '0000-00-00 00:00:00', 251, 0, 1, 1, 0, '0000-00-00 00:00:00', 5, 5, 0, 0, NULL, '', '', NULL, '*');

-- --------------------------------------------------------

--
-- Estrutura da tabela `irqdj_phocadownload_categories`
--

CREATE TABLE IF NOT EXISTS `irqdj_phocadownload_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `section` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL DEFAULT '',
  `image_position` varchar(30) NOT NULL DEFAULT '',
  `description` text,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor` varchar(50) DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` int(11) unsigned NOT NULL DEFAULT '0',
  `uploaduserid` text,
  `accessuserid` text,
  `deleteuserid` text,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `count` int(11) NOT NULL DEFAULT '0',
  `hits` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `metakey` text,
  `metadesc` text,
  `metadata` text,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`section`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Extraindo dados da tabela `irqdj_phocadownload_categories`
--

INSERT INTO `irqdj_phocadownload_categories` (`id`, `parent_id`, `section`, `title`, `name`, `alias`, `image`, `image_position`, `description`, `published`, `checked_out`, `checked_out_time`, `editor`, `ordering`, `access`, `uploaduserid`, `accessuserid`, `deleteuserid`, `date`, `count`, `hits`, `params`, `metakey`, `metadesc`, `metadata`, `language`) VALUES
(1, 0, 0, 'Biblioteca YABT Brasil', '', 'biblioteca-yabt-brasil', '', '', '', 1, 0, '0000-00-00 00:00:00', NULL, 1, 1, '0', '0', '0', '2013-07-24 21:10:38', 0, 0, NULL, '', '', NULL, '*'),
(2, 1, 0, 'Pesquisas Young Americas Business Trust', '', 'pesquisas-young-americas-business-trust', '', '', '', 1, 0, '0000-00-00 00:00:00', NULL, 2, 1, '0', '0', '0', '2013-07-24 21:11:22', 0, 0, NULL, '', '', NULL, '*'),
(3, 1, 0, 'Marketing', '', 'marketing', '', '', '', 1, 0, '0000-00-00 00:00:00', NULL, 3, 1, '0', '0', '0', '2013-07-24 21:11:42', 0, 0, NULL, '', '', NULL, '*'),
(4, 1, 0, 'Empreendedorismo', '', 'empreendedorismo', '', '', '', 1, 0, '0000-00-00 00:00:00', NULL, 4, 1, '0', '0', '0', '2013-07-24 21:11:56', 0, 0, NULL, '', '', NULL, '*'),
(5, 1, 0, 'Estratégia', '', 'estrategia', '', '', '', 1, 0, '0000-00-00 00:00:00', NULL, 5, 1, '0', '0', '0', '2013-07-24 21:12:22', 0, 0, NULL, '', '', NULL, '*'),
(6, 1, 0, 'Internacional', '', 'internacional', '', '', '', 1, 0, '0000-00-00 00:00:00', NULL, 6, 1, '0', '0', '0', '2013-07-24 21:12:40', 0, 0, NULL, '', '', NULL, '*'),
(7, 1, 0, 'Juventude', '', 'juventude', '', '', '', 1, 0, '0000-00-00 00:00:00', NULL, 7, 1, '0', '0', '0', '2013-07-24 21:12:58', 0, 0, NULL, '', '', NULL, '*'),
(9, 1, 0, 'Coluna de Carolina Manciola', '', 'coluna-de-carolina-manciola', '', '', '<p><img src="images/stories/cmanciola.jpg" alt="cmanciola" title="cmanciola" /></p>', 1, 0, '0000-00-00 00:00:00', NULL, 8, 1, '0', '0', '0', '2013-07-24 21:14:24', 0, 0, NULL, '', '', NULL, '*'),
(10, 0, 0, 'Diversos', '', 'diversos', '', '', '', 1, 0, '0000-00-00 00:00:00', NULL, 9, 1, '0', '0', '0', '2013-07-24 21:14:45', 0, 0, NULL, '', '', NULL, '*'),
(11, 0, 0, 'Sala de Imprensa', '', 'sala-de-imprensa', '', '', '<p><span style="text-decoration: underline;">Arquivos para download:</span></p>', 1, 0, '0000-00-00 00:00:00', NULL, 10, 1, '0', '0', '0', '2013-07-24 21:15:16', 0, 0, NULL, '', '', NULL, '*'),
(12, 1, 0, 'Treinamentos YABT Brasil', '', 'treinamentos-yabt-brasil', '', '', '', 1, 0, '0000-00-00 00:00:00', NULL, 11, 1, '0', '0', '0', '2013-07-24 21:15:38', 0, 0, NULL, '', '', NULL, '*');

-- --------------------------------------------------------

--
-- Estrutura da tabela `irqdj_phocadownload_file_votes`
--

CREATE TABLE IF NOT EXISTS `irqdj_phocadownload_file_votes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fileid` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `rating` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `irqdj_phocadownload_file_votes_statistics`
--

CREATE TABLE IF NOT EXISTS `irqdj_phocadownload_file_votes_statistics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fileid` int(11) NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `average` float(8,6) NOT NULL DEFAULT '0.000000',
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `irqdj_phocadownload_layout`
--

CREATE TABLE IF NOT EXISTS `irqdj_phocadownload_layout` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categories` text,
  `category` text,
  `file` text,
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `params` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `irqdj_phocadownload_layout`
--

INSERT INTO `irqdj_phocadownload_layout` (`id`, `categories`, `category`, `file`, `checked_out`, `checked_out_time`, `params`) VALUES
(1, '<div class="pd-categoriesbox">\r\n<div class="pd-title">{pdtitle}</div>\r\n{pdsubcategories}\r\n{pdclear}\r\n</div>', '<div class="pd-filebox">\r\n{pdfiledesctop}\r\n{pdfile}\r\n<div class="pd-buttons">{pdbuttondownload}</div>\r\n<div class="pd-buttons">{pdbuttondetails}</div>\r\n<div class="pd-buttons">{pdbuttonpreview}</div>\r\n<div class="pd-buttons">{pdbuttonplay}</div>\r\n<div class="pd-mirrors">{pdmirrorlink2} {pdmirrorlink1}</div>\r\n<div class="pd-rating">{pdrating}</div>\r\n<div class="pd-tags">{pdtags}</div>\r\n{pdfiledescbottom}\r\n<div class="pd-cb"></div>\r\n</div>', '<div class="pd-filebox">\r\n{pdimage}\r\n{pdfile}\r\n{pdfilesize}\r\n{pdversion}\r\n{pdlicense}\r\n{pdauthor}\r\n{pdauthoremail}\r\n{pdfiledate}\r\n{pddownloads}\r\n{pddescription}\r\n{pdfeatures}\r\n{pdchangelog}\r\n{pdnotes}\r\n<div class="pd-mirrors">{pdmirrorlink2} {pdmirrorlink1}</div>\r\n<div class="pd-report">{pdreportlink}</div>\r\n<div class="pd-rating">{pdrating}</div>\r\n<div class="pd-tags">{pdtags}</div>\r\n<div class="pd-cb"></div>\r\n</div>', 0, '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `irqdj_phocadownload_licenses`
--

CREATE TABLE IF NOT EXISTS `irqdj_phocadownload_licenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `irqdj_phocadownload_logging`
--

CREATE TABLE IF NOT EXISTS `irqdj_phocadownload_logging` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fileid` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(20) NOT NULL DEFAULT '',
  `page` varchar(255) NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `irqdj_phocadownload_styles`
--

CREATE TABLE IF NOT EXISTS `irqdj_phocadownload_styles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `filename` varchar(255) NOT NULL DEFAULT '',
  `menulink` text,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Extraindo dados da tabela `irqdj_phocadownload_styles`
--

INSERT INTO `irqdj_phocadownload_styles` (`id`, `title`, `alias`, `filename`, `menulink`, `type`, `published`, `checked_out`, `checked_out_time`, `ordering`, `params`, `language`) VALUES
(1, 'Phocadownload', 'phocadownload', 'phocadownload.css', NULL, 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '*'),
(2, 'Rating', 'rating', 'rating.css', NULL, 1, 1, 0, '0000-00-00 00:00:00', 2, NULL, '*'),
(3, 'Button', 'button', 'button.css', NULL, 1, 0, 0, '0000-00-00 00:00:00', 3, NULL, '*'),
(4, 'Button (Rounded Corners)', '', 'buttonrc.css', NULL, 1, 0, 0, '0000-00-00 00:00:00', 4, NULL, '*'),
(5, 'Default', 'default', 'default.css', NULL, 2, 1, 0, '0000-00-00 00:00:00', 1, NULL, '*');

-- --------------------------------------------------------

--
-- Estrutura da tabela `irqdj_phocadownload_tags`
--

CREATE TABLE IF NOT EXISTS `irqdj_phocadownload_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `link_ext` varchar(255) NOT NULL DEFAULT '',
  `link_cat` int(11) unsigned NOT NULL DEFAULT '0',
  `description` text,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `irqdj_phocadownload_tags_ref`
--

CREATE TABLE IF NOT EXISTS `irqdj_phocadownload_tags_ref` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fileid` int(11) NOT NULL DEFAULT '0',
  `tagid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `i_fileid` (`fileid`,`tagid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `irqdj_phocadownload_user_stat`
--

CREATE TABLE IF NOT EXISTS `irqdj_phocadownload_user_stat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fileid` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=36 ;

--
-- Extraindo dados da tabela `irqdj_phocadownload_user_stat`
--

INSERT INTO `irqdj_phocadownload_user_stat` (`id`, `fileid`, `userid`, `count`, `date`, `published`, `ordering`, `language`) VALUES
(1, 1, 0, 21, '2016-06-05 17:32:24', 0, 0, ''),
(2, 31, 0, 24, '2016-05-25 14:02:46', 0, 0, ''),
(3, 35, 0, 20, '2016-05-25 14:02:56', 0, 0, ''),
(4, 34, 0, 20, '2016-05-25 14:02:54', 0, 0, ''),
(5, 36, 0, 24, '2016-05-25 14:02:58', 0, 0, ''),
(6, 14, 0, 37, '2016-06-07 08:16:31', 0, 0, ''),
(7, 37, 0, 20, '2016-05-25 14:03:00', 0, 0, ''),
(8, 29, 0, 22, '2016-05-25 14:02:41', 0, 0, ''),
(9, 33, 0, 19, '2016-05-25 14:02:53', 0, 0, ''),
(10, 40, 0, 17, '2016-06-05 13:17:34', 0, 0, ''),
(11, 4, 0, 19, '2016-06-05 13:17:36', 0, 0, ''),
(12, 11, 0, 28, '2016-06-05 13:13:59', 0, 0, ''),
(13, 16, 0, 16, '2016-06-05 13:14:33', 0, 0, ''),
(14, 13, 0, 25, '2016-06-05 13:14:14', 0, 0, ''),
(15, 17, 0, 18, '2016-06-05 13:14:46', 0, 0, ''),
(16, 22, 0, 17, '2016-06-05 13:15:52', 0, 0, ''),
(17, 23, 0, 17, '2016-06-05 13:16:04', 0, 0, ''),
(18, 12, 0, 57, '2016-06-08 18:47:47', 0, 0, ''),
(19, 8, 0, 19, '2016-06-05 13:18:12', 0, 0, ''),
(20, 39, 0, 17, '2016-06-05 13:17:12', 0, 0, ''),
(21, 19, 0, 16, '2016-06-05 13:15:10', 0, 0, ''),
(22, 2, 0, 16, '2016-06-05 13:16:43', 0, 0, ''),
(23, 15, 0, 17, '2016-06-05 13:14:25', 0, 0, ''),
(24, 20, 0, 17, '2016-06-05 13:15:28', 0, 0, ''),
(25, 10, 0, 16, '2016-05-05 12:26:58', 0, 0, ''),
(26, 21, 0, 18, '2016-06-05 13:15:35', 0, 0, ''),
(27, 38, 0, 17, '2016-06-05 13:17:02', 0, 0, ''),
(28, 6, 0, 17, '2016-06-05 13:17:49', 0, 0, ''),
(29, 18, 0, 18, '2016-06-05 13:14:59', 0, 0, ''),
(30, 25, 0, 18, '2016-06-05 13:16:36', 0, 0, ''),
(31, 9, 0, 17, '2016-06-05 13:18:31', 0, 0, ''),
(32, 5, 0, 18, '2016-06-05 13:17:38', 0, 0, ''),
(33, 24, 0, 17, '2016-06-05 13:16:19', 0, 0, ''),
(34, 7, 0, 17, '2016-06-05 13:18:01', 0, 0, ''),
(35, 3, 0, 18, '2016-06-05 13:17:21', 0, 0, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `irqdj_postinstall_messages`
--

CREATE TABLE IF NOT EXISTS `irqdj_postinstall_messages` (
  `postinstall_message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) NOT NULL DEFAULT '',
  `language_extension` varchar(255) NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`postinstall_message_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Extraindo dados da tabela `irqdj_postinstall_messages`
--

INSERT INTO `irqdj_postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`) VALUES
(1, 700, 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION', 'plg_twofactorauth_totp', 1, 'action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_condition', '3.2.0', 1),
(2, 700, 'COM_CPANEL_MSG_EACCELERATOR_TITLE', 'COM_CPANEL_MSG_EACCELERATOR_BODY', 'COM_CPANEL_MSG_EACCELERATOR_BUTTON', 'com_cpanel', 1, 'action', 'admin://components/com_admin/postinstall/eaccelerator.php', 'admin_postinstall_eaccelerator_action', 'admin://components/com_admin/postinstall/eaccelerator.php', 'admin_postinstall_eaccelerator_condition', '3.2.0', 1),
(3, 700, 'COM_CPANEL_MSG_PHPVERSION_TITLE', 'COM_CPANEL_MSG_PHPVERSION_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/phpversion.php', 'admin_postinstall_phpversion_condition', '3.2.2', 1),
(4, 700, 'COM_CPANEL_MSG_HTACCESS_TITLE', 'COM_CPANEL_MSG_HTACCESS_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/htaccess.php', 'admin_postinstall_htaccess_condition', '3.4.0', 0),
(5, 700, 'COM_CPANEL_MSG_ROBOTS_TITLE', 'COM_CPANEL_MSG_ROBOTS_BODY', '', 'com_cpanel', 1, 'message', '', '', '', '', '3.3.0', 0),
(6, 700, 'COM_CPANEL_MSG_LANGUAGEACCESS340_TITLE', 'COM_CPANEL_MSG_LANGUAGEACCESS340_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/languageaccess340.php', 'admin_postinstall_languageaccess340_condition', '3.4.1', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `irqdj_redirect_links`
--

CREATE TABLE IF NOT EXISTS `irqdj_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) DEFAULT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `header` smallint(3) NOT NULL DEFAULT '301',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_link_old` (`old_url`),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `irqdj_schemas`
--

CREATE TABLE IF NOT EXISTS `irqdj_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `irqdj_schemas`
--

INSERT INTO `irqdj_schemas` (`extension_id`, `version_id`) VALUES
(21, '3.4.0'),
(700, '3.4.0-2015-02-26');

-- --------------------------------------------------------

--
-- Estrutura da tabela `irqdj_session`
--

CREATE TABLE IF NOT EXISTS `irqdj_session` (
  `session_id` varchar(200) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` mediumtext,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `irqdj_session`
--

INSERT INTO `irqdj_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`) VALUES
('85b71e628e181711f569b19c1d8c6460', 0, 1, '1465414200', 'joomla|s:1988:"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjoyOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjo5OntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjI6e3M6NzoiY291bnRlciI7aToxO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTQ2NTQxNDIwMDtzOjQ6Imxhc3QiO2k6MTQ2NTQxNDIwMDtzOjM6Im5vdyI7aToxNDY1NDE0MjAwO319czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjoyOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjU6IkpVc2VyIjoyNjp7czo5OiIAKgBpc1Jvb3QiO2I6MDtzOjI6ImlkIjtpOjA7czo0OiJuYW1lIjtOO3M6ODoidXNlcm5hbWUiO047czo1OiJlbWFpbCI7TjtzOjg6InBhc3N3b3JkIjtOO3M6MTQ6InBhc3N3b3JkX2NsZWFyIjtzOjA6IiI7czo1OiJibG9jayI7TjtzOjk6InNlbmRFbWFpbCI7aTowO3M6MTI6InJlZ2lzdGVyRGF0ZSI7TjtzOjEzOiJsYXN0dmlzaXREYXRlIjtOO3M6MTA6ImFjdGl2YXRpb24iO047czo2OiJwYXJhbXMiO047czo2OiJncm91cHMiO2E6MTp7aTowO3M6MToiOSI7fXM6NToiZ3Vlc3QiO2k6MTtzOjEzOiJsYXN0UmVzZXRUaW1lIjtOO3M6MTA6InJlc2V0Q291bnQiO047czoxMjoicmVxdWlyZVJlc2V0IjtOO3M6MTA6IgAqAF9wYXJhbXMiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mjp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjowOnt9czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fXM6MTQ6IgAqAF9hdXRoR3JvdXBzIjthOjI6e2k6MDtpOjE7aToxO2k6OTt9czoxNDoiACoAX2F1dGhMZXZlbHMiO2E6Mzp7aTowO2k6MTtpOjE7aToxO2k6MjtpOjU7fXM6MTU6IgAqAF9hdXRoQWN0aW9ucyI7TjtzOjEyOiIAKgBfZXJyb3JNc2ciO047czoxMzoiACoAdXNlckhlbHBlciI7TzoxODoiSlVzZXJXcmFwcGVySGVscGVyIjowOnt9czoxMDoiACoAX2Vycm9ycyI7YTowOnt9czozOiJhaWQiO2k6MDt9czoyMzoiZ2FudHJ5LWN1cnJlbnQtdGVtcGxhdGUiO3M6MTU6InJ0X2FmdGVyYnVybmVyMiI7czo1MDoiYWZ0ZXJidXJuZXIyLTJmMjgxYTFiMWM2NGJkZTYxMTUyYzBlNTAxZmRlM2EzLW5hbWUiO047czo1NzoiYWZ0ZXJidXJuZXIyLTJmMjgxYTFiMWM2NGJkZTYxMTUyYzBlNTAxZmRlM2EzLWhlYWRlcnN0eWxlIjtOO3M6NTU6ImFmdGVyYnVybmVyMi0yZjI4MWExYjFjNjRiZGU2MTE1MmMwZTUwMWZkZTNhMy1tZW51c3R5bGUiO047czo1NzoiYWZ0ZXJidXJuZXIyLTJmMjgxYTFiMWM2NGJkZTYxMTUyYzBlNTAxZmRlM2EzLWZvb3RlcnN0eWxlIjtOO3M6NTc6ImFmdGVyYnVybmVyMi0yZjI4MWExYjFjNjRiZGU2MTE1MmMwZTUwMWZkZTNhMy1sYXlvdXQtbW9kZSI7Tjt9fXM6OToic2VwYXJhdG9yIjtzOjE6Ii4iO30=";', 0, ''),
('b767ce22f5945372c14bddb6a662ee55', 0, 1, '1465413493', 'joomla|s:1988:"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjoyOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjo5OntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjI6e3M6NzoiY291bnRlciI7aToxO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTQ2NTQxMzQ5MztzOjQ6Imxhc3QiO2k6MTQ2NTQxMzQ5MztzOjM6Im5vdyI7aToxNDY1NDEzNDkzO319czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjoyOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjU6IkpVc2VyIjoyNjp7czo5OiIAKgBpc1Jvb3QiO2I6MDtzOjI6ImlkIjtpOjA7czo0OiJuYW1lIjtOO3M6ODoidXNlcm5hbWUiO047czo1OiJlbWFpbCI7TjtzOjg6InBhc3N3b3JkIjtOO3M6MTQ6InBhc3N3b3JkX2NsZWFyIjtzOjA6IiI7czo1OiJibG9jayI7TjtzOjk6InNlbmRFbWFpbCI7aTowO3M6MTI6InJlZ2lzdGVyRGF0ZSI7TjtzOjEzOiJsYXN0dmlzaXREYXRlIjtOO3M6MTA6ImFjdGl2YXRpb24iO047czo2OiJwYXJhbXMiO047czo2OiJncm91cHMiO2E6MTp7aTowO3M6MToiOSI7fXM6NToiZ3Vlc3QiO2k6MTtzOjEzOiJsYXN0UmVzZXRUaW1lIjtOO3M6MTA6InJlc2V0Q291bnQiO047czoxMjoicmVxdWlyZVJlc2V0IjtOO3M6MTA6IgAqAF9wYXJhbXMiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mjp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjowOnt9czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fXM6MTQ6IgAqAF9hdXRoR3JvdXBzIjthOjI6e2k6MDtpOjE7aToxO2k6OTt9czoxNDoiACoAX2F1dGhMZXZlbHMiO2E6Mzp7aTowO2k6MTtpOjE7aToxO2k6MjtpOjU7fXM6MTU6IgAqAF9hdXRoQWN0aW9ucyI7TjtzOjEyOiIAKgBfZXJyb3JNc2ciO047czoxMzoiACoAdXNlckhlbHBlciI7TzoxODoiSlVzZXJXcmFwcGVySGVscGVyIjowOnt9czoxMDoiACoAX2Vycm9ycyI7YTowOnt9czozOiJhaWQiO2k6MDt9czoyMzoiZ2FudHJ5LWN1cnJlbnQtdGVtcGxhdGUiO3M6MTU6InJ0X2FmdGVyYnVybmVyMiI7czo1MDoiYWZ0ZXJidXJuZXIyLTJmMjgxYTFiMWM2NGJkZTYxMTUyYzBlNTAxZmRlM2EzLW5hbWUiO047czo1NzoiYWZ0ZXJidXJuZXIyLTJmMjgxYTFiMWM2NGJkZTYxMTUyYzBlNTAxZmRlM2EzLWhlYWRlcnN0eWxlIjtOO3M6NTU6ImFmdGVyYnVybmVyMi0yZjI4MWExYjFjNjRiZGU2MTE1MmMwZTUwMWZkZTNhMy1tZW51c3R5bGUiO047czo1NzoiYWZ0ZXJidXJuZXIyLTJmMjgxYTFiMWM2NGJkZTYxMTUyYzBlNTAxZmRlM2EzLWZvb3RlcnN0eWxlIjtOO3M6NTc6ImFmdGVyYnVybmVyMi0yZjI4MWExYjFjNjRiZGU2MTE1MmMwZTUwMWZkZTNhMy1sYXlvdXQtbW9kZSI7Tjt9fXM6OToic2VwYXJhdG9yIjtzOjE6Ii4iO30=";', 0, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `irqdj_tags`
--

CREATE TABLE IF NOT EXISTS `irqdj_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `tag_idx` (`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `irqdj_tags`
--

INSERT INTO `irqdj_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
(1, 0, 0, 1, 0, '', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '', 0, '2011-01-01 00:00:01', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `irqdj_template_styles`
--

CREATE TABLE IF NOT EXISTS `irqdj_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Extraindo dados da tabela `irqdj_template_styles`
--

INSERT INTO `irqdj_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(4, 'beez3', 0, '0', 'Beez3 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/joomla_black.gif","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","templatecolor":"personal","html5":"0"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{"showSiteName":"0","colourChoice":"","boldText":"0"}'),
(7, 'protostar', 0, '0', 'protostar - Default', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}'),
(8, 'isis', 1, '1', 'isis - Default', '{"templateColor":"","logoFile":""}'),
(10, 'rt_afterburner2', 0, '1', 'Afterburner2 - Default', '{"master":"true","current_id":"10","template_full_name":"Afterburner2","grid_system":"12","template_prefix":"afterburner2-","cookie_time":"31536000","override_set":"2.5","name":"Preset1","copy_lang_files_if_diff":"1","logo":{"enabled":"1","position":"top-a","type":"custom","custom":{"image":"{''path'':''images\\/logo.png''}"}},"headerstyle":"dark","menustyle":"dark","footerstyle":"dark","linkcolor":"#0383c3","accentcolor":"#0383c3","font":{"family":"s:helvetica","size":"default","size-is":"default"},"viewswitcher-priority":"1","logo-priority":"2","copyright-priority":"3","styledeclaration-priority":"4","fontsizer-priority":"5","date-priority":"7","totop-priority":"8","systemmessages-priority":"9","morearticles-priority":"12","smartload-priority":"13","pagesuffix-priority":"14","resetsettings-priority":"15","analytics-priority":"16","dropdownmenu-priority":"18","jstools-priority":"21","moduleoverlays-priority":"22","rtl-priority":"23","splitmenu-priority":"24","webfonts-priority":"27","styledeclaration-enabled":"1","copyright":{"enabled":"0","position":"footer-a","text":""},"systemmessages":{"enabled":"1","position":"drawer"},"analytics":{"enabled":"0","code":"","position":"analytics"},"menu":{"enabled":"1","type":"dropdownmenu","dropdownmenu":{"theme":"gantry-dropdown","limit_levels":"0","startLevel":"0","showAllChildren":"1","class_sfx":"top","cache":"0","menutype":"mainmenu","position":"header-a","responsive-menu":"panel","enable-current-id":"0","module_cache":"1"}},"top":{"layout":"a:1:{i:12;a:1:{i:1;a:1:{i:0;i:12;}}}","showall":"0","showmax":"6"},"header":{"layout":"3,3,3,3","showall":"0","showmax":"6"},"mainbodyPosition":"6,3,3","bottom":{"layout":"3,3,3,3","showall":"0","showmax":"6"},"footer":{"layout":"a:1:{i:12;a:1:{i:1;a:1:{i:0;i:12;}}}","showall":"0","showmax":"6"},"layout-mode":"responsive","component-enabled":"1","mainbody-enabled":"1","rtl-enabled":"1","pagesuffix-enabled":"0","selectivizr-enabled":"0","less":{"compression":"0","compilewait":"2","debugheader":"0"}}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `irqdj_ucm_base`
--

CREATE TABLE IF NOT EXISTS `irqdj_ucm_base` (
  `ucm_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL,
  PRIMARY KEY (`ucm_id`),
  KEY `idx_ucm_item_id` (`ucm_item_id`),
  KEY `idx_ucm_type_id` (`ucm_type_id`),
  KEY `idx_ucm_language_id` (`ucm_language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `irqdj_ucm_content`
--

CREATE TABLE IF NOT EXISTS `irqdj_ucm_content` (
  `core_content_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `core_type_alias` varchar(255) NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(255) NOT NULL,
  `core_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `core_body` mediumtext NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) NOT NULL DEFAULT '',
  `core_checked_out_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_access` int(10) unsigned NOT NULL DEFAULT '0',
  `core_params` text NOT NULL,
  `core_featured` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) NOT NULL,
  `core_publish_up` datetime NOT NULL,
  `core_publish_down` datetime NOT NULL,
  `core_content_item_id` int(10) unsigned DEFAULT NULL COMMENT 'ID from the individual type table',
  `asset_id` int(10) unsigned DEFAULT NULL COMMENT 'FK to the #__assets table.',
  `core_images` text NOT NULL,
  `core_urls` text NOT NULL,
  `core_hits` int(10) unsigned NOT NULL DEFAULT '0',
  `core_version` int(10) unsigned NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text NOT NULL,
  `core_metadesc` text NOT NULL,
  `core_catid` int(10) unsigned NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`core_content_id`),
  KEY `tag_idx` (`core_state`,`core_access`),
  KEY `idx_access` (`core_access`),
  KEY `idx_alias` (`core_alias`),
  KEY `idx_language` (`core_language`),
  KEY `idx_title` (`core_title`),
  KEY `idx_modified_time` (`core_modified_time`),
  KEY `idx_created_time` (`core_created_time`),
  KEY `idx_content_type` (`core_type_alias`),
  KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  KEY `idx_core_created_user_id` (`core_created_user_id`),
  KEY `idx_core_type_id` (`core_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Contains core content data in name spaced fields' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `irqdj_ucm_history`
--

CREATE TABLE IF NOT EXISTS `irqdj_ucm_history` (
  `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ucm_item_id` int(10) unsigned NOT NULL,
  `ucm_type_id` int(10) unsigned NOT NULL,
  `version_note` varchar(255) NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `character_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep',
  PRIMARY KEY (`version_id`),
  KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  KEY `idx_save_date` (`save_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `irqdj_updates`
--

CREATE TABLE IF NOT EXISTS `irqdj_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  `extra_query` varchar(1000) DEFAULT '',
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Available Updates' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `irqdj_update_sites`
--

CREATE TABLE IF NOT EXISTS `irqdj_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) DEFAULT '',
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Update Sites' AUTO_INCREMENT=10 ;

--
-- Extraindo dados da tabela `irqdj_update_sites`
--

INSERT INTO `irqdj_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`) VALUES
(1, 'Joomla Core', 'collection', 'http://update.joomla.org/core/list.xml', 1, 1456591376, ''),
(2, 'Joomla Extension Directory', 'collection', 'http://update.joomla.org/jed/list.xml', 1, 1456591376, ''),
(3, 'Accredited Joomla! Translations', 'collection', 'http://update.joomla.org/language/translationlist_3.xml', 1, 0, ''),
(5, 'RocketTheme Update Directory', 'collection', 'http://updates.rockettheme.com/joomla/updates.xml', 1, 0, ''),
(6, 'News Show Pro GK5 Updates', 'extension', 'https://www.gavick.com/update_server/joomla30/nsp_gk5.xml', 1, 0, ''),
(7, 'Joomla! Update Component Update Site', 'extension', 'http://update.joomla.org/core/extensions/com_joomlaupdate.xml', 1, 0, ''),
(8, 'Weblinks Update Site', 'extension', 'https://raw.githubusercontent.com/joomla-extensions/weblinks/master/manifest.xml', 1, 0, ''),
(9, 'Gantry Framework Update Site', 'extension', 'http://www.gantry-framework.org/updates/joomla16/gantry.xml', 1, 1456591374, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `irqdj_update_sites_extensions`
--

CREATE TABLE IF NOT EXISTS `irqdj_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';

--
-- Extraindo dados da tabela `irqdj_update_sites_extensions`
--

INSERT INTO `irqdj_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 700),
(3, 600),
(3, 722),
(5, 714),
(6, 723),
(7, 28),
(8, 801),
(9, 803);

-- --------------------------------------------------------

--
-- Estrutura da tabela `irqdj_usergroups`
--

CREATE TABLE IF NOT EXISTS `irqdj_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Extraindo dados da tabela `irqdj_usergroups`
--

INSERT INTO `irqdj_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 18, 'Public'),
(2, 1, 8, 15, 'Registered'),
(3, 2, 9, 14, 'Author'),
(4, 3, 10, 13, 'Editor'),
(5, 4, 11, 12, 'Publisher'),
(6, 1, 4, 7, 'Manager'),
(7, 6, 5, 6, 'Administrator'),
(8, 1, 16, 17, 'Super Users'),
(9, 1, 2, 3, 'Guest');

-- --------------------------------------------------------

--
-- Estrutura da tabela `irqdj_users`
--

CREATE TABLE IF NOT EXISTS `irqdj_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login',
  PRIMARY KEY (`id`),
  KEY `idx_name` (`name`),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=179 ;

--
-- Extraindo dados da tabela `irqdj_users`
--

INSERT INTO `irqdj_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `otpKey`, `otep`, `requireReset`) VALUES
(176, 'Super User', 'leonardo', 'leonardo@devhouse.com.br', '$2y$10$5WCH7cCT6saYGOzEdCtJEugk1WIS7oPzVsUk2zMyHj4i5F4YKw9i2', 0, 1, '2013-07-22 17:16:11', '2016-02-27 16:42:53', '0', '{}', '0000-00-00 00:00:00', 0, '', '', 0),
(177, 'Tulio', 'tulio', 'tulims@mandic.com.br', '$2y$10$Sy8SUdDJKj5ydGvrkyy6Lu8wjALH6V.FqUye7YFJ3f0G5QEKZ4aAC', 0, 0, '2016-02-27 16:10:46', '0000-00-00 00:00:00', '', '{"admin_style":"","admin_language":"","language":"","editor":"","helpsite":"","timezone":""}', '0000-00-00 00:00:00', 0, '', '', 0),
(178, 'ADMIN', 'bndvict', 'bndvict@gmail.com', '$2y$10$5M7k.gpa4RzKlROOxTWuWuIoa3Qn0IPQ8TVNi/Gj/SwVdBzIFeUb.', 1, 0, '2016-05-20 08:06:11', '0000-00-00 00:00:00', 'c4a53c94a8c6a51b098f2b441940ca24', '{}', '0000-00-00 00:00:00', 0, '', '', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `irqdj_user_keys`
--

CREATE TABLE IF NOT EXISTS `irqdj_user_keys` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `series` varchar(255) NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) NOT NULL,
  `uastring` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `series` (`series`),
  UNIQUE KEY `series_2` (`series`),
  UNIQUE KEY `series_3` (`series`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `irqdj_user_notes`
--

CREATE TABLE IF NOT EXISTS `irqdj_user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `irqdj_user_profiles`
--

CREATE TABLE IF NOT EXISTS `irqdj_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Estrutura da tabela `irqdj_user_usergroup_map`
--

CREATE TABLE IF NOT EXISTS `irqdj_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `irqdj_user_usergroup_map`
--

INSERT INTO `irqdj_user_usergroup_map` (`user_id`, `group_id`) VALUES
(176, 8),
(177, 8),
(178, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `irqdj_viewlevels`
--

CREATE TABLE IF NOT EXISTS `irqdj_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Extraindo dados da tabela `irqdj_viewlevels`
--

INSERT INTO `irqdj_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 1, '[6,2,8]'),
(3, 'Special', 2, '[6,3,8]'),
(5, 'Guest', 0, '[9]');

-- --------------------------------------------------------

--
-- Estrutura da tabela `irqdj_weblinks`
--

CREATE TABLE IF NOT EXISTS `irqdj_weblinks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if link is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `images` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
