-- --------------------------------------------------------
-- Host:                         localhost
-- Versión del servidor:         5.7.24 - MySQL Community Server (GPL)
-- SO del servidor:              Win64
-- HeidiSQL Versión:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para strapi-for-ionic
DROP DATABASE IF EXISTS `strapi-for-ionic`;
CREATE DATABASE IF NOT EXISTS `strapi-for-ionic` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `strapi-for-ionic`;

-- Volcando estructura para tabla strapi-for-ionic.accesses
DROP TABLE IF EXISTS `accesses`;
CREATE TABLE IF NOT EXISTS `accesses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.accesses: ~0 rows (aproximadamente)
DELETE FROM `accesses`;
/*!40000 ALTER TABLE `accesses` DISABLE KEYS */;
/*!40000 ALTER TABLE `accesses` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.audience
DROP TABLE IF EXISTS `audience`;
CREATE TABLE IF NOT EXISTS `audience` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `audience_key_unique` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.audience: ~0 rows (aproximadamente)
DELETE FROM `audience`;
/*!40000 ALTER TABLE `audience` DISABLE KEYS */;
/*!40000 ALTER TABLE `audience` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.comments
DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content` longtext NOT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `blockedThread` tinyint(1) DEFAULT NULL,
  `blockReason` varchar(255) DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  `authorUser` int(11) DEFAULT NULL,
  `authorType` varchar(255) DEFAULT NULL,
  `authorId` varchar(255) DEFAULT NULL,
  `authorName` varchar(255) DEFAULT NULL,
  `authorEmail` varchar(255) DEFAULT NULL,
  `authorAvatar` varchar(255) DEFAULT NULL,
  `removed` tinyint(1) DEFAULT NULL,
  `relatedSlug` varchar(255) DEFAULT NULL,
  `threadOf` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.comments: ~0 rows (aproximadamente)
DELETE FROM `comments`;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.comments_morph
DROP TABLE IF EXISTS `comments_morph`;
CREATE TABLE IF NOT EXISTS `comments_morph` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `comments_id` int(11) DEFAULT NULL,
  `related_id` int(11) DEFAULT NULL,
  `related_type` longtext,
  `field` longtext,
  `order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.comments_morph: ~0 rows (aproximadamente)
DELETE FROM `comments_morph`;
/*!40000 ALTER TABLE `comments_morph` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments_morph` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.comments_report
DROP TABLE IF EXISTS `comments_report`;
CREATE TABLE IF NOT EXISTS `comments_report` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content` longtext,
  `reason` varchar(255) NOT NULL,
  `resolved` tinyint(1) DEFAULT NULL,
  `related` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.comments_report: ~0 rows (aproximadamente)
DELETE FROM `comments_report`;
/*!40000 ALTER TABLE `comments_report` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments_report` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.components_row_types_app_images
DROP TABLE IF EXISTS `components_row_types_app_images`;
CREATE TABLE IF NOT EXISTS `components_row_types_app_images` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.components_row_types_app_images: ~1 rows (aproximadamente)
DELETE FROM `components_row_types_app_images`;
/*!40000 ALTER TABLE `components_row_types_app_images` DISABLE KEYS */;
INSERT INTO `components_row_types_app_images` (`id`, `name`) VALUES
	(1, 'app-icon');
/*!40000 ALTER TABLE `components_row_types_app_images` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.components_row_types_settings
DROP TABLE IF EXISTS `components_row_types_settings`;
CREATE TABLE IF NOT EXISTS `components_row_types_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.components_row_types_settings: ~1 rows (aproximadamente)
DELETE FROM `components_row_types_settings`;
/*!40000 ALTER TABLE `components_row_types_settings` DISABLE KEYS */;
INSERT INTO `components_row_types_settings` (`id`, `key`, `value`) VALUES
	(1, '--ion-font-family', 'Someone');
/*!40000 ALTER TABLE `components_row_types_settings` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.components_row_types_statuses
DROP TABLE IF EXISTS `components_row_types_statuses`;
CREATE TABLE IF NOT EXISTS `components_row_types_statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) DEFAULT NULL,
  `value` tinyint(1) DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.components_row_types_statuses: ~1 rows (aproximadamente)
DELETE FROM `components_row_types_statuses`;
/*!40000 ALTER TABLE `components_row_types_statuses` DISABLE KEYS */;
INSERT INTO `components_row_types_statuses` (`id`, `key`, `value`, `enabled`) VALUES
	(1, 'Dark Mode - Default', 1, 1);
/*!40000 ALTER TABLE `components_row_types_statuses` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.connections
DROP TABLE IF EXISTS `connections`;
CREATE TABLE IF NOT EXISTS `connections` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `users_permissions_user` int(11) DEFAULT NULL,
  `origin` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.connections: ~0 rows (aproximadamente)
DELETE FROM `connections`;
/*!40000 ALTER TABLE `connections` DISABLE KEYS */;
/*!40000 ALTER TABLE `connections` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.core_store
DROP TABLE IF EXISTS `core_store`;
CREATE TABLE IF NOT EXISTS `core_store` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext,
  `type` varchar(255) DEFAULT NULL,
  `environment` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.core_store: ~51 rows (aproximadamente)
DELETE FROM `core_store`;
/*!40000 ALTER TABLE `core_store` DISABLE KEYS */;
INSERT INTO `core_store` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
	(1, 'model_def_strapi::core-store', '{"uid":"strapi::core-store","collectionName":"core_store","info":{"name":"core_store","description":""},"options":{"timestamps":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"key":{"type":"string"},"value":{"type":"text"},"type":{"type":"string"},"environment":{"type":"string"},"tag":{"type":"string"}}}', 'object', NULL, NULL),
	(2, 'model_def_strapi::webhooks', '{"uid":"strapi::webhooks","collectionName":"strapi_webhooks","info":{"name":"Strapi webhooks","description":""},"options":{"timestamps":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string"},"url":{"type":"text"},"headers":{"type":"json"},"events":{"type":"json"},"enabled":{"type":"boolean"}}}', 'object', NULL, NULL),
	(3, 'model_def_strapi::permission', '{"uid":"strapi::permission","collectionName":"strapi_permission","kind":"collectionType","info":{"name":"Permission","description":""},"options":{"timestamps":["created_at","updated_at"]},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"model":"role","plugin":"admin"}}}', 'object', NULL, NULL),
	(4, 'model_def_strapi::role', '{"uid":"strapi::role","collectionName":"strapi_role","kind":"collectionType","info":{"name":"Role","description":""},"options":{"timestamps":["created_at","updated_at"]},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"collection":"user","via":"roles","plugin":"admin","attribute":"user","column":"id","isVirtual":true},"permissions":{"configurable":false,"plugin":"admin","collection":"permission","via":"role","isVirtual":true}}}', 'object', NULL, NULL),
	(5, 'model_def_strapi::user', '{"uid":"strapi::user","collectionName":"strapi_administrator","kind":"collectionType","info":{"name":"User","description":""},"options":{"timestamps":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"registrationToken":{"type":"string","configurable":false,"private":true},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"collection":"role","collectionName":"strapi_users_roles","via":"users","dominant":true,"plugin":"admin","configurable":false,"private":true,"attribute":"role","column":"id","isVirtual":true},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false}}}', 'object', NULL, NULL),
	(6, 'model_def_plugins::users-permissions.permission', '{"uid":"plugins::users-permissions.permission","collectionName":"users-permissions_permission","kind":"collectionType","info":{"name":"permission","description":""},"options":{"timestamps":false},"pluginOptions":{"content-manager":{"visible":false}},"attributes":{"type":{"type":"string","required":true,"configurable":false},"controller":{"type":"string","required":true,"configurable":false},"action":{"type":"string","required":true,"configurable":false},"enabled":{"type":"boolean","required":true,"configurable":false},"policy":{"type":"string","configurable":false},"role":{"model":"role","via":"permissions","plugin":"users-permissions","configurable":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}', 'object', NULL, NULL),
	(7, 'model_def_plugins::users-permissions.role', '{"uid":"plugins::users-permissions.role","collectionName":"users-permissions_role","kind":"collectionType","info":{"name":"role","description":""},"options":{"timestamps":false},"pluginOptions":{"content-manager":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"collection":"permission","via":"role","plugin":"users-permissions","configurable":false,"isVirtual":true},"users":{"collection":"user","via":"role","configurable":false,"plugin":"users-permissions","isVirtual":true},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}', 'object', NULL, NULL),
	(8, 'model_def_plugins::users-permissions.user', '{"uid":"plugins::users-permissions.user","collectionName":"users-permissions_user","kind":"collectionType","info":{"name":"user","description":""},"options":{"draftAndPublish":false,"timestamps":["created_at","updated_at"]},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"confirmationToken":{"type":"string","configurable":false,"private":true},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"model":"role","via":"users","plugin":"users-permissions","configurable":false},"darkModeEnabled":{"type":"boolean","default":false},"userAvatar":{"model":"file","via":"related","allowedTypes":["images"],"plugin":"upload","required":false,"pluginOptions":{}},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}', 'object', NULL, NULL),
	(9, 'model_def_plugins::upload.file', '{"uid":"plugins::upload.file","collectionName":"upload_file","kind":"collectionType","info":{"name":"file","description":""},"options":{"timestamps":["created_at","updated_at"]},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"collection":"*","filter":"field","configurable":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}', 'object', NULL, NULL),
	(10, 'model_def_plugins::i18n.locale', '{"uid":"plugins::i18n.locale","collectionName":"i18n_locales","kind":"collectionType","info":{"name":"locale","description":""},"options":{"timestamps":["created_at","updated_at"]},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}', 'object', NULL, NULL),
	(11, 'plugin_users-permissions_grant', '{"email":{"enabled":true,"icon":"envelope"},"discord":{"enabled":false,"icon":"discord","key":"","secret":"","callback":"/auth/discord/callback","scope":["identify","email"],"redirectUri":"http://localhost:1337/connect/discord/callback"},"facebook":{"enabled":false,"icon":"facebook-square","key":"","secret":"","callback":"/auth/facebook/callback","scope":["email"],"redirectUri":"http://localhost:1337/connect/facebook/callback"},"google":{"enabled":false,"icon":"google","key":"","secret":"","callback":"/auth/google/callback","scope":["email"],"redirectUri":"http://localhost:1337/connect/google/callback"},"github":{"enabled":false,"icon":"github","key":"","secret":"","callback":"/auth/github/callback","scope":["user","user:email"],"redirectUri":"http://localhost:1337/connect/github/callback"},"microsoft":{"enabled":false,"icon":"windows","key":"","secret":"","callback":"/auth/microsoft/callback","scope":["user.read"],"redirectUri":"http://localhost:1337/connect/microsoft/callback"},"twitter":{"enabled":false,"icon":"twitter","key":"","secret":"","callback":"/auth/twitter/callback","redirectUri":"http://localhost:1337/connect/twitter/callback"},"instagram":{"enabled":false,"icon":"instagram","key":"","secret":"","callback":"/auth/instagram/callback","scope":["user_profile"],"redirectUri":"http://localhost:1337/connect/instagram/callback"},"vk":{"enabled":false,"icon":"vk","key":"","secret":"","callback":"/auth/vk/callback","scope":["email"],"redirectUri":"http://localhost:1337/connect/vk/callback"},"twitch":{"enabled":false,"icon":"twitch","key":"","secret":"","callback":"/auth/twitch/callback","scope":["user:read:email"],"redirectUri":"http://localhost:1337/connect/twitch/callback"},"linkedin":{"enabled":false,"icon":"linkedin","key":"","secret":"","callback":"/auth/linkedin/callback","scope":["r_liteprofile","r_emailaddress"],"redirectUri":"http://localhost:1337/connect/linkedin/callback"},"cognito":{"enabled":false,"icon":"aws","key":"","secret":"","subdomain":"my.subdomain.com","callback":"/auth/cognito/callback","scope":["email","openid","profile"],"redirectUri":"http://localhost:1337/connect/cognito/callback"},"reddit":{"enabled":false,"icon":"reddit","key":"","secret":"","state":true,"callback":"/auth/reddit/callback","scope":["identity"],"redirectUri":"http://localhost:1337/connect/reddit/callback"},"auth0":{"enabled":false,"icon":"","key":"","secret":"","subdomain":"my-tenant.eu","callback":"/auth/auth0/callback","scope":["openid","email","profile"],"redirectUri":"http://localhost:1337/connect/auth0/callback"},"cas":{"enabled":false,"icon":"book","key":"","secret":"","callback":"/auth/cas/callback","scope":["openid email"],"subdomain":"my.subdomain.com/cas","redirectUri":"http://localhost:1337/connect/cas/callback"}}', 'object', '', ''),
	(12, 'plugin_upload_settings', '{"sizeOptimization":false,"responsiveDimensions":true}', 'object', 'development', ''),
	(13, 'plugin_content_manager_configuration_content_types::plugins::users-permissions.role', '{"uid":"plugins::users-permissions.role","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":true,"sortable":true}},"type":{"edit":{"label":"Type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Type","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"Permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"type"},"list":{"label":"Permissions","searchable":false,"sortable":false}},"users":{"edit":{"label":"Users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"Users","searchable":false,"sortable":false}}},"layouts":{"list":["id","name","description","type"],"editRelations":["permissions","users"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6}]]}}', 'object', '', ''),
	(14, 'plugin_content_manager_configuration_content_types::strapi::permission', '{"uid":"strapi::permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"action":{"edit":{"label":"Action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Action","searchable":true,"sortable":true}},"subject":{"edit":{"label":"Subject","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Subject","searchable":true,"sortable":true}},"properties":{"edit":{"label":"Properties","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Properties","searchable":false,"sortable":false}},"conditions":{"edit":{"label":"Conditions","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Conditions","searchable":false,"sortable":false}},"role":{"edit":{"label":"Role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Role","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","subject","role"],"editRelations":["role"],"edit":[[{"name":"action","size":6},{"name":"subject","size":6}],[{"name":"properties","size":12}],[{"name":"conditions","size":12}]]}}', 'object', '', ''),
	(15, 'plugin_content_manager_configuration_content_types::strapi::role', '{"uid":"strapi::role","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"code":{"edit":{"label":"Code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Code","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":true,"sortable":true}},"users":{"edit":{"label":"Users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"firstname"},"list":{"label":"Users","searchable":false,"sortable":false}},"permissions":{"edit":{"label":"Permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"Permissions","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","description"],"editRelations":["users","permissions"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}],[{"name":"description","size":6}]]}}', 'object', '', ''),
	(16, 'plugin_content_manager_configuration_content_types::strapi::user', '{"uid":"strapi::user","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"firstname","defaultSortBy":"firstname","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"firstname":{"edit":{"label":"Firstname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Firstname","searchable":true,"sortable":true}},"lastname":{"edit":{"label":"Lastname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Lastname","searchable":true,"sortable":true}},"username":{"edit":{"label":"Username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Username","searchable":true,"sortable":true}},"email":{"edit":{"label":"Email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Email","searchable":true,"sortable":true}},"password":{"edit":{"label":"Password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"ResetPasswordToken","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ResetPasswordToken","searchable":true,"sortable":true}},"registrationToken":{"edit":{"label":"RegistrationToken","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"RegistrationToken","searchable":true,"sortable":true}},"isActive":{"edit":{"label":"IsActive","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"IsActive","searchable":true,"sortable":true}},"roles":{"edit":{"label":"Roles","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Roles","searchable":false,"sortable":false}},"blocked":{"edit":{"label":"Blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Blocked","searchable":true,"sortable":true}},"preferedLanguage":{"edit":{"label":"PreferedLanguage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"PreferedLanguage","searchable":true,"sortable":true}}},"layouts":{"list":["id","firstname","lastname","username"],"editRelations":["roles"],"edit":[[{"name":"firstname","size":6},{"name":"lastname","size":6}],[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"resetPasswordToken","size":6}],[{"name":"registrationToken","size":6},{"name":"isActive","size":4}],[{"name":"blocked","size":4},{"name":"preferedLanguage","size":6}]]}}', 'object', '', ''),
	(17, 'plugin_content_manager_configuration_content_types::plugins::users-permissions.permission', '{"uid":"plugins::users-permissions.permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"type","defaultSortBy":"type","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"type":{"edit":{"label":"Type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Type","searchable":true,"sortable":true}},"controller":{"edit":{"label":"Controller","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Controller","searchable":true,"sortable":true}},"action":{"edit":{"label":"Action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Action","searchable":true,"sortable":true}},"enabled":{"edit":{"label":"Enabled","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Enabled","searchable":true,"sortable":true}},"policy":{"edit":{"label":"Policy","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Policy","searchable":true,"sortable":true}},"role":{"edit":{"label":"Role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Role","searchable":true,"sortable":true}}},"layouts":{"list":["id","type","controller","action"],"editRelations":["role"],"edit":[[{"name":"type","size":6},{"name":"controller","size":6}],[{"name":"action","size":6},{"name":"enabled","size":4}],[{"name":"policy","size":6}]]}}', 'object', '', ''),
	(18, 'plugin_content_manager_configuration_content_types::plugins::users-permissions.user', '{"uid":"plugins::users-permissions.user","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"username","defaultSortBy":"username","defaultSortOrder":"ASC"},"metadatas":{"userAvatar":{"edit":{"label":"UserAvatar","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"UserAvatar","searchable":false,"sortable":false}},"confirmationToken":{"edit":{"label":"ConfirmationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"ConfirmationToken","searchable":true,"sortable":true}},"darkModeEnabled":{"edit":{"label":"DarkModeEnabled","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"DarkModeEnabled","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"blocked":{"edit":{"label":"Blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Blocked","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"ResetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"ResetPasswordToken","searchable":true,"sortable":true}},"provider":{"edit":{"label":"Provider","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Provider","searchable":true,"sortable":true}},"role":{"edit":{"label":"Role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Role","searchable":true,"sortable":true}},"username":{"edit":{"label":"Username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Username","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}},"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"password":{"edit":{"label":"Password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Password","searchable":true,"sortable":true}},"email":{"edit":{"label":"Email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Email","searchable":true,"sortable":true}},"confirmed":{"edit":{"label":"Confirmed","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Confirmed","searchable":true,"sortable":true}}},"layouts":{"edit":[[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"userAvatar","size":6},{"name":"password","size":6}],[{"name":"confirmed","size":4}],[{"name":"blocked","size":4},{"name":"darkModeEnabled","size":4}]],"editRelations":["role"],"list":["id","username","email","confirmed"]}}', 'object', '', ''),
	(19, 'plugin_content_manager_configuration_content_types::plugins::upload.file', '{"uid":"plugins::upload.file","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"alternativeText":{"edit":{"label":"AlternativeText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"AlternativeText","searchable":true,"sortable":true}},"caption":{"edit":{"label":"Caption","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Caption","searchable":true,"sortable":true}},"width":{"edit":{"label":"Width","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Width","searchable":true,"sortable":true}},"height":{"edit":{"label":"Height","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Height","searchable":true,"sortable":true}},"formats":{"edit":{"label":"Formats","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Formats","searchable":false,"sortable":false}},"hash":{"edit":{"label":"Hash","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Hash","searchable":true,"sortable":true}},"ext":{"edit":{"label":"Ext","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Ext","searchable":true,"sortable":true}},"mime":{"edit":{"label":"Mime","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Mime","searchable":true,"sortable":true}},"size":{"edit":{"label":"Size","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Size","searchable":true,"sortable":true}},"url":{"edit":{"label":"Url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Url","searchable":true,"sortable":true}},"previewUrl":{"edit":{"label":"PreviewUrl","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"PreviewUrl","searchable":true,"sortable":true}},"provider":{"edit":{"label":"Provider","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Provider","searchable":true,"sortable":true}},"provider_metadata":{"edit":{"label":"Provider_metadata","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Provider_metadata","searchable":false,"sortable":false}},"related":{"edit":{"label":"Related","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Related","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","alternativeText","caption"],"editRelations":["related"],"edit":[[{"name":"name","size":6},{"name":"alternativeText","size":6}],[{"name":"caption","size":6},{"name":"width","size":4}],[{"name":"height","size":4}],[{"name":"formats","size":12}],[{"name":"hash","size":6},{"name":"ext","size":6}],[{"name":"mime","size":6},{"name":"size","size":4}],[{"name":"url","size":6},{"name":"previewUrl","size":6}],[{"name":"provider","size":6}],[{"name":"provider_metadata","size":12}]]}}', 'object', '', ''),
	(20, 'plugin_content_manager_configuration_content_types::plugins::i18n.locale', '{"uid":"plugins::i18n.locale","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"code":{"edit":{"label":"Code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Code","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","created_at"],"editRelations":[],"edit":[[{"name":"name","size":6},{"name":"code","size":6}]]}}', 'object', '', ''),
	(21, 'plugin_i18n_default_locale', '"en"', 'string', '', ''),
	(22, 'plugin_users-permissions_email', '{"reset_password":{"display":"Email.template.reset_password","icon":"sync","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Reset password","message":"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>"}},"email_confirmation":{"display":"Email.template.email_confirmation","icon":"check-square","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Account confirmation","message":"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>"}}}', 'object', '', ''),
	(23, 'plugin_users-permissions_advanced', '{"unique_email":true,"allow_register":true,"email_confirmation":true,"email_reset_password":null,"email_confirmation_redirection":null,"default_role":"authenticated"}', 'object', '', ''),
	(24, 'core_admin_auth', '{"providers":{"autoRegister":false,"defaultRole":null}}', 'object', '', ''),
	(25, 'model_def_plugins::comments.comment', '{"uid":"plugins::comments.comment","collectionName":"comments","kind":"collectionType","info":{"name":"comment","description":""},"options":{"increments":true,"timestamps":["created_at","updated_at"],"isManaged":false,"comment":""},"attributes":{"content":{"type":"text","configurable":false,"required":true},"blocked":{"type":"boolean","default":false,"configurable":false},"blockedThread":{"type":"boolean","default":false,"configurable":false},"blockReason":{"type":"string","configurable":false},"points":{"type":"integer","default":0,"configurable":false},"authorUser":{"model":"user","plugin":"users-permissions","configurable":false},"authorType":{"type":"string","configurable":false},"authorId":{"type":"string","configurable":false},"authorName":{"type":"string","configurable":false},"authorEmail":{"type":"email","configurable":false},"authorAvatar":{"type":"string","configurable":false},"removed":{"type":"boolean","configurable":false},"relatedSlug":{"type":"string","private":true,"configurable":false},"related":{"collection":"*","filter":"field","configurable":false},"reports":{"collection":"report","plugin":"comments","via":"related","configurable":false,"isVirtual":true},"threadOf":{"columnName":"threadOf","model":"comment","plugin":"comments","configurable":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}', 'object', NULL, NULL),
	(26, 'model_def_plugins::comments.report', '{"uid":"plugins::comments.report","collectionName":"comments_report","kind":"collectionType","info":{"name":"report","description":""},"options":{"increments":true,"timestamps":["created_at","updated_at"],"isManaged":false,"comment":""},"attributes":{"content":{"type":"text","configurable":false},"reason":{"type":"enumeration","enum":["BAD_LANGUAGE","DISCRIMINATION","OTHER"],"default":"OTHER","configurable":false,"required":true},"resolved":{"type":"boolean","default":false,"configurable":false},"related":{"fieldName":"related","model":"comment","plugin":"comments","configurable":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}', 'object', NULL, NULL),
	(27, 'model_def_plugins::navigation.audience', '{"uid":"plugins::navigation.audience","collectionName":"audience","kind":"collectionType","info":{"name":"audience","description":""},"options":{"increments":true,"comment":"Audience","timestamps":false},"attributes":{"name":{"type":"string","required":true},"key":{"type":"uid","targetField":"name"},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}', 'object', NULL, NULL),
	(28, 'model_def_plugins::navigation.navigation', '{"uid":"plugins::navigation.navigation","collectionName":"navigations","kind":"collectionType","info":{"name":"navigation","description":"Navigation container"},"options":{"increments":true,"comment":"","timestamps":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"text","configurable":false,"required":true},"slug":{"type":"uid","target":"name","configurable":false,"required":true},"visible":{"type":"boolean","default":false,"configurable":false},"items":{"collection":"navigationitem","plugin":"navigation","via":"master","configurable":false,"isVirtual":true},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}', 'object', NULL, NULL),
	(29, 'model_def_plugins::navigation.navigationitem', '{"uid":"plugins::navigation.navigationitem","collectionName":"navigations_items","kind":"collectionType","info":{"name":"navigationItem","description":""},"options":{"increments":true,"timestamps":["created_at","updated_at"],"comment":"Navigation Item"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"title":{"type":"text","configurable":false,"required":true},"type":{"type":"enumeration","enum":["INTERNAL","EXTERNAL"],"default":"INTERNAL","configurable":false},"path":{"type":"text","targetField":"title","configurable":false},"externalPath":{"type":"text","configurable":false},"uiRouterKey":{"type":"string","configurable":false},"menuAttached":{"type":"boolean","default":false,"configurable":false},"order":{"type":"integer","default":0,"configurable":false},"related":{"collection":"*","filter":"field","configurable":false},"parent":{"columnName":"parent","model":"navigationItem","plugin":"navigation","configurable":false,"default":null},"master":{"columnName":"master","model":"navigation","plugin":"navigation","configurable":false},"audience":{"collection":"audience","plugin":"navigation","attribute":"audience","column":"id","isVirtual":true},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}', 'object', NULL, NULL),
	(30, 'plugin_content_manager_configuration_content_types::plugins::comments.comment', '{"uid":"plugins::comments.comment","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"blockReason","defaultSortBy":"blockReason","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"content":{"edit":{"label":"Content","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Content","searchable":true,"sortable":true}},"blocked":{"edit":{"label":"Blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Blocked","searchable":true,"sortable":true}},"blockedThread":{"edit":{"label":"BlockedThread","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"BlockedThread","searchable":true,"sortable":true}},"blockReason":{"edit":{"label":"BlockReason","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"BlockReason","searchable":true,"sortable":true}},"points":{"edit":{"label":"Points","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Points","searchable":true,"sortable":true}},"authorUser":{"edit":{"label":"AuthorUser","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"AuthorUser","searchable":true,"sortable":true}},"authorType":{"edit":{"label":"AuthorType","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"AuthorType","searchable":true,"sortable":true}},"authorId":{"edit":{"label":"AuthorId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"AuthorId","searchable":true,"sortable":true}},"authorName":{"edit":{"label":"AuthorName","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"AuthorName","searchable":true,"sortable":true}},"authorEmail":{"edit":{"label":"AuthorEmail","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"AuthorEmail","searchable":true,"sortable":true}},"authorAvatar":{"edit":{"label":"AuthorAvatar","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"AuthorAvatar","searchable":true,"sortable":true}},"removed":{"edit":{"label":"Removed","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Removed","searchable":true,"sortable":true}},"relatedSlug":{"edit":{"label":"RelatedSlug","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"RelatedSlug","searchable":true,"sortable":true}},"related":{"edit":{"label":"Related","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Related","searchable":false,"sortable":false}},"reports":{"edit":{"label":"Reports","description":"","placeholder":"","visible":true,"editable":true,"mainField":"id"},"list":{"label":"Reports","searchable":false,"sortable":false}},"threadOf":{"edit":{"label":"ThreadOf","description":"","placeholder":"","visible":true,"editable":true,"mainField":"blockReason"},"list":{"label":"ThreadOf","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","content","blocked","blockedThread"],"editRelations":["authorUser","related","reports","threadOf"],"edit":[[{"name":"content","size":6},{"name":"blocked","size":4}],[{"name":"blockedThread","size":4},{"name":"blockReason","size":6}],[{"name":"points","size":4},{"name":"authorType","size":6}],[{"name":"authorId","size":6},{"name":"authorName","size":6}],[{"name":"authorEmail","size":6},{"name":"authorAvatar","size":6}],[{"name":"removed","size":4},{"name":"relatedSlug","size":6}]]}}', 'object', '', ''),
	(31, 'plugin_content_manager_configuration_content_types::plugins::comments.report', '{"uid":"plugins::comments.report","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"content":{"edit":{"label":"Content","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Content","searchable":true,"sortable":true}},"reason":{"edit":{"label":"Reason","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Reason","searchable":true,"sortable":true}},"resolved":{"edit":{"label":"Resolved","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Resolved","searchable":true,"sortable":true}},"related":{"edit":{"label":"Related","description":"","placeholder":"","visible":true,"editable":true,"mainField":"blockReason"},"list":{"label":"Related","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","content","reason","resolved"],"editRelations":["related"],"edit":[[{"name":"content","size":6},{"name":"reason","size":6}],[{"name":"resolved","size":4}]]}}', 'object', '', ''),
	(32, 'plugin_content_manager_configuration_content_types::plugins::navigation.audience', '{"uid":"plugins::navigation.audience","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"key":{"edit":{"label":"Key","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Key","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","key"],"editRelations":[],"edit":[[{"name":"name","size":6},{"name":"key","size":6}]]}}', 'object', '', ''),
	(33, 'plugin_content_manager_configuration_content_types::plugins::navigation.navigation', '{"uid":"plugins::navigation.navigation","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"slug":{"edit":{"label":"Slug","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Slug","searchable":true,"sortable":true}},"visible":{"edit":{"label":"Visible","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Visible","searchable":true,"sortable":true}},"items":{"edit":{"label":"Items","description":"","placeholder":"","visible":true,"editable":true,"mainField":"uiRouterKey"},"list":{"label":"Items","searchable":false,"sortable":false}}},"layouts":{"list":["id","name","slug","visible"],"editRelations":["items"],"edit":[[{"name":"name","size":6},{"name":"slug","size":6}],[{"name":"visible","size":4}]]}}', 'object', '', ''),
	(34, 'plugin_content_manager_configuration_content_types::plugins::navigation.navigationitem', '{"uid":"plugins::navigation.navigationitem","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"uiRouterKey","defaultSortBy":"uiRouterKey","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"type":{"edit":{"label":"Type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Type","searchable":true,"sortable":true}},"path":{"edit":{"label":"Path","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Path","searchable":true,"sortable":true}},"externalPath":{"edit":{"label":"ExternalPath","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ExternalPath","searchable":true,"sortable":true}},"uiRouterKey":{"edit":{"label":"UiRouterKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"UiRouterKey","searchable":true,"sortable":true}},"menuAttached":{"edit":{"label":"MenuAttached","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"MenuAttached","searchable":true,"sortable":true}},"order":{"edit":{"label":"Order","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Order","searchable":true,"sortable":true}},"related":{"edit":{"label":"Related","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Related","searchable":false,"sortable":false}},"parent":{"edit":{"label":"Parent","description":"","placeholder":"","visible":true,"editable":true,"mainField":"uiRouterKey"},"list":{"label":"Parent","searchable":true,"sortable":true}},"master":{"edit":{"label":"Master","description":"","placeholder":"","visible":true,"editable":true,"mainField":"id"},"list":{"label":"Master","searchable":true,"sortable":true}},"audience":{"edit":{"label":"Audience","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Audience","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","type","path"],"editRelations":["related","parent","master","audience"],"edit":[[{"name":"title","size":6},{"name":"type","size":6}],[{"name":"path","size":6},{"name":"externalPath","size":6}],[{"name":"uiRouterKey","size":6},{"name":"menuAttached","size":4}],[{"name":"order","size":4}]]}}', 'object', '', ''),
	(35, 'model_def_application::features.features', '{"uid":"application::features.features","collectionName":"features","kind":"collectionType","info":{"name":"features"},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"title":{"pluginOptions":{"i18n":{"localized":true}},"type":"string"},"localizations":{"writable":true,"private":false,"configurable":false,"visible":false,"collection":"features","populate":["_id","id","locale","published_at"],"attribute":"related_feature","column":"id","isVirtual":true},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"},"published_at":{"type":"datetime","configurable":false,"writable":true,"visible":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}', 'object', NULL, NULL),
	(36, 'plugin_content_manager_configuration_content_types::application::features.features', '{"uid":"application::features.features","settings":{"bulkable":false,"filterable":true,"searchable":true,"pageSize":100,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"edit":[[{"name":"title","size":6}]],"editRelations":[],"list":["id","title","created_at","updated_at"]}}', 'object', '', ''),
	(37, 'model_def_application::access.access', '{"uid":"application::access.access","collectionName":"accesses","kind":"collectionType","info":{"name":"Access","description":""},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":true},"pluginOptions":{},"attributes":{"icon":{"type":"enumeration","enum":["calendarOutline","peopleOutline","mapOutline","informationCircleOutline","person","help","logOut","logIn","personAdd"],"required":true},"navigation":{"model":"navigationitem","plugin":"navigation","via":"related","configurable":false,"hidden":true},"published_at":{"type":"datetime","configurable":false,"writable":true,"visible":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}', 'object', NULL, NULL),
	(38, 'plugin_content_manager_configuration_content_types::application::access.access', '{"uid":"application::access.access","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"icon":{"edit":{"label":"Icon","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Icon","searchable":true,"sortable":true}},"navigation":{"edit":{"label":"Navigation","description":"","placeholder":"","visible":true,"editable":true,"mainField":"uiRouterKey"},"list":{"label":"Navigation","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","icon"],"edit":[[{"name":"icon","size":6}]],"editRelations":["navigation"]}}', 'object', '', ''),
	(39, 'model_def_row-types.setting', '{"uid":"row-types.setting","collectionName":"components_row_types_settings","info":{"name":"Setting","icon":"ad","description":""},"options":{"timestamps":false},"attributes":{"key":{"type":"string","required":true},"value":{"type":"string","required":true}}}', 'object', NULL, NULL),
	(40, 'model_def_application::settings.settings', '{"uid":"application::settings.settings","collectionName":"settings","kind":"singleType","info":{"name":"settings","description":""},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":false},"pluginOptions":{},"attributes":{"setting":{"type":"component","repeatable":true,"component":"row-types.setting","min":1,"required":true},"status":{"type":"component","repeatable":true,"component":"row-types.status"},"app_images":{"type":"component","repeatable":true,"component":"row-types.app-images"},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}', 'object', NULL, NULL),
	(41, 'plugin_content_manager_configuration_components::row-types.setting', '{"uid":"row-types.setting","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"key","defaultSortBy":"key","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"key":{"edit":{"label":"Key","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Key","searchable":true,"sortable":true}},"value":{"edit":{"label":"Value","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Value","searchable":true,"sortable":true}}},"layouts":{"list":["id","key","value"],"edit":[[{"name":"key","size":6},{"name":"value","size":6}]],"editRelations":[]},"isComponent":true}', 'object', '', ''),
	(42, 'plugin_content_manager_configuration_content_types::application::settings.settings', '{"uid":"application::settings.settings","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"setting":{"edit":{"label":"Setting","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Setting","searchable":false,"sortable":false}},"status":{"edit":{"label":"Status","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Status","searchable":false,"sortable":false}},"app_images":{"edit":{"label":"App_images","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"App_images","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","created_at","updated_at"],"edit":[[{"name":"setting","size":12}],[{"name":"status","size":12}],[{"name":"app_images","size":12}]],"editRelations":[]}}', 'object', '', ''),
	(43, 'model_def_row-types.status', '{"uid":"row-types.status","collectionName":"components_row_types_statuses","info":{"name":"status","icon":"adjust","description":""},"options":{"timestamps":false},"attributes":{"key":{"type":"string"},"value":{"type":"boolean","default":false,"required":true},"enabled":{"type":"boolean","default":false,"required":true}}}', 'object', NULL, NULL),
	(44, 'plugin_content_manager_configuration_components::row-types.status', '{"uid":"row-types.status","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"key","defaultSortBy":"key","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"key":{"edit":{"label":"Key","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Key","searchable":true,"sortable":true}},"value":{"edit":{"label":"Value","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Value","searchable":true,"sortable":true}},"enabled":{"edit":{"label":"Enabled","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Enabled","searchable":true,"sortable":true}}},"layouts":{"list":["id","key","value","enabled"],"edit":[[{"name":"key","size":6},{"name":"value","size":4}],[{"name":"enabled","size":4}]],"editRelations":[]},"isComponent":true}', 'object', '', ''),
	(45, 'plugin_documentation_config', '{"restrictedAccess":false}', 'object', '', ''),
	(46, 'model_def_application::translations.translations', '{"uid":"application::translations.translations","collectionName":"translations","kind":"collectionType","info":{"name":"translations","description":""},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":false},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"text":{"pluginOptions":{"i18n":{"localized":true}},"type":"string"},"key":{"pluginOptions":{"i18n":{"localized":false}},"type":"string"},"localizations":{"writable":true,"private":false,"configurable":false,"visible":false,"collection":"translations","populate":["_id","id","locale","published_at"],"attribute":"related_translation","column":"id","isVirtual":true},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}', 'object', NULL, NULL),
	(47, 'plugin_content_manager_configuration_content_types::application::translations.translations', '{"uid":"application::translations.translations","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":100,"mainField":"text","defaultSortBy":"text","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"text":{"edit":{"label":"Text","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Text","searchable":true,"sortable":true}},"key":{"edit":{"label":"Key","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Key","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"edit":[[{"name":"key","size":6},{"name":"text","size":6}]],"editRelations":[],"list":["key","text"]}}', 'object', '', ''),
	(48, 'model_def_row-types.app-images', '{"uid":"row-types.app-images","collectionName":"components_row_types_app_images","info":{"name":"app_images","icon":"apple-alt"},"options":{"timestamps":false},"attributes":{"name":{"type":"string"},"image":{"model":"file","via":"related","allowedTypes":["images"],"plugin":"upload","required":false,"pluginOptions":{}}}}', 'object', NULL, NULL),
	(49, 'plugin_content_manager_configuration_components::row-types.app-images', '{"uid":"row-types.app-images","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"image":{"edit":{"label":"Image","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Image","searchable":false,"sortable":false}}},"layouts":{"list":["id","name","image"],"edit":[[{"name":"name","size":6},{"name":"image","size":6}]],"editRelations":[]},"isComponent":true}', 'object', '', ''),
	(50, 'model_def_application::connections.connections', '{"uid":"application::connections.connections","collectionName":"connections","kind":"collectionType","info":{"name":"connections"},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":false},"pluginOptions":{},"attributes":{"users_permissions_user":{"plugin":"users-permissions","model":"user"},"origin":{"type":"string"},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}', 'object', NULL, NULL),
	(51, 'plugin_content_manager_configuration_content_types::application::connections.connections', '{"uid":"application::connections.connections","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"origin","defaultSortBy":"origin","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"users_permissions_user":{"edit":{"label":"Users_permissions_user","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"Users_permissions_user","searchable":true,"sortable":true}},"origin":{"edit":{"label":"Origin","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Origin","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","users_permissions_user","origin","created_at"],"editRelations":["users_permissions_user"],"edit":[[{"name":"origin","size":6}]]}}', 'object', '', '');
/*!40000 ALTER TABLE `core_store` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.features
DROP TABLE IF EXISTS `features`;
CREATE TABLE IF NOT EXISTS `features` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.features: ~1 rows (aproximadamente)
DELETE FROM `features`;
/*!40000 ALTER TABLE `features` DISABLE KEYS */;
INSERT INTO `features` (`id`, `title`, `locale`, `published_at`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
	(1, 'Dark Mode to localStorage', 'en', NULL, 1, 1, '2021-06-16 21:19:44', '2021-06-16 21:19:44');
/*!40000 ALTER TABLE `features` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.features__localizations
DROP TABLE IF EXISTS `features__localizations`;
CREATE TABLE IF NOT EXISTS `features__localizations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `feature_id` int(11) DEFAULT NULL,
  `related_feature_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.features__localizations: ~0 rows (aproximadamente)
DELETE FROM `features__localizations`;
/*!40000 ALTER TABLE `features__localizations` DISABLE KEYS */;
/*!40000 ALTER TABLE `features__localizations` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.i18n_locales
DROP TABLE IF EXISTS `i18n_locales`;
CREATE TABLE IF NOT EXISTS `i18n_locales` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `i18n_locales_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.i18n_locales: ~2 rows (aproximadamente)
DELETE FROM `i18n_locales`;
/*!40000 ALTER TABLE `i18n_locales` DISABLE KEYS */;
INSERT INTO `i18n_locales` (`id`, `name`, `code`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
	(1, 'English (UK)', 'en', NULL, 1, '2021-06-16 20:12:17', '2021-06-16 23:23:54'),
	(2, 'Spanish (Spain)', 'es-ES', 1, 1, '2021-06-16 23:24:23', '2021-06-16 23:24:37');
/*!40000 ALTER TABLE `i18n_locales` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.navigations
DROP TABLE IF EXISTS `navigations`;
CREATE TABLE IF NOT EXISTS `navigations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` longtext NOT NULL,
  `slug` varchar(255) NOT NULL,
  `visible` tinyint(1) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `navigations_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.navigations: ~1 rows (aproximadamente)
DELETE FROM `navigations`;
/*!40000 ALTER TABLE `navigations` DISABLE KEYS */;
INSERT INTO `navigations` (`id`, `name`, `slug`, `visible`, `created_by`, `updated_by`) VALUES
	(1, 'Main navigation', 'main-navigation', 1, NULL, NULL);
/*!40000 ALTER TABLE `navigations` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.navigations_items
DROP TABLE IF EXISTS `navigations_items`;
CREATE TABLE IF NOT EXISTS `navigations_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` longtext NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `path` longtext,
  `externalPath` longtext,
  `uiRouterKey` varchar(255) DEFAULT NULL,
  `menuAttached` tinyint(1) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `master` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.navigations_items: ~0 rows (aproximadamente)
DELETE FROM `navigations_items`;
/*!40000 ALTER TABLE `navigations_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `navigations_items` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.navigations_items_morph
DROP TABLE IF EXISTS `navigations_items_morph`;
CREATE TABLE IF NOT EXISTS `navigations_items_morph` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `navigations_items_id` int(11) DEFAULT NULL,
  `related_id` int(11) DEFAULT NULL,
  `related_type` longtext,
  `field` longtext,
  `order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.navigations_items_morph: ~0 rows (aproximadamente)
DELETE FROM `navigations_items_morph`;
/*!40000 ALTER TABLE `navigations_items_morph` DISABLE KEYS */;
/*!40000 ALTER TABLE `navigations_items_morph` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.navigations_items__audience
DROP TABLE IF EXISTS `navigations_items__audience`;
CREATE TABLE IF NOT EXISTS `navigations_items__audience` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `navigations_item_id` int(11) DEFAULT NULL,
  `audience_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.navigations_items__audience: ~0 rows (aproximadamente)
DELETE FROM `navigations_items__audience`;
/*!40000 ALTER TABLE `navigations_items__audience` DISABLE KEYS */;
/*!40000 ALTER TABLE `navigations_items__audience` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.settings
DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.settings: ~1 rows (aproximadamente)
DELETE FROM `settings`;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` (`id`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
	(1, 1, 1, '2021-06-16 22:27:21', '2021-06-23 02:45:00');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.settings_components
DROP TABLE IF EXISTS `settings_components`;
CREATE TABLE IF NOT EXISTS `settings_components` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `field` varchar(255) NOT NULL,
  `order` int(10) unsigned NOT NULL,
  `component_type` varchar(255) NOT NULL,
  `component_id` int(11) NOT NULL,
  `setting_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `setting_id_fk` (`setting_id`),
  CONSTRAINT `setting_id_fk` FOREIGN KEY (`setting_id`) REFERENCES `settings` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.settings_components: ~3 rows (aproximadamente)
DELETE FROM `settings_components`;
/*!40000 ALTER TABLE `settings_components` DISABLE KEYS */;
INSERT INTO `settings_components` (`id`, `field`, `order`, `component_type`, `component_id`, `setting_id`) VALUES
	(1, 'Setting', 1, 'components_row_types_settings', 1, 1),
	(2, 'status', 1, 'components_row_types_statuses', 1, 1),
	(3, 'app_images', 1, 'components_row_types_app_images', 1, 1);
/*!40000 ALTER TABLE `settings_components` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.strapi_administrator
DROP TABLE IF EXISTS `strapi_administrator`;
CREATE TABLE IF NOT EXISTS `strapi_administrator` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `resetPasswordToken` varchar(255) DEFAULT NULL,
  `registrationToken` varchar(255) DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `preferedLanguage` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `strapi_administrator_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.strapi_administrator: ~2 rows (aproximadamente)
DELETE FROM `strapi_administrator`;
/*!40000 ALTER TABLE `strapi_administrator` DISABLE KEYS */;
INSERT INTO `strapi_administrator` (`id`, `firstname`, `lastname`, `username`, `email`, `password`, `resetPasswordToken`, `registrationToken`, `isActive`, `blocked`, `preferedLanguage`) VALUES
	(1, 'David', 'Rullán Díaz', NULL, 'drullan.dev@gmail.com', '$2a$10$Q/YbTxgUo4YN2ocGz84zD.1uTALnUU04xJP46IZFpf0f3xenvskIC', NULL, NULL, 1, NULL, NULL),
	(2, 'Obscure', 'Doe', NULL, 'obscure@doe.com', '$2a$10$SvvmVogb/IEQeeVjRiDNHe8gTxGCCRphaTio0SJpEAK.hrcfmKAem', NULL, 'ef35db282e4661af2ba58871f09c7f5ee9896c1c', 1, NULL, NULL);
/*!40000 ALTER TABLE `strapi_administrator` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.strapi_permission
DROP TABLE IF EXISTS `strapi_permission`;
CREATE TABLE IF NOT EXISTS `strapi_permission` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(255) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `properties` longtext,
  `conditions` longtext,
  `role` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=378 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.strapi_permission: ~98 rows (aproximadamente)
DELETE FROM `strapi_permission`;
/*!40000 ALTER TABLE `strapi_permission` DISABLE KEYS */;
INSERT INTO `strapi_permission` (`id`, `action`, `subject`, `properties`, `conditions`, `role`, `created_at`, `updated_at`) VALUES
	(1, 'plugins::upload.read', NULL, '{}', '[]', 2, '2021-06-16 20:12:19', '2021-06-16 20:12:19'),
	(2, 'plugins::upload.assets.update', NULL, '{}', '[]', 2, '2021-06-16 20:12:19', '2021-06-16 20:12:19'),
	(3, 'plugins::upload.assets.create', NULL, '{}', '[]', 2, '2021-06-16 20:12:19', '2021-06-16 20:12:19'),
	(4, 'plugins::upload.assets.download', NULL, '{}', '[]', 2, '2021-06-16 20:12:19', '2021-06-16 20:12:19'),
	(5, 'plugins::upload.assets.copy-link', NULL, '{}', '[]', 2, '2021-06-16 20:12:19', '2021-06-16 20:12:19'),
	(6, 'plugins::upload.read', NULL, '{}', '["admin::is-creator"]', 3, '2021-06-16 20:12:19', '2021-06-16 20:12:19'),
	(7, 'plugins::upload.assets.create', NULL, '{}', '[]', 3, '2021-06-16 20:12:19', '2021-06-16 20:12:19'),
	(8, 'plugins::upload.assets.update', NULL, '{}', '["admin::is-creator"]', 3, '2021-06-16 20:12:19', '2021-06-16 20:12:19'),
	(9, 'plugins::upload.assets.download', NULL, '{}', '[]', 3, '2021-06-16 20:12:19', '2021-06-16 20:12:19'),
	(10, 'plugins::upload.assets.copy-link', NULL, '{}', '[]', 3, '2021-06-16 20:12:19', '2021-06-16 20:12:19'),
	(15, 'plugins::content-type-builder.read', NULL, '{}', '[]', 1, '2021-06-16 20:12:19', '2021-06-16 20:12:19'),
	(16, 'plugins::upload.read', NULL, '{}', '[]', 1, '2021-06-16 20:12:19', '2021-06-16 20:12:19'),
	(17, 'plugins::email.settings.read', NULL, '{}', '[]', 1, '2021-06-16 20:12:19', '2021-06-16 20:12:19'),
	(18, 'plugins::upload.assets.create', NULL, '{}', '[]', 1, '2021-06-16 20:12:19', '2021-06-16 20:12:19'),
	(19, 'plugins::upload.assets.download', NULL, '{}', '[]', 1, '2021-06-16 20:12:19', '2021-06-16 20:12:19'),
	(20, 'plugins::upload.assets.update', NULL, '{}', '[]', 1, '2021-06-16 20:12:19', '2021-06-16 20:12:19'),
	(21, 'plugins::upload.assets.copy-link', NULL, '{}', '[]', 1, '2021-06-16 20:12:20', '2021-06-16 20:12:20'),
	(22, 'plugins::upload.settings.read', NULL, '{}', '[]', 1, '2021-06-16 20:12:20', '2021-06-16 20:12:20'),
	(23, 'plugins::content-manager.single-types.configure-view', NULL, '{}', '[]', 1, '2021-06-16 20:12:20', '2021-06-16 20:12:20'),
	(24, 'plugins::content-manager.collection-types.configure-view', NULL, '{}', '[]', 1, '2021-06-16 20:12:20', '2021-06-16 20:12:20'),
	(25, 'plugins::i18n.locale.create', NULL, '{}', '[]', 1, '2021-06-16 20:12:20', '2021-06-16 20:12:20'),
	(26, 'plugins::content-manager.components.configure-layout', NULL, '{}', '[]', 1, '2021-06-16 20:12:20', '2021-06-16 20:12:20'),
	(27, 'plugins::i18n.locale.read', NULL, '{}', '[]', 1, '2021-06-16 20:12:20', '2021-06-16 20:12:20'),
	(28, 'plugins::i18n.locale.update', NULL, '{}', '[]', 1, '2021-06-16 20:12:20', '2021-06-16 20:12:20'),
	(29, 'plugins::i18n.locale.delete', NULL, '{}', '[]', 1, '2021-06-16 20:12:20', '2021-06-16 20:12:20'),
	(30, 'plugins::users-permissions.roles.create', NULL, '{}', '[]', 1, '2021-06-16 20:12:20', '2021-06-16 20:12:20'),
	(31, 'plugins::users-permissions.roles.read', NULL, '{}', '[]', 1, '2021-06-16 20:12:20', '2021-06-16 20:12:20'),
	(32, 'plugins::users-permissions.roles.update', NULL, '{}', '[]', 1, '2021-06-16 20:12:20', '2021-06-16 20:12:20'),
	(33, 'plugins::users-permissions.roles.delete', NULL, '{}', '[]', 1, '2021-06-16 20:12:20', '2021-06-16 20:12:20'),
	(34, 'plugins::users-permissions.providers.read', NULL, '{}', '[]', 1, '2021-06-16 20:12:20', '2021-06-16 20:12:20'),
	(35, 'plugins::users-permissions.providers.update', NULL, '{}', '[]', 1, '2021-06-16 20:12:20', '2021-06-16 20:12:20'),
	(36, 'plugins::users-permissions.email-templates.read', NULL, '{}', '[]', 1, '2021-06-16 20:12:20', '2021-06-16 20:12:20'),
	(37, 'plugins::users-permissions.email-templates.update', NULL, '{}', '[]', 1, '2021-06-16 20:12:20', '2021-06-16 20:12:20'),
	(38, 'plugins::users-permissions.advanced-settings.read', NULL, '{}', '[]', 1, '2021-06-16 20:12:20', '2021-06-16 20:12:20'),
	(39, 'plugins::users-permissions.advanced-settings.update', NULL, '{}', '[]', 1, '2021-06-16 20:12:20', '2021-06-16 20:12:20'),
	(40, 'admin::marketplace.read', NULL, '{}', '[]', 1, '2021-06-16 20:12:20', '2021-06-16 20:12:20'),
	(41, 'admin::marketplace.plugins.install', NULL, '{}', '[]', 1, '2021-06-16 20:12:20', '2021-06-16 20:12:20'),
	(42, 'admin::webhooks.read', NULL, '{}', '[]', 1, '2021-06-16 20:12:20', '2021-06-16 20:12:20'),
	(43, 'admin::marketplace.plugins.uninstall', NULL, '{}', '[]', 1, '2021-06-16 20:12:20', '2021-06-16 20:12:20'),
	(44, 'admin::webhooks.create', NULL, '{}', '[]', 1, '2021-06-16 20:12:20', '2021-06-16 20:12:20'),
	(45, 'admin::webhooks.update', NULL, '{}', '[]', 1, '2021-06-16 20:12:20', '2021-06-16 20:12:20'),
	(46, 'admin::webhooks.delete', NULL, '{}', '[]', 1, '2021-06-16 20:12:20', '2021-06-16 20:12:20'),
	(47, 'admin::users.create', NULL, '{}', '[]', 1, '2021-06-16 20:12:20', '2021-06-16 20:12:20'),
	(48, 'admin::users.read', NULL, '{}', '[]', 1, '2021-06-16 20:12:20', '2021-06-16 20:12:20'),
	(49, 'admin::users.update', NULL, '{}', '[]', 1, '2021-06-16 20:12:20', '2021-06-16 20:12:20'),
	(50, 'admin::users.delete', NULL, '{}', '[]', 1, '2021-06-16 20:12:20', '2021-06-16 20:12:20'),
	(51, 'admin::roles.read', NULL, '{}', '[]', 1, '2021-06-16 20:12:20', '2021-06-16 20:12:20'),
	(52, 'admin::roles.create', NULL, '{}', '[]', 1, '2021-06-16 20:12:20', '2021-06-16 20:12:20'),
	(53, 'admin::roles.delete', NULL, '{}', '[]', 1, '2021-06-16 20:12:20', '2021-06-16 20:12:20'),
	(54, 'admin::roles.update', NULL, '{}', '[]', 1, '2021-06-16 20:12:20', '2021-06-16 20:12:20'),
	(56, 'plugins::content-manager.explorer.create', 'plugins::comments.comment', '{"fields":["content","blocked","blockedThread","blockReason","points","authorUser","authorType","authorId","authorName","authorEmail","authorAvatar","removed","relatedSlug","related","reports","threadOf"]}', '[]', 1, '2021-06-16 20:35:30', '2021-06-16 20:35:30'),
	(57, 'plugins::content-manager.explorer.create', 'plugins::comments.report', '{"fields":["content","reason","resolved","related"]}', '[]', 1, '2021-06-16 20:35:30', '2021-06-16 20:35:30'),
	(58, 'plugins::content-manager.explorer.create', 'plugins::navigation.audience', '{"fields":["name","key"]}', '[]', 1, '2021-06-16 20:35:30', '2021-06-16 20:35:30'),
	(59, 'plugins::content-manager.explorer.read', 'plugins::comments.comment', '{"fields":["content","blocked","blockedThread","blockReason","points","authorUser","authorType","authorId","authorName","authorEmail","authorAvatar","removed","relatedSlug","related","reports","threadOf"]}', '[]', 1, '2021-06-16 20:35:30', '2021-06-16 20:35:30'),
	(60, 'plugins::content-manager.explorer.read', 'plugins::comments.report', '{"fields":["content","reason","resolved","related"]}', '[]', 1, '2021-06-16 20:35:30', '2021-06-16 20:35:30'),
	(61, 'plugins::content-manager.explorer.read', 'plugins::navigation.audience', '{"fields":["name","key"]}', '[]', 1, '2021-06-16 20:35:30', '2021-06-16 20:35:30'),
	(62, 'plugins::content-manager.explorer.update', 'plugins::comments.comment', '{"fields":["content","blocked","blockedThread","blockReason","points","authorUser","authorType","authorId","authorName","authorEmail","authorAvatar","removed","relatedSlug","related","reports","threadOf"]}', '[]', 1, '2021-06-16 20:35:30', '2021-06-16 20:35:30'),
	(63, 'plugins::content-manager.explorer.update', 'plugins::comments.report', '{"fields":["content","reason","resolved","related"]}', '[]', 1, '2021-06-16 20:35:30', '2021-06-16 20:35:30'),
	(64, 'plugins::content-manager.explorer.update', 'plugins::navigation.audience', '{"fields":["name","key"]}', '[]', 1, '2021-06-16 20:35:30', '2021-06-16 20:35:30'),
	(69, 'plugins::comments.moderate.block.thread', NULL, '{}', '[]', 1, '2021-06-16 20:35:30', '2021-06-16 20:35:30'),
	(70, 'plugins::comments.read', NULL, '{}', '[]', 1, '2021-06-16 20:35:30', '2021-06-16 20:35:30'),
	(71, 'plugins::comments.moderate', NULL, '{}', '[]', 1, '2021-06-16 20:35:30', '2021-06-16 20:35:30'),
	(72, 'plugins::comments.moderate.block.comment', NULL, '{}', '[]', 1, '2021-06-16 20:35:30', '2021-06-16 20:35:30'),
	(73, 'plugins::comments.moderate.reports', NULL, '{}', '[]', 1, '2021-06-16 20:35:30', '2021-06-16 20:35:30'),
	(74, 'plugins::navigation.read', NULL, '{}', '[]', 1, '2021-06-16 20:35:30', '2021-06-16 20:35:30'),
	(75, 'plugins::navigation.update', NULL, '{}', '[]', 1, '2021-06-16 20:35:30', '2021-06-16 20:35:30'),
	(111, 'plugins::content-manager.explorer.create', 'application::access.access', '{"fields":["icon","navigation"]}', '[]', 1, '2021-06-16 22:06:33', '2021-06-16 22:06:33'),
	(112, 'plugins::content-manager.explorer.read', 'application::access.access', '{"fields":["icon","navigation"]}', '[]', 1, '2021-06-16 22:06:33', '2021-06-16 22:06:33'),
	(113, 'plugins::content-manager.explorer.update', 'application::access.access', '{"fields":["icon","navigation"]}', '[]', 1, '2021-06-16 22:06:33', '2021-06-16 22:06:33'),
	(186, 'plugins::content-manager.explorer.create', 'application::features.features', '{"fields":["title"],"locales":["en","es-ES"]}', '[]', 1, '2021-06-16 23:24:23', '2021-06-16 23:24:23'),
	(187, 'plugins::content-manager.explorer.read', 'application::features.features', '{"fields":["title"],"locales":["en","es-ES"]}', '[]', 1, '2021-06-16 23:24:23', '2021-06-16 23:24:23'),
	(188, 'plugins::content-manager.explorer.update', 'application::features.features', '{"fields":["title"],"locales":["en","es-ES"]}', '[]', 1, '2021-06-16 23:24:23', '2021-06-16 23:24:23'),
	(200, 'plugins::documentation.read', NULL, '{}', '[]', 1, '2021-06-16 23:28:15', '2021-06-16 23:28:15'),
	(201, 'plugins::documentation.settings.update', NULL, '{}', '[]', 1, '2021-06-16 23:28:15', '2021-06-16 23:28:15'),
	(202, 'plugins::documentation.settings.regenerate', NULL, '{}', '[]', 1, '2021-06-16 23:28:15', '2021-06-16 23:28:15'),
	(284, 'plugins::content-manager.explorer.create', 'plugins::users-permissions.user', '{"fields":["username","email","provider","password","resetPasswordToken","confirmationToken","confirmed","blocked","role","darkModeEnabled","userAvatar"]}', '[]', 1, '2021-06-21 00:19:08', '2021-06-21 00:19:08'),
	(285, 'plugins::content-manager.explorer.read', 'plugins::users-permissions.user', '{"fields":["username","email","provider","password","resetPasswordToken","confirmationToken","confirmed","blocked","role","darkModeEnabled","userAvatar"]}', '[]', 1, '2021-06-21 00:19:08', '2021-06-21 00:19:08'),
	(286, 'plugins::content-manager.explorer.update', 'plugins::users-permissions.user', '{"fields":["username","email","provider","password","resetPasswordToken","confirmationToken","confirmed","blocked","role","darkModeEnabled","userAvatar"]}', '[]', 1, '2021-06-21 00:19:08', '2021-06-21 00:19:08'),
	(297, 'plugins::content-manager.explorer.create', 'application::settings.settings', '{"fields":["setting.key","setting.value","status.key","status.value","status.enabled","app_images.name","app_images.image"]}', '[]', 1, '2021-06-21 00:47:51', '2021-06-21 00:47:51'),
	(298, 'plugins::content-manager.explorer.read', 'application::settings.settings', '{"fields":["setting.key","setting.value","status.key","status.value","status.enabled","app_images.name","app_images.image"]}', '[]', 1, '2021-06-21 00:47:51', '2021-06-21 00:47:51'),
	(299, 'plugins::content-manager.explorer.update', 'application::settings.settings', '{"fields":["setting.key","setting.value","status.key","status.value","status.enabled","app_images.name","app_images.image"]}', '[]', 1, '2021-06-21 00:47:51', '2021-06-21 00:47:51'),
	(350, 'plugins::content-manager.explorer.create', 'application::connections.connections', '{"fields":["users_permissions_user","origin"]}', '[]', 1, '2021-06-30 00:14:05', '2021-06-30 00:14:05'),
	(351, 'plugins::content-manager.explorer.read', 'application::connections.connections', '{"fields":["users_permissions_user","origin"]}', '[]', 1, '2021-06-30 00:14:05', '2021-06-30 00:14:05'),
	(352, 'plugins::content-manager.explorer.update', 'application::connections.connections', '{"fields":["users_permissions_user","origin"]}', '[]', 1, '2021-06-30 00:14:05', '2021-06-30 00:14:05'),
	(364, 'plugins::content-manager.explorer.create', 'application::translations.translations', '{"fields":["text","key"],"locales":["en","es-ES"]}', '[]', 1, '2021-06-30 00:15:32', '2021-06-30 00:15:32'),
	(365, 'plugins::content-manager.explorer.read', 'application::translations.translations', '{"fields":["text","key"],"locales":["en","es-ES"]}', '[]', 1, '2021-06-30 00:15:32', '2021-06-30 00:15:32'),
	(366, 'plugins::content-manager.explorer.update', 'application::translations.translations', '{"fields":["text","key"],"locales":["en","es-ES"]}', '[]', 1, '2021-06-30 00:15:32', '2021-06-30 00:15:32'),
	(367, 'plugins::content-manager.explorer.delete', 'application::access.access', '{}', '[]', 1, '2021-06-30 00:15:32', '2021-06-30 00:15:32'),
	(368, 'plugins::content-manager.explorer.delete', 'application::connections.connections', '{}', '[]', 1, '2021-06-30 00:15:32', '2021-06-30 00:15:32'),
	(369, 'plugins::content-manager.explorer.delete', 'application::features.features', '{"locales":["en","es-ES"]}', '[]', 1, '2021-06-30 00:15:32', '2021-06-30 00:15:32'),
	(370, 'plugins::content-manager.explorer.delete', 'application::settings.settings', '{}', '[]', 1, '2021-06-30 00:15:32', '2021-06-30 00:15:32'),
	(371, 'plugins::content-manager.explorer.delete', 'application::translations.translations', '{"locales":["en","es-ES"]}', '[]', 1, '2021-06-30 00:15:32', '2021-06-30 00:15:32'),
	(372, 'plugins::content-manager.explorer.delete', 'plugins::comments.comment', '{}', '[]', 1, '2021-06-30 00:15:32', '2021-06-30 00:15:32'),
	(373, 'plugins::content-manager.explorer.delete', 'plugins::comments.report', '{}', '[]', 1, '2021-06-30 00:15:32', '2021-06-30 00:15:32'),
	(374, 'plugins::content-manager.explorer.delete', 'plugins::navigation.audience', '{}', '[]', 1, '2021-06-30 00:15:32', '2021-06-30 00:15:32'),
	(375, 'plugins::content-manager.explorer.delete', 'plugins::users-permissions.user', '{}', '[]', 1, '2021-06-30 00:15:32', '2021-06-30 00:15:32'),
	(376, 'plugins::content-manager.explorer.publish', 'application::access.access', '{}', '[]', 1, '2021-06-30 00:15:32', '2021-06-30 00:15:32'),
	(377, 'plugins::content-manager.explorer.publish', 'application::features.features', '{"locales":["en","es-ES"]}', '[]', 1, '2021-06-30 00:15:32', '2021-06-30 00:15:32');
/*!40000 ALTER TABLE `strapi_permission` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.strapi_role
DROP TABLE IF EXISTS `strapi_role`;
CREATE TABLE IF NOT EXISTS `strapi_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `strapi_role_name_unique` (`name`),
  UNIQUE KEY `strapi_role_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.strapi_role: ~3 rows (aproximadamente)
DELETE FROM `strapi_role`;
/*!40000 ALTER TABLE `strapi_role` DISABLE KEYS */;
INSERT INTO `strapi_role` (`id`, `name`, `code`, `description`, `created_at`, `updated_at`) VALUES
	(1, 'Super Admin', 'strapi-super-admin', 'Super Admins can access and manage all features and settings.', '2021-06-16 20:12:19', '2021-06-16 20:12:19'),
	(2, 'Editor', 'strapi-editor', 'Editors can manage and publish contents including those of other users.', '2021-06-16 20:12:19', '2021-06-16 20:12:19'),
	(3, 'Author', 'strapi-author', 'Authors can manage the content they have created.', '2021-06-16 20:12:19', '2021-06-16 20:12:19');
/*!40000 ALTER TABLE `strapi_role` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.strapi_users_roles
DROP TABLE IF EXISTS `strapi_users_roles`;
CREATE TABLE IF NOT EXISTS `strapi_users_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.strapi_users_roles: ~2 rows (aproximadamente)
DELETE FROM `strapi_users_roles`;
/*!40000 ALTER TABLE `strapi_users_roles` DISABLE KEYS */;
INSERT INTO `strapi_users_roles` (`id`, `user_id`, `role_id`) VALUES
	(1, 1, 1),
	(2, 2, 3);
/*!40000 ALTER TABLE `strapi_users_roles` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.strapi_webhooks
DROP TABLE IF EXISTS `strapi_webhooks`;
CREATE TABLE IF NOT EXISTS `strapi_webhooks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `url` longtext,
  `headers` longtext,
  `events` longtext,
  `enabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.strapi_webhooks: ~0 rows (aproximadamente)
DELETE FROM `strapi_webhooks`;
/*!40000 ALTER TABLE `strapi_webhooks` DISABLE KEYS */;
/*!40000 ALTER TABLE `strapi_webhooks` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.translations
DROP TABLE IF EXISTS `translations`;
CREATE TABLE IF NOT EXISTS `translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(255) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `key` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.translations: ~2 rows (aproximadamente)
DELETE FROM `translations`;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
INSERT INTO `translations` (`id`, `text`, `locale`, `created_by`, `updated_by`, `created_at`, `updated_at`, `key`) VALUES
	(1, 'Hello world!', 'en', 1, 1, '2021-06-20 00:38:40', '2021-06-30 00:43:59', 'Hello world'),
	(2, 'Hola mundo!', 'es-ES', 1, 1, '2021-06-20 00:38:45', '2021-06-30 00:43:59', 'Hello world');
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.translations__localizations
DROP TABLE IF EXISTS `translations__localizations`;
CREATE TABLE IF NOT EXISTS `translations__localizations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `translation_id` int(11) DEFAULT NULL,
  `related_translation_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.translations__localizations: ~2 rows (aproximadamente)
DELETE FROM `translations__localizations`;
/*!40000 ALTER TABLE `translations__localizations` DISABLE KEYS */;
INSERT INTO `translations__localizations` (`id`, `translation_id`, `related_translation_id`) VALUES
	(1, 2, 1),
	(2, 1, 2);
/*!40000 ALTER TABLE `translations__localizations` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.upload_file
DROP TABLE IF EXISTS `upload_file`;
CREATE TABLE IF NOT EXISTS `upload_file` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `alternativeText` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `formats` longtext,
  `hash` varchar(255) NOT NULL,
  `ext` varchar(255) DEFAULT NULL,
  `mime` varchar(255) NOT NULL,
  `size` decimal(10,2) NOT NULL,
  `url` varchar(255) NOT NULL,
  `previewUrl` varchar(255) DEFAULT NULL,
  `provider` varchar(255) NOT NULL,
  `provider_metadata` longtext,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.upload_file: ~3 rows (aproximadamente)
DELETE FROM `upload_file`;
/*!40000 ALTER TABLE `upload_file` DISABLE KEYS */;
INSERT INTO `upload_file` (`id`, `name`, `alternativeText`, `caption`, `width`, `height`, `formats`, `hash`, `ext`, `mime`, `size`, `url`, `previewUrl`, `provider`, `provider_metadata`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
	(1, '201758058_10225435340859988_565417358652051190_n.png', '', '', 720, 710, '{"thumbnail":{"name":"thumbnail_201758058_10225435340859988_565417358652051190_n.png","hash":"thumbnail_201758058_10225435340859988_565417358652051190_n_85916fbaf7","ext":".png","mime":"image/png","width":158,"height":156,"size":83.56,"path":null,"url":"/uploads/thumbnail_201758058_10225435340859988_565417358652051190_n_85916fbaf7.png"},"small":{"name":"small_201758058_10225435340859988_565417358652051190_n.png","hash":"small_201758058_10225435340859988_565417358652051190_n_85916fbaf7","ext":".png","mime":"image/png","width":500,"height":493,"size":506.1,"path":null,"url":"/uploads/small_201758058_10225435340859988_565417358652051190_n_85916fbaf7.png"}}', '201758058_10225435340859988_565417358652051190_n_85916fbaf7', '.png', 'image/png', 478.84, '/uploads/201758058_10225435340859988_565417358652051190_n_85916fbaf7.png', NULL, 'local', NULL, 1, 1, '2021-06-23 02:39:57', '2021-06-23 02:39:57'),
	(2, 'fantastic-galaxy-background-1.jpg', '', '', 2560, 1600, '{"thumbnail":{"name":"thumbnail_fantastic-galaxy-background-1.jpg","hash":"thumbnail_fantastic_galaxy_background_1_40a8a34151","ext":".jpg","mime":"image/jpeg","width":245,"height":153,"size":7.66,"path":null,"url":"/uploads/thumbnail_fantastic_galaxy_background_1_40a8a34151.jpg"},"large":{"name":"large_fantastic-galaxy-background-1.jpg","hash":"large_fantastic_galaxy_background_1_40a8a34151","ext":".jpg","mime":"image/jpeg","width":1000,"height":625,"size":159.15,"path":null,"url":"/uploads/large_fantastic_galaxy_background_1_40a8a34151.jpg"},"medium":{"name":"medium_fantastic-galaxy-background-1.jpg","hash":"medium_fantastic_galaxy_background_1_40a8a34151","ext":".jpg","mime":"image/jpeg","width":750,"height":469,"size":87.81,"path":null,"url":"/uploads/medium_fantastic_galaxy_background_1_40a8a34151.jpg"},"small":{"name":"small_fantastic-galaxy-background-1.jpg","hash":"small_fantastic_galaxy_background_1_40a8a34151","ext":".jpg","mime":"image/jpeg","width":500,"height":313,"size":35.62,"path":null,"url":"/uploads/small_fantastic_galaxy_background_1_40a8a34151.jpg"}}', 'fantastic_galaxy_background_1_40a8a34151', '.jpg', 'image/jpeg', 2864.27, '/uploads/fantastic_galaxy_background_1_40a8a34151.jpg', NULL, 'local', NULL, 1, 1, '2021-06-24 22:56:32', '2021-06-24 22:56:32'),
	(3, 'índice.png', '', '', 192, 192, '{"thumbnail":{"name":"thumbnail_índice.png","hash":"thumbnail_indice_27d171c638","ext":".png","mime":"image/png","width":156,"height":156,"size":21.09,"path":null,"url":"/uploads/thumbnail_indice_27d171c638.png"}}', 'indice_27d171c638', '.png', 'image/png', 17.26, '/uploads/indice_27d171c638.png', NULL, 'local', NULL, 1, 1, '2021-06-28 22:47:31', '2021-06-28 22:47:31');
/*!40000 ALTER TABLE `upload_file` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.upload_file_morph
DROP TABLE IF EXISTS `upload_file_morph`;
CREATE TABLE IF NOT EXISTS `upload_file_morph` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `upload_file_id` int(11) DEFAULT NULL,
  `related_id` int(11) DEFAULT NULL,
  `related_type` longtext,
  `field` longtext,
  `order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.upload_file_morph: ~2 rows (aproximadamente)
DELETE FROM `upload_file_morph`;
/*!40000 ALTER TABLE `upload_file_morph` DISABLE KEYS */;
INSERT INTO `upload_file_morph` (`id`, `upload_file_id`, `related_id`, `related_type`, `field`, `order`) VALUES
	(1, 1, 1, 'components_row_types_app_images', 'image', 1),
	(2, 3, 1, 'users-permissions_user', 'userAvatar', 1);
/*!40000 ALTER TABLE `upload_file_morph` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.users-permissions_permission
DROP TABLE IF EXISTS `users-permissions_permission`;
CREATE TABLE IF NOT EXISTS `users-permissions_permission` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `controller` varchar(255) NOT NULL,
  `action` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `policy` varchar(255) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=293 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.users-permissions_permission: ~292 rows (aproximadamente)
DELETE FROM `users-permissions_permission`;
/*!40000 ALTER TABLE `users-permissions_permission` DISABLE KEYS */;
INSERT INTO `users-permissions_permission` (`id`, `type`, `controller`, `action`, `enabled`, `policy`, `role`, `created_by`, `updated_by`) VALUES
	(1, 'content-manager', 'collection-types', 'bulkdelete', 0, '', 1, NULL, NULL),
	(2, 'content-manager', 'collection-types', 'bulkdelete', 0, '', 2, NULL, NULL),
	(3, 'content-manager', 'collection-types', 'create', 0, '', 1, NULL, NULL),
	(4, 'content-manager', 'collection-types', 'delete', 0, '', 1, NULL, NULL),
	(5, 'content-manager', 'collection-types', 'create', 0, '', 2, NULL, NULL),
	(6, 'content-manager', 'collection-types', 'delete', 0, '', 2, NULL, NULL),
	(7, 'content-manager', 'collection-types', 'findone', 0, '', 1, NULL, NULL),
	(8, 'content-manager', 'collection-types', 'find', 0, '', 2, NULL, NULL),
	(9, 'content-manager', 'collection-types', 'find', 0, '', 1, NULL, NULL),
	(10, 'content-manager', 'collection-types', 'findone', 0, '', 2, NULL, NULL),
	(11, 'content-manager', 'collection-types', 'previewmanyrelations', 0, '', 2, NULL, NULL),
	(12, 'content-manager', 'collection-types', 'previewmanyrelations', 0, '', 1, NULL, NULL),
	(13, 'content-manager', 'collection-types', 'publish', 0, '', 1, NULL, NULL),
	(14, 'content-manager', 'collection-types', 'publish', 0, '', 2, NULL, NULL),
	(15, 'content-manager', 'collection-types', 'unpublish', 0, '', 1, NULL, NULL),
	(16, 'content-manager', 'collection-types', 'unpublish', 0, '', 2, NULL, NULL),
	(17, 'content-manager', 'collection-types', 'update', 0, '', 1, NULL, NULL),
	(18, 'content-manager', 'collection-types', 'update', 0, '', 2, NULL, NULL),
	(19, 'content-manager', 'components', 'findcomponentconfiguration', 0, '', 1, NULL, NULL),
	(20, 'content-manager', 'components', 'findcomponentconfiguration', 0, '', 2, NULL, NULL),
	(21, 'content-manager', 'components', 'findcomponents', 0, '', 1, NULL, NULL),
	(22, 'content-manager', 'components', 'findcomponents', 0, '', 2, NULL, NULL),
	(23, 'content-manager', 'components', 'updatecomponentconfiguration', 0, '', 2, NULL, NULL),
	(24, 'content-manager', 'components', 'updatecomponentconfiguration', 0, '', 1, NULL, NULL),
	(25, 'content-manager', 'content-types', 'findcontenttypeconfiguration', 0, '', 1, NULL, NULL),
	(26, 'content-manager', 'content-types', 'findcontenttypeconfiguration', 0, '', 2, NULL, NULL),
	(27, 'content-manager', 'content-types', 'findcontenttypes', 0, '', 1, NULL, NULL),
	(28, 'content-manager', 'content-types', 'findcontenttypes', 0, '', 2, NULL, NULL),
	(29, 'content-manager', 'content-types', 'findcontenttypessettings', 0, '', 1, NULL, NULL),
	(30, 'content-manager', 'content-types', 'findcontenttypessettings', 0, '', 2, NULL, NULL),
	(31, 'content-manager', 'relations', 'find', 0, '', 1, NULL, NULL),
	(32, 'content-manager', 'content-types', 'updatecontenttypeconfiguration', 0, '', 1, NULL, NULL),
	(33, 'content-manager', 'content-types', 'updatecontenttypeconfiguration', 0, '', 2, NULL, NULL),
	(34, 'content-manager', 'single-types', 'createorupdate', 0, '', 2, NULL, NULL),
	(35, 'content-manager', 'single-types', 'find', 0, '', 1, NULL, NULL),
	(36, 'content-manager', 'single-types', 'find', 0, '', 2, NULL, NULL),
	(37, 'content-manager', 'relations', 'find', 0, '', 2, NULL, NULL),
	(38, 'content-manager', 'single-types', 'createorupdate', 0, '', 1, NULL, NULL),
	(39, 'content-manager', 'single-types', 'delete', 0, '', 1, NULL, NULL),
	(40, 'content-manager', 'single-types', 'delete', 0, '', 2, NULL, NULL),
	(41, 'content-manager', 'single-types', 'publish', 0, '', 1, NULL, NULL),
	(42, 'content-manager', 'single-types', 'publish', 0, '', 2, NULL, NULL),
	(43, 'content-manager', 'single-types', 'unpublish', 0, '', 2, NULL, NULL),
	(44, 'content-manager', 'uid', 'checkuidavailability', 0, '', 1, NULL, NULL),
	(45, 'content-type-builder', 'builder', 'getreservednames', 0, '', 2, NULL, NULL),
	(46, 'content-manager', 'single-types', 'unpublish', 0, '', 1, NULL, NULL),
	(47, 'content-manager', 'uid', 'checkuidavailability', 0, '', 2, NULL, NULL),
	(48, 'content-manager', 'uid', 'generateuid', 0, '', 1, NULL, NULL),
	(49, 'content-manager', 'uid', 'generateuid', 0, '', 2, NULL, NULL),
	(50, 'content-type-builder', 'builder', 'getreservednames', 0, '', 1, NULL, NULL),
	(51, 'content-type-builder', 'componentcategories', 'deletecategory', 0, '', 1, NULL, NULL),
	(52, 'content-type-builder', 'componentcategories', 'deletecategory', 0, '', 2, NULL, NULL),
	(53, 'content-type-builder', 'components', 'createcomponent', 0, '', 1, NULL, NULL),
	(54, 'content-type-builder', 'components', 'getcomponent', 0, '', 1, NULL, NULL),
	(55, 'content-type-builder', 'componentcategories', 'editcategory', 0, '', 1, NULL, NULL),
	(56, 'content-type-builder', 'componentcategories', 'editcategory', 0, '', 2, NULL, NULL),
	(57, 'content-type-builder', 'components', 'createcomponent', 0, '', 2, NULL, NULL),
	(58, 'content-type-builder', 'components', 'deletecomponent', 0, '', 1, NULL, NULL),
	(59, 'content-type-builder', 'components', 'deletecomponent', 0, '', 2, NULL, NULL),
	(60, 'content-type-builder', 'components', 'getcomponent', 0, '', 2, NULL, NULL),
	(61, 'content-type-builder', 'components', 'getcomponents', 0, '', 1, NULL, NULL),
	(62, 'content-type-builder', 'components', 'updatecomponent', 0, '', 1, NULL, NULL),
	(63, 'content-type-builder', 'components', 'getcomponents', 0, '', 2, NULL, NULL),
	(64, 'content-type-builder', 'contenttypes', 'deletecontenttype', 0, '', 1, NULL, NULL),
	(65, 'content-type-builder', 'components', 'updatecomponent', 0, '', 2, NULL, NULL),
	(66, 'content-type-builder', 'connections', 'getconnections', 0, '', 1, NULL, NULL),
	(67, 'content-type-builder', 'connections', 'getconnections', 0, '', 2, NULL, NULL),
	(68, 'content-type-builder', 'contenttypes', 'createcontenttype', 0, '', 1, NULL, NULL),
	(69, 'content-type-builder', 'contenttypes', 'createcontenttype', 0, '', 2, NULL, NULL),
	(70, 'content-type-builder', 'contenttypes', 'deletecontenttype', 0, '', 2, NULL, NULL),
	(71, 'content-type-builder', 'contenttypes', 'getcontenttype', 0, '', 1, NULL, NULL),
	(72, 'content-type-builder', 'contenttypes', 'getcontenttypes', 0, '', 2, NULL, NULL),
	(73, 'content-type-builder', 'contenttypes', 'getcontenttype', 0, '', 2, NULL, NULL),
	(74, 'content-type-builder', 'contenttypes', 'getcontenttypes', 0, '', 1, NULL, NULL),
	(75, 'email', 'email', 'getsettings', 0, '', 2, NULL, NULL),
	(76, 'email', 'email', 'send', 0, '', 1, NULL, NULL),
	(77, 'email', 'email', 'send', 0, '', 2, NULL, NULL),
	(78, 'content-type-builder', 'contenttypes', 'updatecontenttype', 0, '', 1, NULL, NULL),
	(79, 'content-type-builder', 'contenttypes', 'updatecontenttype', 0, '', 2, NULL, NULL),
	(80, 'email', 'email', 'getsettings', 0, '', 1, NULL, NULL),
	(81, 'email', 'email', 'test', 0, '', 1, NULL, NULL),
	(82, 'email', 'email', 'test', 0, '', 2, NULL, NULL),
	(83, 'i18n', 'content-types', 'getnonlocalizedattributes', 0, '', 1, NULL, NULL),
	(84, 'i18n', 'iso-locales', 'listisolocales', 0, '', 2, NULL, NULL),
	(85, 'i18n', 'content-types', 'getnonlocalizedattributes', 0, '', 2, NULL, NULL),
	(86, 'i18n', 'iso-locales', 'listisolocales', 0, '', 1, NULL, NULL),
	(87, 'i18n', 'locales', 'createlocale', 0, '', 1, NULL, NULL),
	(88, 'i18n', 'locales', 'createlocale', 0, '', 2, NULL, NULL),
	(89, 'i18n', 'locales', 'deletelocale', 0, '', 1, NULL, NULL),
	(90, 'i18n', 'locales', 'deletelocale', 0, '', 2, NULL, NULL),
	(91, 'i18n', 'locales', 'listlocales', 0, '', 1, NULL, NULL),
	(92, 'i18n', 'locales', 'listlocales', 0, '', 2, NULL, NULL),
	(93, 'i18n', 'locales', 'updatelocale', 0, '', 2, NULL, NULL),
	(94, 'i18n', 'locales', 'updatelocale', 0, '', 1, NULL, NULL),
	(95, 'upload', 'upload', 'count', 0, '', 1, NULL, NULL),
	(96, 'upload', 'upload', 'count', 0, '', 2, NULL, NULL),
	(97, 'upload', 'upload', 'destroy', 0, '', 1, NULL, NULL),
	(98, 'upload', 'upload', 'destroy', 0, '', 2, NULL, NULL),
	(99, 'upload', 'upload', 'find', 0, '', 1, NULL, NULL),
	(100, 'upload', 'upload', 'find', 0, '', 2, NULL, NULL),
	(101, 'upload', 'upload', 'findone', 0, '', 1, NULL, NULL),
	(102, 'upload', 'upload', 'findone', 0, '', 2, NULL, NULL),
	(103, 'upload', 'upload', 'getsettings', 0, '', 2, NULL, NULL),
	(104, 'upload', 'upload', 'getsettings', 0, '', 1, NULL, NULL),
	(105, 'upload', 'upload', 'search', 0, '', 1, NULL, NULL),
	(106, 'upload', 'upload', 'search', 0, '', 2, NULL, NULL),
	(107, 'upload', 'upload', 'updatesettings', 0, '', 1, NULL, NULL),
	(108, 'upload', 'upload', 'updatesettings', 0, '', 2, NULL, NULL),
	(109, 'upload', 'upload', 'upload', 0, '', 1, NULL, NULL),
	(110, 'upload', 'upload', 'upload', 0, '', 2, NULL, NULL),
	(111, 'users-permissions', 'auth', 'callback', 0, '', 1, NULL, NULL),
	(112, 'users-permissions', 'auth', 'callback', 1, '', 2, NULL, NULL),
	(113, 'users-permissions', 'auth', 'connect', 1, '', 1, NULL, NULL),
	(114, 'users-permissions', 'auth', 'connect', 1, '', 2, NULL, NULL),
	(115, 'users-permissions', 'auth', 'emailconfirmation', 0, '', 1, NULL, NULL),
	(116, 'users-permissions', 'auth', 'emailconfirmation', 1, '', 2, NULL, NULL),
	(117, 'users-permissions', 'auth', 'forgotpassword', 0, '', 1, NULL, NULL),
	(118, 'users-permissions', 'auth', 'forgotpassword', 1, '', 2, NULL, NULL),
	(119, 'users-permissions', 'auth', 'register', 0, '', 1, NULL, NULL),
	(120, 'users-permissions', 'auth', 'register', 1, '', 2, NULL, NULL),
	(121, 'users-permissions', 'auth', 'resetpassword', 0, '', 1, NULL, NULL),
	(122, 'users-permissions', 'auth', 'resetpassword', 1, '', 2, NULL, NULL),
	(123, 'users-permissions', 'auth', 'sendemailconfirmation', 0, '', 1, NULL, NULL),
	(124, 'users-permissions', 'auth', 'sendemailconfirmation', 0, '', 2, NULL, NULL),
	(125, 'users-permissions', 'user', 'count', 0, '', 1, NULL, NULL),
	(126, 'users-permissions', 'user', 'count', 0, '', 2, NULL, NULL),
	(127, 'users-permissions', 'user', 'create', 0, '', 1, NULL, NULL),
	(128, 'users-permissions', 'user', 'create', 0, '', 2, NULL, NULL),
	(129, 'users-permissions', 'user', 'destroy', 0, '', 1, NULL, NULL),
	(130, 'users-permissions', 'user', 'destroy', 0, '', 2, NULL, NULL),
	(131, 'users-permissions', 'user', 'destroyall', 0, '', 1, NULL, NULL),
	(132, 'users-permissions', 'user', 'destroyall', 0, '', 2, NULL, NULL),
	(133, 'users-permissions', 'user', 'find', 0, '', 1, NULL, NULL),
	(134, 'users-permissions', 'user', 'find', 0, '', 2, NULL, NULL),
	(135, 'users-permissions', 'user', 'findone', 0, '', 1, NULL, NULL),
	(136, 'users-permissions', 'user', 'me', 1, '', 2, NULL, NULL),
	(137, 'users-permissions', 'user', 'update', 0, '', 1, NULL, NULL),
	(138, 'users-permissions', 'user', 'findone', 0, '', 2, NULL, NULL),
	(139, 'users-permissions', 'user', 'me', 1, '', 1, NULL, NULL),
	(140, 'users-permissions', 'user', 'update', 0, '', 2, NULL, NULL),
	(141, 'users-permissions', 'userspermissions', 'createrole', 0, '', 1, NULL, NULL),
	(142, 'users-permissions', 'userspermissions', 'createrole', 0, '', 2, NULL, NULL),
	(143, 'users-permissions', 'userspermissions', 'deleterole', 0, '', 1, NULL, NULL),
	(144, 'users-permissions', 'userspermissions', 'deleterole', 0, '', 2, NULL, NULL),
	(145, 'users-permissions', 'userspermissions', 'getadvancedsettings', 0, '', 1, NULL, NULL),
	(146, 'users-permissions', 'userspermissions', 'getemailtemplate', 0, '', 1, NULL, NULL),
	(147, 'users-permissions', 'userspermissions', 'getadvancedsettings', 0, '', 2, NULL, NULL),
	(148, 'users-permissions', 'userspermissions', 'getemailtemplate', 0, '', 2, NULL, NULL),
	(149, 'users-permissions', 'userspermissions', 'getpermissions', 0, '', 1, NULL, NULL),
	(150, 'users-permissions', 'userspermissions', 'getpermissions', 0, '', 2, NULL, NULL),
	(151, 'users-permissions', 'userspermissions', 'getproviders', 0, '', 1, NULL, NULL),
	(152, 'users-permissions', 'userspermissions', 'getpolicies', 0, '', 1, NULL, NULL),
	(153, 'users-permissions', 'userspermissions', 'getpolicies', 0, '', 2, NULL, NULL),
	(154, 'users-permissions', 'userspermissions', 'getrole', 0, '', 2, NULL, NULL),
	(155, 'users-permissions', 'userspermissions', 'getroles', 0, '', 1, NULL, NULL),
	(156, 'users-permissions', 'userspermissions', 'getproviders', 0, '', 2, NULL, NULL),
	(157, 'users-permissions', 'userspermissions', 'getrole', 0, '', 1, NULL, NULL),
	(158, 'users-permissions', 'userspermissions', 'getroles', 0, '', 2, NULL, NULL),
	(159, 'users-permissions', 'userspermissions', 'getroutes', 0, '', 1, NULL, NULL),
	(160, 'users-permissions', 'userspermissions', 'getroutes', 0, '', 2, NULL, NULL),
	(161, 'users-permissions', 'userspermissions', 'index', 0, '', 1, NULL, NULL),
	(162, 'users-permissions', 'userspermissions', 'index', 0, '', 2, NULL, NULL),
	(163, 'users-permissions', 'userspermissions', 'searchusers', 0, '', 1, NULL, NULL),
	(164, 'users-permissions', 'userspermissions', 'updateemailtemplate', 0, '', 1, NULL, NULL),
	(165, 'users-permissions', 'userspermissions', 'updateproviders', 0, '', 2, NULL, NULL),
	(166, 'users-permissions', 'userspermissions', 'searchusers', 0, '', 2, NULL, NULL),
	(167, 'users-permissions', 'userspermissions', 'updateadvancedsettings', 0, '', 1, NULL, NULL),
	(168, 'users-permissions', 'userspermissions', 'updateadvancedsettings', 0, '', 2, NULL, NULL),
	(169, 'users-permissions', 'userspermissions', 'updateemailtemplate', 0, '', 2, NULL, NULL),
	(170, 'users-permissions', 'userspermissions', 'updateproviders', 0, '', 1, NULL, NULL),
	(171, 'users-permissions', 'userspermissions', 'updaterole', 0, '', 1, NULL, NULL),
	(172, 'users-permissions', 'userspermissions', 'updaterole', 0, '', 2, NULL, NULL),
	(173, 'comments', 'comments', 'blockcomment', 0, '', 1, NULL, NULL),
	(174, 'comments', 'comments', 'blockcomment', 0, '', 2, NULL, NULL),
	(175, 'comments', 'comments', 'blockcommentthread', 0, '', 1, NULL, NULL),
	(176, 'comments', 'comments', 'blockcommentthread', 0, '', 2, NULL, NULL),
	(177, 'comments', 'comments', 'config', 0, '', 1, NULL, NULL),
	(178, 'comments', 'comments', 'config', 0, '', 2, NULL, NULL),
	(179, 'comments', 'comments', 'findall', 0, '', 2, NULL, NULL),
	(180, 'comments', 'comments', 'contenttypename', 0, '', 1, NULL, NULL),
	(181, 'comments', 'comments', 'contenttypename', 0, '', 2, NULL, NULL),
	(182, 'comments', 'comments', 'findall', 0, '', 1, NULL, NULL),
	(183, 'comments', 'comments', 'findallinhierarchy', 0, '', 1, NULL, NULL),
	(184, 'comments', 'comments', 'findallflat', 0, '', 1, NULL, NULL),
	(185, 'comments', 'comments', 'findallflat', 0, '', 2, NULL, NULL),
	(186, 'comments', 'comments', 'findallinhierarchy', 0, '', 2, NULL, NULL),
	(187, 'comments', 'comments', 'findone', 0, '', 2, NULL, NULL),
	(188, 'comments', 'comments', 'getcontentstypes', 0, '', 1, NULL, NULL),
	(189, 'comments', 'comments', 'getcontentstypes', 0, '', 2, NULL, NULL),
	(190, 'comments', 'comments', 'getservice', 0, '', 1, NULL, NULL),
	(191, 'comments', 'comments', 'getservice', 0, '', 2, NULL, NULL),
	(192, 'comments', 'comments', 'findone', 0, '', 1, NULL, NULL),
	(193, 'comments', 'comments', 'pointsup', 0, '', 1, NULL, NULL),
	(194, 'comments', 'comments', 'pointsup', 0, '', 2, NULL, NULL),
	(195, 'comments', 'comments', 'post', 0, '', 1, NULL, NULL),
	(196, 'comments', 'comments', 'removecomment', 0, '', 1, NULL, NULL),
	(197, 'comments', 'comments', 'removecomment', 0, '', 2, NULL, NULL),
	(198, 'comments', 'comments', 'reportabuse', 0, '', 2, NULL, NULL),
	(199, 'comments', 'comments', 'post', 0, '', 2, NULL, NULL),
	(200, 'comments', 'comments', 'put', 0, '', 1, NULL, NULL),
	(201, 'comments', 'comments', 'put', 0, '', 2, NULL, NULL),
	(202, 'comments', 'comments', 'reportabuse', 0, '', 1, NULL, NULL),
	(203, 'comments', 'comments', 'resolveabusereport', 0, '', 1, NULL, NULL),
	(204, 'comments', 'comments', 'resolveabusereport', 0, '', 2, NULL, NULL),
	(205, 'navigation', 'navigation', 'config', 0, '', 1, NULL, NULL),
	(206, 'navigation', 'navigation', 'config', 0, '', 2, NULL, NULL),
	(207, 'navigation', 'navigation', 'get', 0, '', 1, NULL, NULL),
	(208, 'navigation', 'navigation', 'getbyid', 0, '', 1, NULL, NULL),
	(209, 'navigation', 'navigation', 'getbyid', 0, '', 2, NULL, NULL),
	(210, 'navigation', 'navigation', 'getservice', 0, '', 1, NULL, NULL),
	(211, 'navigation', 'navigation', 'get', 0, '', 2, NULL, NULL),
	(212, 'navigation', 'navigation', 'getservice', 0, '', 2, NULL, NULL),
	(213, 'navigation', 'navigation', 'post', 0, '', 2, NULL, NULL),
	(214, 'navigation', 'navigation', 'post', 0, '', 1, NULL, NULL),
	(215, 'navigation', 'navigation', 'put', 0, '', 1, NULL, NULL),
	(216, 'navigation', 'navigation', 'put', 0, '', 2, NULL, NULL),
	(217, 'navigation', 'navigation', 'render', 0, '', 2, NULL, NULL),
	(218, 'navigation', 'navigation', 'render', 0, '', 1, NULL, NULL),
	(219, 'application', 'features', 'count', 0, '', 1, NULL, NULL),
	(220, 'application', 'features', 'create', 0, '', 1, NULL, NULL),
	(221, 'application', 'features', 'create', 0, '', 2, NULL, NULL),
	(222, 'application', 'features', 'createlocalization', 0, '', 1, NULL, NULL),
	(223, 'application', 'features', 'createlocalization', 0, '', 2, NULL, NULL),
	(224, 'application', 'features', 'count', 0, '', 2, NULL, NULL),
	(225, 'application', 'features', 'delete', 0, '', 1, NULL, NULL),
	(226, 'application', 'features', 'delete', 0, '', 2, NULL, NULL),
	(227, 'application', 'features', 'find', 0, '', 1, NULL, NULL),
	(228, 'application', 'features', 'find', 0, '', 2, NULL, NULL),
	(229, 'application', 'features', 'findone', 0, '', 1, NULL, NULL),
	(230, 'application', 'features', 'findone', 0, '', 2, NULL, NULL),
	(231, 'application', 'features', 'update', 0, '', 1, NULL, NULL),
	(232, 'application', 'features', 'update', 0, '', 2, NULL, NULL),
	(233, 'application', 'access', 'count', 0, '', 1, NULL, NULL),
	(234, 'application', 'access', 'create', 0, '', 1, NULL, NULL),
	(235, 'application', 'access', 'create', 0, '', 2, NULL, NULL),
	(236, 'application', 'access', 'delete', 0, '', 1, NULL, NULL),
	(237, 'application', 'access', 'delete', 0, '', 2, NULL, NULL),
	(238, 'application', 'access', 'count', 0, '', 2, NULL, NULL),
	(239, 'application', 'access', 'find', 0, '', 1, NULL, NULL),
	(240, 'application', 'access', 'find', 0, '', 2, NULL, NULL),
	(241, 'application', 'access', 'findone', 0, '', 1, NULL, NULL),
	(242, 'application', 'access', 'findone', 0, '', 2, NULL, NULL),
	(243, 'application', 'access', 'update', 0, '', 2, NULL, NULL),
	(244, 'application', 'access', 'update', 0, '', 1, NULL, NULL),
	(245, 'application', 'settings', 'delete', 0, '', 1, NULL, NULL),
	(246, 'application', 'settings', 'delete', 1, '', 2, NULL, NULL),
	(247, 'application', 'settings', 'find', 1, '', 1, NULL, NULL),
	(248, 'application', 'settings', 'find', 1, '', 2, NULL, NULL),
	(249, 'application', 'settings', 'update', 0, '', 1, NULL, NULL),
	(250, 'application', 'settings', 'update', 1, '', 2, NULL, NULL),
	(251, 'documentation', 'documentation', 'deletedoc', 0, '', 1, NULL, NULL),
	(252, 'documentation', 'documentation', 'getinfos', 0, '', 1, NULL, NULL),
	(253, 'documentation', 'documentation', 'getinfos', 0, '', 2, NULL, NULL),
	(254, 'documentation', 'documentation', 'index', 0, '', 1, NULL, NULL),
	(255, 'documentation', 'documentation', 'index', 0, '', 2, NULL, NULL),
	(256, 'documentation', 'documentation', 'login', 0, '', 2, NULL, NULL),
	(257, 'documentation', 'documentation', 'deletedoc', 0, '', 2, NULL, NULL),
	(258, 'documentation', 'documentation', 'loginview', 0, '', 1, NULL, NULL),
	(259, 'documentation', 'documentation', 'loginview', 0, '', 2, NULL, NULL),
	(260, 'documentation', 'documentation', 'login', 0, '', 1, NULL, NULL),
	(261, 'documentation', 'documentation', 'regeneratedoc', 0, '', 2, NULL, NULL),
	(262, 'documentation', 'documentation', 'updatesettings', 0, '', 2, NULL, NULL),
	(263, 'documentation', 'documentation', 'regeneratedoc', 0, '', 1, NULL, NULL),
	(264, 'documentation', 'documentation', 'updatesettings', 0, '', 1, NULL, NULL),
	(265, 'application', 'translations', 'count', 0, '', 1, NULL, NULL),
	(266, 'application', 'translations', 'count', 0, '', 2, NULL, NULL),
	(267, 'application', 'translations', 'create', 0, '', 1, NULL, NULL),
	(268, 'application', 'translations', 'createlocalization', 0, '', 1, NULL, NULL),
	(269, 'application', 'translations', 'createlocalization', 0, '', 2, NULL, NULL),
	(270, 'application', 'translations', 'delete', 0, '', 1, NULL, NULL),
	(271, 'application', 'translations', 'delete', 0, '', 2, NULL, NULL),
	(272, 'application', 'translations', 'create', 0, '', 2, NULL, NULL),
	(273, 'application', 'translations', 'find', 0, '', 1, NULL, NULL),
	(274, 'application', 'translations', 'find', 0, '', 2, NULL, NULL),
	(275, 'application', 'translations', 'findone', 0, '', 1, NULL, NULL),
	(276, 'application', 'translations', 'findone', 0, '', 2, NULL, NULL),
	(277, 'application', 'translations', 'update', 0, '', 1, NULL, NULL),
	(278, 'application', 'translations', 'update', 0, '', 2, NULL, NULL),
	(279, 'application', 'account', 'updateuser', 0, '', 1, NULL, NULL),
	(280, 'application', 'account', 'updateuser', 0, '', 2, NULL, NULL),
	(281, 'application', 'connections', 'count', 0, '', 1, NULL, NULL),
	(282, 'application', 'connections', 'count', 0, '', 2, NULL, NULL),
	(283, 'application', 'connections', 'create', 0, '', 1, NULL, NULL),
	(284, 'application', 'connections', 'create', 0, '', 2, NULL, NULL),
	(285, 'application', 'connections', 'delete', 0, '', 1, NULL, NULL),
	(286, 'application', 'connections', 'delete', 0, '', 2, NULL, NULL),
	(287, 'application', 'connections', 'find', 0, '', 1, NULL, NULL),
	(288, 'application', 'connections', 'find', 0, '', 2, NULL, NULL),
	(289, 'application', 'connections', 'findone', 0, '', 1, NULL, NULL),
	(290, 'application', 'connections', 'findone', 0, '', 2, NULL, NULL),
	(291, 'application', 'connections', 'update', 0, '', 2, NULL, NULL),
	(292, 'application', 'connections', 'update', 0, '', 1, NULL, NULL);
/*!40000 ALTER TABLE `users-permissions_permission` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.users-permissions_role
DROP TABLE IF EXISTS `users-permissions_role`;
CREATE TABLE IF NOT EXISTS `users-permissions_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users-permissions_role_type_unique` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.users-permissions_role: ~2 rows (aproximadamente)
DELETE FROM `users-permissions_role`;
/*!40000 ALTER TABLE `users-permissions_role` DISABLE KEYS */;
INSERT INTO `users-permissions_role` (`id`, `name`, `description`, `type`, `created_by`, `updated_by`) VALUES
	(1, 'Authenticated', 'Default role given to authenticated user.', 'authenticated', NULL, NULL),
	(2, 'Public', 'Default role given to unauthenticated user.', 'public', NULL, NULL);
/*!40000 ALTER TABLE `users-permissions_role` ENABLE KEYS */;

-- Volcando estructura para tabla strapi-for-ionic.users-permissions_user
DROP TABLE IF EXISTS `users-permissions_user`;
CREATE TABLE IF NOT EXISTS `users-permissions_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `resetPasswordToken` varchar(255) DEFAULT NULL,
  `confirmationToken` varchar(255) DEFAULT NULL,
  `confirmed` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `darkModeEnabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users-permissions_user_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla strapi-for-ionic.users-permissions_user: ~4 rows (aproximadamente)
DELETE FROM `users-permissions_user`;
/*!40000 ALTER TABLE `users-permissions_user` DISABLE KEYS */;
INSERT INTO `users-permissions_user` (`id`, `username`, `email`, `provider`, `password`, `resetPasswordToken`, `confirmationToken`, `confirmed`, `blocked`, `role`, `created_by`, `updated_by`, `created_at`, `updated_at`, `darkModeEnabled`) VALUES
	(1, 'Pepito', 'us@us.com', 'local', '$2a$10$jobzXQd5hjRvgvCA6xSp9eHUscFTRWFH58V2KeRVMioeYoWbZIM1O', NULL, NULL, 1, 0, 1, 1, 1, '2021-06-16 23:39:43', '2021-06-28 22:47:34', 1),
	(2, 'dgfsdfsgdf', 'someone@gmail.com', 'local', '$2a$10$Xpo4CHFjETzHue7itRk3/uYWpbkkDUt4r5XOj5OsVm26n64EwnNsC', NULL, NULL, 0, 0, 1, 1, 1, '2021-06-21 01:08:57', '2021-06-21 01:08:57', 0),
	(3, 'fgjhfgh', 'sadf@asdfsd.com', 'local', '$2a$10$HO6qp/qgG2A5dyULfxL/b.MINeIQ0ufq.B8LY3928j0Ms/MKk.sTm', NULL, NULL, 0, 0, 1, 1, 1, '2021-06-21 01:11:04', '2021-06-21 01:11:04', 0),
	(4, 'asdscds', 'circadian1.0v@gmail.com', 'local', '$2a$10$njIU81jUJYdR6suS/xFJW.pOyYJW4B5LJyGaOvM42ji7oE1tP0p8.', NULL, NULL, 0, 0, 1, 1, 1, '2021-06-21 01:25:50', '2021-06-21 01:25:50', 0);
/*!40000 ALTER TABLE `users-permissions_user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
