-- Adminer 4.2.5 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `backend_layout`;
CREATE TABLE `backend_layout` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `config` text NOT NULL,
  `icon` text NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `backend_layout` (`uid`, `pid`, `t3ver_oid`, `t3ver_id`, `t3ver_wsid`, `t3ver_label`, `t3ver_state`, `t3ver_stage`, `t3ver_count`, `t3ver_tstamp`, `t3ver_move_id`, `t3_origuid`, `tstamp`, `crdate`, `cruser_id`, `hidden`, `deleted`, `sorting`, `title`, `description`, `config`, `icon`) VALUES
(1,	2,	0,	0,	0,	'',	0,	0,	0,	0,	0,	0,	1486014327,	1486014327,	1,	0,	0,	256,	'Default',	'',	'<INCLUDE_TYPOSCRIPT: source=\"FILE:EXT:qxplay/Configuration/BackendLayout/Default.txt\">',	'');

DROP TABLE IF EXISTS `be_groups`;
CREATE TABLE `be_groups` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(50) NOT NULL DEFAULT '',
  `non_exclude_fields` text,
  `explicit_allowdeny` text,
  `allowed_languages` varchar(255) NOT NULL DEFAULT '',
  `custom_options` text,
  `db_mountpoints` text,
  `pagetypes_select` varchar(255) NOT NULL DEFAULT '',
  `tables_select` text,
  `tables_modify` text,
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `groupMods` text,
  `file_mountpoints` text,
  `file_permissions` text,
  `hidden` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `description` varchar(2000) NOT NULL DEFAULT '',
  `lockToDomain` varchar(50) NOT NULL DEFAULT '',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `TSconfig` text,
  `subgroup` text,
  `hide_in_lists` tinyint(4) NOT NULL DEFAULT '0',
  `workspace_perms` tinyint(3) NOT NULL DEFAULT '1',
  `category_perms` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `be_groups` (`uid`, `pid`, `tstamp`, `title`, `non_exclude_fields`, `explicit_allowdeny`, `allowed_languages`, `custom_options`, `db_mountpoints`, `pagetypes_select`, `tables_select`, `tables_modify`, `crdate`, `cruser_id`, `groupMods`, `file_mountpoints`, `file_permissions`, `hidden`, `description`, `lockToDomain`, `deleted`, `TSconfig`, `subgroup`, `hide_in_lists`, `workspace_perms`, `category_perms`) VALUES
(1,	0,	1486017190,	'Local Admin',	'',	'',	'',	NULL,	'',	'',	'',	'',	1486017190,	1,	'',	'',	'readFolder,writeFolder,addFolder,renameFolder,moveFolder,deleteFolder,readFile,writeFile,addFile,renameFile,replaceFile,moveFile,copyFile,deleteFile',	0,	'',	'',	0,	'<INCLUDE_TYPOSCRIPT: source=\"FILE:EXT:qxplay/Configuration/TsConfig/User.t3s\">',	'',	0,	0,	'');

DROP TABLE IF EXISTS `be_sessions`;
CREATE TABLE `be_sessions` (
  `ses_id` varchar(32) NOT NULL DEFAULT '',
  `ses_name` varchar(32) NOT NULL DEFAULT '',
  `ses_iplock` varchar(39) NOT NULL DEFAULT '',
  `ses_hashlock` int(11) NOT NULL DEFAULT '0',
  `ses_userid` int(11) unsigned NOT NULL DEFAULT '0',
  `ses_tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `ses_data` longtext,
  `ses_backuserid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ses_id`,`ses_name`),
  KEY `ses_tstamp` (`ses_tstamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `be_sessions` (`ses_id`, `ses_name`, `ses_iplock`, `ses_hashlock`, `ses_userid`, `ses_tstamp`, `ses_data`, `ses_backuserid`) VALUES
('297562c6c65ada0cdb1c1089b1b28a3f',	'be_typo_user',	'127.0.0.1',	254347949,	1,	1486017376,	'a:4:{s:26:\"formProtectionSessionToken\";s:64:\"76dfd0878b855192af97502f8809b65bce39d3969061b25612f527e7f49317f5\";s:27:\"core.template.flashMessages\";N;s:80:\"extbase.flashmessages.tx_extensionmanager_tools_extensionmanagerextensionmanager\";N;s:31:\"TYPO3\\CMS\\Recordlist\\RecordList\";a:1:{s:12:\"search_field\";N;}}',	0);

DROP TABLE IF EXISTS `be_users`;
CREATE TABLE `be_users` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(2000) NOT NULL DEFAULT '',
  `avatar` int(11) unsigned NOT NULL DEFAULT '0',
  `password` varchar(100) NOT NULL DEFAULT '',
  `admin` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `usergroup` varchar(255) NOT NULL DEFAULT '',
  `disable` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `lang` char(2) NOT NULL DEFAULT '',
  `email` varchar(80) NOT NULL DEFAULT '',
  `db_mountpoints` text,
  `options` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `realName` varchar(80) NOT NULL DEFAULT '',
  `userMods` text,
  `allowed_languages` varchar(255) NOT NULL DEFAULT '',
  `uc` mediumtext,
  `file_mountpoints` text,
  `file_permissions` text,
  `workspace_perms` tinyint(3) NOT NULL DEFAULT '1',
  `lockToDomain` varchar(50) NOT NULL DEFAULT '',
  `disableIPlock` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `TSconfig` text,
  `lastlogin` int(10) unsigned NOT NULL DEFAULT '0',
  `createdByAction` int(11) NOT NULL DEFAULT '0',
  `usergroup_cached_list` text,
  `workspace_id` int(11) NOT NULL DEFAULT '0',
  `workspace_preview` tinyint(3) NOT NULL DEFAULT '1',
  `category_perms` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `be_users` (`uid`, `pid`, `tstamp`, `username`, `description`, `avatar`, `password`, `admin`, `usergroup`, `disable`, `starttime`, `endtime`, `lang`, `email`, `db_mountpoints`, `options`, `crdate`, `cruser_id`, `realName`, `userMods`, `allowed_languages`, `uc`, `file_mountpoints`, `file_permissions`, `workspace_perms`, `lockToDomain`, `disableIPlock`, `deleted`, `TSconfig`, `lastlogin`, `createdByAction`, `usergroup_cached_list`, `workspace_id`, `workspace_preview`, `category_perms`) VALUES
(1,	0,	1486017221,	'pschorr.christian',	'',	0,	'$P$C6ILrqhuEAwpFwh2D9F9Y1Yl7sATNP/',	1,	'1',	0,	0,	0,	'',	'hello@qinx.me',	NULL,	0,	1486012500,	0,	'Christian Pschorr',	NULL,	'',	'a:17:{s:14:\"interfaceSetup\";s:7:\"backend\";s:10:\"moduleData\";a:7:{s:6:\"web_ts\";a:2:{s:8:\"function\";s:85:\"TYPO3\\CMS\\Tstemplate\\Controller\\TypoScriptTemplateInformationModuleFunctionController\";s:19:\"constant_editor_cat\";s:14:\"internal notes\";}s:16:\"extensionbuilder\";a:1:{s:9:\"firstTime\";i:0;}s:10:\"web_layout\";a:2:{s:8:\"function\";s:1:\"1\";s:8:\"language\";s:1:\"0\";}s:10:\"FormEngine\";a:2:{i:0;a:5:{s:32:\"cbf9fcb9646172755056b7c156c1c7ac\";a:4:{i:0;s:7:\"play.me\";i:1;a:7:{s:4:\"edit\";a:1:{s:5:\"pages\";a:1:{i:1;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:24:\"editRegularContentFromId\";N;s:9:\"workspace\";N;}i:2;s:101:\"&edit[pages][1]=edit&defVals=&overrideVals=&columnsOnly=&noView=&editRegularContentFromId=&workspace=\";i:3;a:5:{s:5:\"table\";s:5:\"pages\";s:3:\"uid\";s:1:\"1\";s:3:\"pid\";s:1:\"0\";s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"0eaa25358e9ceeb3d00af423a49c8b8a\";a:4:{i:0;s:8:\"NEW SITE\";i:1;a:7:{s:4:\"edit\";a:1:{s:12:\"sys_template\";a:1:{i:1;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:24:\"editRegularContentFromId\";N;s:9:\"workspace\";N;}i:2;s:108:\"&edit[sys_template][1]=edit&defVals=&overrideVals=&columnsOnly=&noView=&editRegularContentFromId=&workspace=\";i:3;a:5:{s:5:\"table\";s:12:\"sys_template\";s:3:\"uid\";s:1:\"1\";s:3:\"pid\";s:1:\"1\";s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"cc8876d658345b3f90b6d4659e2395be\";a:4:{i:0;s:7:\"Default\";i:1;a:7:{s:4:\"edit\";a:1:{s:14:\"backend_layout\";a:1:{i:1;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:24:\"editRegularContentFromId\";N;s:9:\"workspace\";N;}i:2;s:110:\"&edit[backend_layout][1]=edit&defVals=&overrideVals=&columnsOnly=&noView=&editRegularContentFromId=&workspace=\";i:3;a:5:{s:5:\"table\";s:14:\"backend_layout\";s:3:\"uid\";s:1:\"1\";s:3:\"pid\";s:1:\"2\";s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"e5983dab248e3a6e1f3d05c2b9ad18c8\";a:4:{i:0;s:6:\"QxPlay\";i:1;a:7:{s:4:\"edit\";a:1:{s:12:\"sys_template\";a:1:{i:1;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";s:9:\"sitetitle\";s:6:\"noView\";N;s:24:\"editRegularContentFromId\";N;s:9:\"workspace\";N;}i:2;s:117:\"&edit[sys_template][1]=edit&defVals=&overrideVals=&columnsOnly=sitetitle&noView=&editRegularContentFromId=&workspace=\";i:3;a:5:{s:5:\"table\";s:12:\"sys_template\";s:3:\"uid\";s:1:\"1\";s:3:\"pid\";s:1:\"1\";s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"1e301ed11d0abf98c3ea2cdc827a8ef4\";a:4:{i:0;s:25:\"fileadmin/ (auto-created)\";i:1;a:7:{s:4:\"edit\";a:1:{s:16:\"sys_file_storage\";a:1:{i:1;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:24:\"editRegularContentFromId\";N;s:9:\"workspace\";N;}i:2;s:112:\"&edit[sys_file_storage][1]=edit&defVals=&overrideVals=&columnsOnly=&noView=&editRegularContentFromId=&workspace=\";i:3;a:5:{s:5:\"table\";s:16:\"sys_file_storage\";s:3:\"uid\";s:1:\"1\";s:3:\"pid\";s:1:\"0\";s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}}i:1;s:32:\"1e301ed11d0abf98c3ea2cdc827a8ef4\";}s:57:\"TYPO3\\CMS\\Backend\\Utility\\BackendUtility::getUpdateSignal\";a:0:{}s:8:\"web_list\";a:0:{}s:16:\"opendocs::recent\";a:2:{s:32:\"3107b94272a0c3194e2479999dc9d94b\";a:4:{i:0;s:17:\"pschorr.christian\";i:1;a:7:{s:4:\"edit\";a:1:{s:8:\"be_users\";a:1:{i:1;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:24:\"editRegularContentFromId\";N;s:9:\"workspace\";N;}i:2;s:104:\"&edit[be_users][1]=edit&defVals=&overrideVals=&columnsOnly=&noView=&editRegularContentFromId=&workspace=\";i:3;a:5:{s:5:\"table\";s:8:\"be_users\";s:3:\"uid\";s:1:\"1\";s:3:\"pid\";s:1:\"0\";s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"57d928391bbb6f8f6a49bc2c76598689\";a:4:{i:0;s:11:\"Local Admin\";i:1;a:7:{s:4:\"edit\";a:1:{s:9:\"be_groups\";a:1:{i:1;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:24:\"editRegularContentFromId\";N;s:9:\"workspace\";N;}i:2;s:105:\"&edit[be_groups][1]=edit&defVals=&overrideVals=&columnsOnly=&noView=&editRegularContentFromId=&workspace=\";i:3;a:5:{s:5:\"table\";s:9:\"be_groups\";s:3:\"uid\";s:1:\"1\";s:3:\"pid\";s:1:\"0\";s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}}}s:19:\"thumbnailsByDefault\";i:1;s:14:\"emailMeAtLogin\";i:0;s:11:\"startModule\";s:29:\"help_AboutmodulesAboutmodules\";s:18:\"hideSubmoduleIcons\";i:0;s:8:\"titleLen\";i:50;s:8:\"edit_RTE\";s:1:\"1\";s:20:\"edit_docModuleUpload\";s:1:\"1\";s:17:\"navFrameResizable\";i:0;s:15:\"resizeTextareas\";i:1;s:25:\"resizeTextareas_MaxHeight\";i:500;s:24:\"resizeTextareas_Flexible\";i:0;s:4:\"lang\";s:0:\"\";s:19:\"firstLoginTimeStamp\";i:1486012528;s:15:\"moduleSessionID\";a:7:{s:6:\"web_ts\";s:32:\"297562c6c65ada0cdb1c1089b1b28a3f\";s:16:\"extensionbuilder\";s:32:\"297562c6c65ada0cdb1c1089b1b28a3f\";s:10:\"web_layout\";s:32:\"297562c6c65ada0cdb1c1089b1b28a3f\";s:10:\"FormEngine\";s:32:\"297562c6c65ada0cdb1c1089b1b28a3f\";s:57:\"TYPO3\\CMS\\Backend\\Utility\\BackendUtility::getUpdateSignal\";s:32:\"297562c6c65ada0cdb1c1089b1b28a3f\";s:8:\"web_list\";s:32:\"297562c6c65ada0cdb1c1089b1b28a3f\";s:16:\"opendocs::recent\";s:32:\"297562c6c65ada0cdb1c1089b1b28a3f\";}s:17:\"BackendComponents\";a:1:{s:6:\"States\";a:1:{s:8:\"Pagetree\";O:8:\"stdClass\":1:{s:9:\"stateHash\";O:8:\"stdClass\":4:{s:1:\"0\";i:1;s:1:\"1\";i:1;s:4:\"root\";i:1;s:16:\"lastSelectedNode\";s:2:\"p0\";}}}}}',	NULL,	NULL,	1,	'',	0,	0,	NULL,	1486012528,	0,	'1',	0,	1,	'');

DROP TABLE IF EXISTS `cache_md5params`;
CREATE TABLE `cache_md5params` (
  `md5hash` varchar(20) NOT NULL DEFAULT '',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `type` tinyint(3) NOT NULL DEFAULT '0',
  `params` text,
  PRIMARY KEY (`md5hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `cache_treelist`;
CREATE TABLE `cache_treelist` (
  `md5hash` char(32) NOT NULL DEFAULT '',
  `pid` int(11) NOT NULL DEFAULT '0',
  `treelist` mediumtext,
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`md5hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `cf_cache_hash`;
CREATE TABLE `cf_cache_hash` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `cf_cache_hash` (`id`, `identifier`, `expires`, `content`) VALUES
(1,	'dd83ad6f6284423b2f1995d36a888b7d',	2145909600,	'a:2:{i:0;a:3:{s:8:\"TSconfig\";a:4:{s:8:\"options.\";a:8:{s:15:\"enableBookmarks\";s:1:\"1\";s:10:\"file_list.\";a:3:{s:28:\"enableDisplayBigControlPanel\";s:10:\"selectable\";s:23:\"enableDisplayThumbnails\";s:10:\"selectable\";s:15:\"enableClipBoard\";s:10:\"selectable\";}s:9:\"pageTree.\";a:1:{s:31:\"doktypesToShowInNewPageDragArea\";s:21:\"1,6,4,7,3,254,255,199\";}s:12:\"contextMenu.\";a:2:{s:8:\"options.\";a:1:{s:9:\"leftIcons\";s:1:\"1\";}s:6:\"table.\";a:3:{s:13:\"virtual_root.\";a:2:{s:12:\"disableItems\";s:0:\"\";s:6:\"items.\";a:7:{i:100;s:4:\"ITEM\";s:4:\"100.\";a:5:{s:4:\"name\";s:7:\"history\";s:5:\"label\";s:42:\"LLL:EXT:lang/locallang_misc.xlf:CM_history\";s:8:\"iconName\";s:29:\"actions-document-history-open\";s:16:\"displayCondition\";s:19:\"canShowHistory != 0\";s:14:\"callbackAction\";s:16:\"openHistoryPopUp\";}i:9000;s:7:\"DIVIDER\";i:9100;s:4:\"ITEM\";s:5:\"9100.\";a:4:{s:4:\"name\";s:9:\"exportT3d\";s:5:\"label\";s:62:\"LLL:EXT:impexp/Resources/Private/Language/locallang.xlf:export\";s:8:\"iconName\";s:27:\"actions-document-export-t3d\";s:14:\"callbackAction\";s:9:\"exportT3d\";}i:9200;s:4:\"ITEM\";s:5:\"9200.\";a:4:{s:4:\"name\";s:9:\"importT3d\";s:5:\"label\";s:62:\"LLL:EXT:impexp/Resources/Private/Language/locallang.xlf:import\";s:8:\"iconName\";s:27:\"actions-document-import-t3d\";s:14:\"callbackAction\";s:9:\"importT3d\";}}}s:11:\"pages_root.\";a:2:{s:12:\"disableItems\";s:0:\"\";s:6:\"items.\";a:12:{i:100;s:4:\"ITEM\";s:4:\"100.\";a:5:{s:4:\"name\";s:4:\"view\";s:5:\"label\";s:39:\"LLL:EXT:lang/locallang_core.xlf:cm.view\";s:8:\"iconName\";s:21:\"actions-document-view\";s:16:\"displayCondition\";s:16:\"canBeViewed != 0\";s:14:\"callbackAction\";s:8:\"viewPage\";}i:200;s:4:\"ITEM\";s:4:\"200.\";a:5:{s:4:\"name\";s:3:\"new\";s:5:\"label\";s:38:\"LLL:EXT:lang/locallang_core.xlf:cm.new\";s:8:\"iconName\";s:16:\"actions-page-new\";s:16:\"displayCondition\";s:22:\"canCreateNewPages != 0\";s:14:\"callbackAction\";s:13:\"newPageWizard\";}i:300;s:7:\"DIVIDER\";i:400;s:4:\"ITEM\";s:4:\"400.\";a:5:{s:4:\"name\";s:7:\"history\";s:5:\"label\";s:42:\"LLL:EXT:lang/locallang_misc.xlf:CM_history\";s:8:\"iconName\";s:29:\"actions-document-history-open\";s:16:\"displayCondition\";s:19:\"canShowHistory != 0\";s:14:\"callbackAction\";s:16:\"openHistoryPopUp\";}i:9000;s:7:\"DIVIDER\";i:9100;s:4:\"ITEM\";s:5:\"9100.\";a:4:{s:4:\"name\";s:9:\"exportT3d\";s:5:\"label\";s:62:\"LLL:EXT:impexp/Resources/Private/Language/locallang.xlf:export\";s:8:\"iconName\";s:27:\"actions-document-export-t3d\";s:14:\"callbackAction\";s:9:\"exportT3d\";}i:9200;s:4:\"ITEM\";s:5:\"9200.\";a:4:{s:4:\"name\";s:9:\"importT3d\";s:5:\"label\";s:62:\"LLL:EXT:impexp/Resources/Private/Language/locallang.xlf:import\";s:8:\"iconName\";s:27:\"actions-document-import-t3d\";s:14:\"callbackAction\";s:9:\"importT3d\";}}}s:6:\"pages.\";a:2:{s:12:\"disableItems\";s:0:\"\";s:6:\"items.\";a:18:{i:100;s:4:\"ITEM\";s:4:\"100.\";a:5:{s:4:\"name\";s:4:\"view\";s:5:\"label\";s:39:\"LLL:EXT:lang/locallang_core.xlf:cm.view\";s:8:\"iconName\";s:21:\"actions-document-view\";s:16:\"displayCondition\";s:16:\"canBeViewed != 0\";s:14:\"callbackAction\";s:8:\"viewPage\";}i:200;s:7:\"DIVIDER\";i:300;s:4:\"ITEM\";s:4:\"300.\";a:5:{s:4:\"name\";s:7:\"disable\";s:5:\"label\";s:41:\"LLL:EXT:lang/locallang_common.xlf:disable\";s:8:\"iconName\";s:17:\"actions-edit-hide\";s:16:\"displayCondition\";s:52:\"getRecord|hidden = 0 && canBeDisabledAndEnabled != 0\";s:14:\"callbackAction\";s:11:\"disablePage\";}i:400;s:4:\"ITEM\";s:4:\"400.\";a:5:{s:4:\"name\";s:6:\"enable\";s:5:\"label\";s:40:\"LLL:EXT:lang/locallang_common.xlf:enable\";s:8:\"iconName\";s:19:\"actions-edit-unhide\";s:16:\"displayCondition\";s:52:\"getRecord|hidden = 1 && canBeDisabledAndEnabled != 0\";s:14:\"callbackAction\";s:10:\"enablePage\";}i:500;s:4:\"ITEM\";s:4:\"500.\";a:5:{s:4:\"name\";s:4:\"edit\";s:5:\"label\";s:39:\"LLL:EXT:lang/locallang_core.xlf:cm.edit\";s:8:\"iconName\";s:17:\"actions-page-open\";s:16:\"displayCondition\";s:16:\"canBeEdited != 0\";s:14:\"callbackAction\";s:18:\"editPageProperties\";}i:600;s:4:\"ITEM\";s:4:\"600.\";a:5:{s:4:\"name\";s:4:\"info\";s:5:\"label\";s:39:\"LLL:EXT:lang/locallang_core.xlf:cm.info\";s:8:\"iconName\";s:21:\"actions-document-info\";s:16:\"displayCondition\";s:16:\"canShowInfo != 0\";s:14:\"callbackAction\";s:13:\"openInfoPopUp\";}i:700;s:4:\"ITEM\";s:4:\"700.\";a:5:{s:4:\"name\";s:7:\"history\";s:5:\"label\";s:42:\"LLL:EXT:lang/locallang_misc.xlf:CM_history\";s:8:\"iconName\";s:29:\"actions-document-history-open\";s:16:\"displayCondition\";s:19:\"canShowHistory != 0\";s:14:\"callbackAction\";s:16:\"openHistoryPopUp\";}i:800;s:7:\"DIVIDER\";i:900;s:7:\"SUBMENU\";s:4:\"900.\";a:19:{s:5:\"label\";s:51:\"LLL:EXT:lang/locallang_core.xlf:cm.copyPasteActions\";i:100;s:4:\"ITEM\";s:4:\"100.\";a:5:{s:4:\"name\";s:3:\"new\";s:5:\"label\";s:38:\"LLL:EXT:lang/locallang_core.xlf:cm.new\";s:8:\"iconName\";s:16:\"actions-page-new\";s:16:\"displayCondition\";s:22:\"canCreateNewPages != 0\";s:14:\"callbackAction\";s:13:\"newPageWizard\";}i:200;s:7:\"DIVIDER\";i:300;s:4:\"ITEM\";s:4:\"300.\";a:5:{s:4:\"name\";s:3:\"cut\";s:5:\"label\";s:38:\"LLL:EXT:lang/locallang_core.xlf:cm.cut\";s:8:\"iconName\";s:16:\"actions-edit-cut\";s:16:\"displayCondition\";s:53:\"isInCutMode = 0 && canBeCut != 0 && isMountPoint != 1\";s:14:\"callbackAction\";s:13:\"enableCutMode\";}i:400;s:4:\"ITEM\";s:4:\"400.\";a:5:{s:4:\"name\";s:3:\"cut\";s:5:\"label\";s:38:\"LLL:EXT:lang/locallang_core.xlf:cm.cut\";s:8:\"iconName\";s:24:\"actions-edit-cut-release\";s:16:\"displayCondition\";s:32:\"isInCutMode = 1 && canBeCut != 0\";s:14:\"callbackAction\";s:14:\"disableCutMode\";}i:500;s:4:\"ITEM\";s:4:\"500.\";a:5:{s:4:\"name\";s:4:\"copy\";s:5:\"label\";s:39:\"LLL:EXT:lang/locallang_core.xlf:cm.copy\";s:8:\"iconName\";s:17:\"actions-edit-copy\";s:16:\"displayCondition\";s:16:\"isInCopyMode = 0\";s:14:\"callbackAction\";s:14:\"enableCopyMode\";}i:600;s:4:\"ITEM\";s:4:\"600.\";a:5:{s:4:\"name\";s:4:\"copy\";s:5:\"label\";s:39:\"LLL:EXT:lang/locallang_core.xlf:cm.copy\";s:8:\"iconName\";s:25:\"actions-edit-copy-release\";s:16:\"displayCondition\";s:16:\"isInCopyMode = 1\";s:14:\"callbackAction\";s:15:\"disableCopyMode\";}i:700;s:4:\"ITEM\";s:4:\"700.\";a:5:{s:4:\"name\";s:9:\"pasteInto\";s:5:\"label\";s:44:\"LLL:EXT:lang/locallang_core.xlf:cm.pasteinto\";s:8:\"iconName\";s:27:\"actions-document-paste-into\";s:16:\"displayCondition\";s:85:\"getContextInfo|inCopyMode = 1 || getContextInfo|inCutMode = 1 && canBePastedInto != 0\";s:14:\"callbackAction\";s:13:\"pasteIntoNode\";}i:800;s:4:\"ITEM\";s:4:\"800.\";a:5:{s:4:\"name\";s:10:\"pasteAfter\";s:5:\"label\";s:45:\"LLL:EXT:lang/locallang_core.xlf:cm.pasteafter\";s:8:\"iconName\";s:28:\"actions-document-paste-after\";s:16:\"displayCondition\";s:86:\"getContextInfo|inCopyMode = 1 || getContextInfo|inCutMode = 1 && canBePastedAfter != 0\";s:14:\"callbackAction\";s:14:\"pasteAfterNode\";}i:900;s:7:\"DIVIDER\";i:1000;s:4:\"ITEM\";s:5:\"1000.\";a:5:{s:4:\"name\";s:6:\"delete\";s:5:\"label\";s:41:\"LLL:EXT:lang/locallang_core.xlf:cm.delete\";s:8:\"iconName\";s:19:\"actions-edit-delete\";s:16:\"displayCondition\";s:38:\"canBeRemoved != 0 && isMountPoint != 1\";s:14:\"callbackAction\";s:10:\"removeNode\";}}i:1000;s:7:\"SUBMENU\";s:5:\"1000.\";a:13:{s:5:\"label\";s:48:\"LLL:EXT:lang/locallang_core.xlf:cm.branchActions\";i:100;s:4:\"ITEM\";s:4:\"100.\";a:5:{s:4:\"name\";s:15:\"mountAsTreeroot\";s:5:\"label\";s:49:\"LLL:EXT:lang/locallang_core.xlf:cm.tempMountPoint\";s:8:\"iconName\";s:26:\"actions-pagetree-mountroot\";s:16:\"displayCondition\";s:49:\"canBeTemporaryMountPoint != 0 && isMountPoint = 0\";s:14:\"callbackAction\";s:15:\"mountAsTreeRoot\";}i:200;s:7:\"DIVIDER\";i:300;s:4:\"ITEM\";s:4:\"300.\";a:5:{s:4:\"name\";s:12:\"expandBranch\";s:5:\"label\";s:47:\"LLL:EXT:lang/locallang_core.xlf:cm.expandBranch\";s:8:\"iconName\";s:23:\"actions-pagetree-expand\";s:16:\"displayCondition\";s:0:\"\";s:14:\"callbackAction\";s:12:\"expandBranch\";}i:400;s:4:\"ITEM\";s:4:\"400.\";a:5:{s:4:\"name\";s:14:\"collapseBranch\";s:5:\"label\";s:49:\"LLL:EXT:lang/locallang_core.xlf:cm.collapseBranch\";s:8:\"iconName\";s:25:\"actions-pagetree-collapse\";s:16:\"displayCondition\";s:0:\"\";s:14:\"callbackAction\";s:14:\"collapseBranch\";}i:9000;s:7:\"DIVIDER\";i:9100;s:4:\"ITEM\";s:5:\"9100.\";a:4:{s:4:\"name\";s:9:\"exportT3d\";s:5:\"label\";s:62:\"LLL:EXT:impexp/Resources/Private/Language/locallang.xlf:export\";s:8:\"iconName\";s:27:\"actions-document-export-t3d\";s:14:\"callbackAction\";s:9:\"exportT3d\";}i:9200;s:4:\"ITEM\";s:5:\"9200.\";a:4:{s:4:\"name\";s:9:\"importT3d\";s:5:\"label\";s:62:\"LLL:EXT:impexp/Resources/Private/Language/locallang.xlf:import\";s:8:\"iconName\";s:27:\"actions-document-import-t3d\";s:14:\"callbackAction\";s:9:\"importT3d\";}}}}}}s:14:\"disableDelete.\";a:2:{s:17:\"sys_file_metadata\";s:1:\"1\";s:8:\"sys_file\";s:1:\"1\";}s:11:\"saveDocView\";s:1:\"1\";s:10:\"saveDocNew\";s:1:\"1\";s:11:\"saveDocNew.\";a:3:{s:5:\"pages\";s:1:\"0\";s:8:\"sys_file\";s:1:\"0\";s:17:\"sys_file_metadata\";s:1:\"0\";}}s:6:\"setup.\";a:1:{s:8:\"default.\";a:1:{s:8:\"edit_RTE\";s:1:\"1\";}}s:9:\"admPanel.\";a:1:{s:7:\"enable.\";a:1:{s:3:\"all\";s:1:\"1\";}}s:12:\"TCAdefaults.\";a:1:{s:9:\"sys_note.\";a:2:{s:6:\"author\";s:0:\"\";s:5:\"email\";s:0:\"\";}}}s:8:\"sections\";a:0:{}s:5:\"match\";a:0:{}}i:1;s:32:\"d081d997a7a4e726ad5bc208e57e25cb\";}'),
(2,	'b86d691357fa5e0f6dbe0152427664d5',	2145909600,	'a:2:{i:0;a:3:{s:8:\"TSconfig\";a:4:{s:4:\"mod.\";a:3:{s:9:\"web_list.\";a:4:{s:28:\"enableDisplayBigControlPanel\";s:10:\"selectable\";s:15:\"enableClipBoard\";s:10:\"selectable\";s:22:\"enableLocalizationView\";s:10:\"selectable\";s:18:\"tableDisplayOrder.\";a:11:{s:9:\"be_users.\";a:1:{s:5:\"after\";s:9:\"be_groups\";}s:15:\"sys_filemounts.\";a:1:{s:5:\"after\";s:8:\"be_users\";}s:17:\"sys_file_storage.\";a:1:{s:5:\"after\";s:14:\"sys_filemounts\";}s:13:\"sys_language.\";a:1:{s:5:\"after\";s:16:\"sys_file_storage\";}s:23:\"pages_language_overlay.\";a:1:{s:6:\"before\";s:5:\"pages\";}s:9:\"fe_users.\";a:2:{s:5:\"after\";s:9:\"fe_groups\";s:6:\"before\";s:5:\"pages\";}s:13:\"sys_template.\";a:1:{s:5:\"after\";s:5:\"pages\";}s:15:\"backend_layout.\";a:1:{s:5:\"after\";s:5:\"pages\";}s:11:\"sys_domain.\";a:1:{s:5:\"after\";s:12:\"sys_template\";}s:11:\"tt_content.\";a:1:{s:5:\"after\";s:33:\"pages,backend_layout,sys_template\";}s:13:\"sys_category.\";a:1:{s:5:\"after\";s:10:\"tt_content\";}}}s:8:\"wizards.\";a:3:{s:10:\"newRecord.\";a:1:{s:6:\"pages.\";a:1:{s:5:\"show.\";a:3:{s:10:\"pageInside\";s:1:\"1\";s:9:\"pageAfter\";s:1:\"1\";s:18:\"pageSelectPosition\";s:1:\"1\";}}}s:18:\"newContentElement.\";a:1:{s:12:\"wizardItems.\";a:4:{s:7:\"common.\";a:3:{s:6:\"header\";s:81:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common\";s:9:\"elements.\";a:6:{s:7:\"header.\";a:4:{s:14:\"iconIdentifier\";s:14:\"content-header\";s:5:\"title\";s:98:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_headerOnly_title\";s:11:\"description\";s:104:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_headerOnly_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:6:\"header\";}}s:5:\"text.\";a:4:{s:14:\"iconIdentifier\";s:12:\"content-text\";s:5:\"title\";s:99:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_regularText_title\";s:11:\"description\";s:105:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_regularText_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:4:\"text\";}}s:8:\"textpic.\";a:4:{s:14:\"iconIdentifier\";s:15:\"content-textpic\";s:5:\"title\";s:97:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_textImage_title\";s:11:\"description\";s:103:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_textImage_description\";s:21:\"tt_content_defValues.\";a:2:{s:5:\"CType\";s:7:\"textpic\";s:11:\"imageorient\";s:2:\"17\";}}s:6:\"image.\";a:4:{s:14:\"iconIdentifier\";s:13:\"content-image\";s:5:\"title\";s:98:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_imagesOnly_title\";s:11:\"description\";s:104:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_imagesOnly_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:5:\"image\";}}s:8:\"bullets.\";a:4:{s:14:\"iconIdentifier\";s:15:\"content-bullets\";s:5:\"title\";s:98:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_bulletList_title\";s:11:\"description\";s:104:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_bulletList_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:7:\"bullets\";}}s:6:\"table.\";a:4:{s:14:\"iconIdentifier\";s:13:\"content-table\";s:5:\"title\";s:93:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_table_title\";s:11:\"description\";s:99:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_table_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:5:\"table\";}}}s:4:\"show\";s:39:\"header,text,textpic,image,bullets,table\";}s:8:\"special.\";a:3:{s:6:\"header\";s:82:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special\";s:9:\"elements.\";a:5:{s:8:\"uploads.\";a:4:{s:14:\"iconIdentifier\";s:23:\"content-special-uploads\";s:5:\"title\";s:98:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special_filelinks_title\";s:11:\"description\";s:104:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special_filelinks_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:7:\"uploads\";}}s:5:\"menu.\";a:4:{s:14:\"iconIdentifier\";s:20:\"content-special-menu\";s:5:\"title\";s:94:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special_menus_title\";s:11:\"description\";s:100:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special_menus_description\";s:21:\"tt_content_defValues.\";a:2:{s:5:\"CType\";s:4:\"menu\";s:9:\"menu_type\";s:1:\"0\";}}s:5:\"html.\";a:4:{s:14:\"iconIdentifier\";s:20:\"content-special-html\";s:5:\"title\";s:98:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special_plainHTML_title\";s:11:\"description\";s:104:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special_plainHTML_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:4:\"html\";}}s:4:\"div.\";a:4:{s:14:\"iconIdentifier\";s:19:\"content-special-div\";s:5:\"title\";s:96:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special_divider_title\";s:11:\"description\";s:102:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special_divider_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:3:\"div\";}}s:9:\"shortcut.\";a:4:{s:14:\"iconIdentifier\";s:24:\"content-special-shortcut\";s:5:\"title\";s:97:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special_shortcut_title\";s:11:\"description\";s:103:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special_shortcut_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:8:\"shortcut\";}}}s:4:\"show\";s:30:\"uploads,menu,html,div,shortcut\";}s:6:\"forms.\";a:3:{s:6:\"header\";s:80:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:forms\";s:9:\"elements.\";a:2:{s:6:\"login.\";a:4:{s:14:\"iconIdentifier\";s:22:\"content-elements-login\";s:5:\"title\";s:92:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:forms_login_title\";s:11:\"description\";s:98:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:forms_login_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:5:\"login\";}}s:9:\"mailform.\";a:4:{s:14:\"iconIdentifier\";s:25:\"content-elements-mailform\";s:5:\"title\";s:91:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:forms_mail_title\";s:11:\"description\";s:97:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:forms_mail_description\";s:21:\"tt_content_defValues.\";a:2:{s:5:\"CType\";s:8:\"mailform\";s:8:\"bodytext\";s:60:\"enctype = multipart/form-data\nmethod = post\nprefix = tx_form\";}}}s:4:\"show\";s:14:\"login,mailform\";}s:8:\"plugins.\";a:3:{s:6:\"header\";s:82:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:plugins\";s:9:\"elements.\";a:1:{s:8:\"general.\";a:4:{s:14:\"iconIdentifier\";s:14:\"content-plugin\";s:5:\"title\";s:96:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:plugins_general_title\";s:11:\"description\";s:102:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:plugins_general_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:4:\"list\";}}}s:4:\"show\";s:1:\"*\";}}}s:5:\"form.\";a:2:{s:9:\"defaults.\";a:2:{s:8:\"showTabs\";s:23:\"elements, options, form\";s:5:\"tabs.\";a:3:{s:9:\"elements.\";a:2:{s:14:\"showAccordions\";s:26:\"basic, predefined, content\";s:11:\"accordions.\";a:3:{s:6:\"basic.\";a:1:{s:11:\"showButtons\";s:106:\"textline, textarea, checkbox, radio, select, fileupload, hidden, password, fieldset, submit, reset, button\";}s:11:\"predefined.\";a:1:{s:11:\"showButtons\";s:38:\"name, email, checkboxgroup, radiogroup\";}s:8:\"content.\";a:1:{s:11:\"showButtons\";s:17:\"header, textblock\";}}}s:8:\"options.\";a:2:{s:14:\"showAccordions\";s:64:\"legend, label, attributes, options, validation, filters, various\";s:11:\"accordions.\";a:4:{s:6:\"label.\";a:1:{s:14:\"showProperties\";s:5:\"label\";}s:11:\"attributes.\";a:1:{s:14:\"showProperties\";s:490:\"accept, accept-charset, accesskey, action, alt, autocomplete, autofocus, checked, class, cols, contenteditable, contextmenu, dir, draggable, dropzone, disabled, enctype, hidden, height, id, inputmode, label, lang, list, max, maxlength, method, min, minlength, multiple, name, novalidate, pattern, placeholder, readonly, required, rows, selected, selectionDirection, selectionEnd, selectionStart, size, spellcheck, src, step, style, tabindex, text, title, translate, type, value, width, wrap\";}s:11:\"validation.\";a:2:{s:9:\"showRules\";s:196:\"alphabetic, alphanumeric, between, date, digit, email, equals, fileallowedtypes, filemaximumsize, fileminimumsize, float, greaterthan, inarray, integer, ip, length, lessthan, regexp, required, uri\";s:6:\"rules.\";a:20:{s:11:\"alphabetic.\";a:1:{s:14:\"showProperties\";s:44:\"message, error, showMessage, allowWhiteSpace\";}s:13:\"alphanumeric.\";a:1:{s:14:\"showProperties\";s:44:\"message, error, showMessage, allowWhiteSpace\";}s:8:\"between.\";a:1:{s:14:\"showProperties\";s:56:\"message, error, showMessage, minimum, maximum, inclusive\";}s:5:\"date.\";a:1:{s:14:\"showProperties\";s:35:\"message, error, showMessage, format\";}s:6:\"digit.\";a:1:{s:14:\"showProperties\";s:27:\"message, error, showMessage\";}s:6:\"email.\";a:1:{s:14:\"showProperties\";s:27:\"message, error, showMessage\";}s:7:\"equals.\";a:1:{s:14:\"showProperties\";s:34:\"message, error, showMessage, field\";}s:17:\"fileallowedtypes.\";a:1:{s:14:\"showProperties\";s:34:\"message, error, showMessage, types\";}s:16:\"filemaximumsize.\";a:1:{s:14:\"showProperties\";s:36:\"message, error, showMessage, maximum\";}s:16:\"fileminimumsize.\";a:1:{s:14:\"showProperties\";s:36:\"message, error, showMessage, minimum\";}s:6:\"float.\";a:1:{s:14:\"showProperties\";s:27:\"message, error, showMessage\";}s:12:\"greaterthan.\";a:1:{s:14:\"showProperties\";s:36:\"message, error, showMessage, minimum\";}s:8:\"inarray.\";a:1:{s:14:\"showProperties\";s:42:\"message, error, showMessage, array, strict\";}s:8:\"integer.\";a:1:{s:14:\"showProperties\";s:27:\"message, error, showMessage\";}s:3:\"ip.\";a:1:{s:14:\"showProperties\";s:27:\"message, error, showMessage\";}s:7:\"length.\";a:1:{s:14:\"showProperties\";s:45:\"message, error, showMessage, minimum, maximum\";}s:9:\"lessthan.\";a:1:{s:14:\"showProperties\";s:36:\"message, error, showMessage, maximum\";}s:7:\"regexp.\";a:1:{s:14:\"showProperties\";s:39:\"message, error, showMessage, expression\";}s:9:\"required.\";a:1:{s:14:\"showProperties\";s:27:\"message, error, showMessage\";}s:4:\"uri.\";a:1:{s:14:\"showProperties\";s:27:\"message, error, showMessage\";}}}s:10:\"filtering.\";a:2:{s:11:\"showFilters\";s:123:\"alphabetic, alphanumeric, currency, digit, integer, lowercase, regexp, removexss, stripnewlines, titlecase, trim, uppercase\";s:8:\"filters.\";a:12:{s:11:\"alphabetic.\";a:1:{s:14:\"showProperties\";s:15:\"allowWhiteSpace\";}s:13:\"alphanumeric.\";a:1:{s:14:\"showProperties\";s:15:\"allowWhiteSpace\";}s:9:\"currency.\";a:1:{s:14:\"showProperties\";s:31:\"decimalPoint, thousandSeparator\";}s:6:\"digit.\";a:1:{s:14:\"showProperties\";s:0:\"\";}s:8:\"integer.\";a:1:{s:14:\"showProperties\";s:0:\"\";}s:10:\"lowercase.\";a:1:{s:14:\"showProperties\";s:0:\"\";}s:7:\"regexp.\";a:1:{s:14:\"showProperties\";s:10:\"expression\";}s:10:\"removexss.\";a:1:{s:14:\"showProperties\";s:0:\"\";}s:14:\"stripnewlines.\";a:1:{s:14:\"showProperties\";s:0:\"\";}s:10:\"titlecase.\";a:1:{s:14:\"showProperties\";s:0:\"\";}s:5:\"trim.\";a:1:{s:14:\"showProperties\";s:13:\"characterList\";}s:10:\"uppercase.\";a:1:{s:14:\"showProperties\";s:0:\"\";}}}}}s:5:\"form.\";a:2:{s:14:\"showAccordions\";s:44:\"behaviour, prefix, attributes, postProcessor\";s:11:\"accordions.\";a:1:{s:14:\"postProcessor.\";a:2:{s:18:\"showPostProcessors\";s:14:\"mail, redirect\";s:15:\"postProcessors.\";a:2:{s:5:\"mail.\";a:1:{s:14:\"showProperties\";s:36:\"recipientEmail, senderEmail, subject\";}s:9:\"redirect.\";a:1:{s:14:\"showProperties\";s:11:\"destination\";}}}}}}}s:9:\"elements.\";a:19:{s:5:\"form.\";a:1:{s:11:\"accordions.\";a:1:{s:11:\"attributes.\";a:1:{s:14:\"showProperties\";s:79:\"accept, action, dir, enctype, lang, method, novalidate, class, id, style, title\";}}}s:7:\"button.\";a:2:{s:14:\"showAccordions\";s:17:\"label, attributes\";s:11:\"accordions.\";a:1:{s:11:\"attributes.\";a:1:{s:14:\"showProperties\";s:22:\"name, value, class, id\";}}}s:9:\"checkbox.\";a:2:{s:14:\"showAccordions\";s:29:\"label, attributes, validation\";s:11:\"accordions.\";a:2:{s:11:\"attributes.\";a:1:{s:14:\"showProperties\";s:41:\"name, value, class, id, checked, required\";}s:11:\"validation.\";a:1:{s:9:\"showRules\";s:8:\"required\";}}}s:9:\"fieldset.\";a:2:{s:14:\"showAccordions\";s:18:\"legend, attributes\";s:11:\"accordions.\";a:1:{s:11:\"attributes.\";a:1:{s:14:\"showProperties\";s:9:\"class, id\";}}}s:11:\"fileupload.\";a:2:{s:14:\"showAccordions\";s:29:\"label, attributes, validation\";s:11:\"accordions.\";a:2:{s:11:\"attributes.\";a:1:{s:14:\"showProperties\";s:25:\"name, class, id, required\";}s:11:\"validation.\";a:1:{s:9:\"showRules\";s:60:\"required, fileallowedtypes, filemaximumsize, fileminimumsize\";}}}s:7:\"hidden.\";a:2:{s:14:\"showAccordions\";s:10:\"attributes\";s:11:\"accordions.\";a:1:{s:11:\"attributes.\";a:1:{s:14:\"showProperties\";s:11:\"name, value\";}}}s:9:\"password.\";a:2:{s:14:\"showAccordions\";s:29:\"label, attributes, validation\";s:11:\"accordions.\";a:2:{s:11:\"attributes.\";a:1:{s:14:\"showProperties\";s:52:\"name, placeholder, class, id, autocomplete, required\";}s:11:\"validation.\";a:1:{s:9:\"showRules\";s:16:\"required, equals\";}}}s:6:\"radio.\";a:2:{s:14:\"showAccordions\";s:29:\"label, attributes, validation\";s:11:\"accordions.\";a:2:{s:11:\"attributes.\";a:1:{s:14:\"showProperties\";s:41:\"name, value, class, id, checked, required\";}s:11:\"validation.\";a:1:{s:9:\"showRules\";s:8:\"required\";}}}s:6:\"reset.\";a:2:{s:14:\"showAccordions\";s:17:\"label, attributes\";s:11:\"accordions.\";a:1:{s:11:\"attributes.\";a:1:{s:14:\"showProperties\";s:14:\"value,class,id\";}}}s:7:\"select.\";a:2:{s:14:\"showAccordions\";s:38:\"label, attributes, options, validation\";s:11:\"accordions.\";a:2:{s:11:\"attributes.\";a:1:{s:14:\"showProperties\";s:41:\"name, size, class, id, multiple, required\";}s:11:\"validation.\";a:1:{s:9:\"showRules\";s:8:\"required\";}}}s:7:\"submit.\";a:2:{s:14:\"showAccordions\";s:17:\"label, attributes\";s:11:\"accordions.\";a:1:{s:11:\"attributes.\";a:1:{s:14:\"showProperties\";s:14:\"value,class,id\";}}}s:9:\"textarea.\";a:2:{s:14:\"showAccordions\";s:38:\"label, attributes, validation, filters\";s:11:\"accordions.\";a:3:{s:11:\"attributes.\";a:1:{s:14:\"showProperties\";s:56:\"name, placeholder, cols, rows, class, id, required, text\";}s:10:\"filtering.\";a:1:{s:11:\"showFilters\";s:86:\"alphabetic, alphanumeric, lowercase, regexp, stripnewlines, titlecase, trim, uppercase\";}s:11:\"validation.\";a:1:{s:9:\"showRules\";s:50:\"alphabetic, alphanumeric, length, regexp, required\";}}}s:9:\"textline.\";a:2:{s:14:\"showAccordions\";s:38:\"label, attributes, validation, filters\";s:11:\"accordions.\";a:3:{s:11:\"attributes.\";a:1:{s:14:\"showProperties\";s:58:\"name, placeholder, type, class, id, autocomplete, required\";}s:11:\"validation.\";a:1:{s:9:\"showRules\";s:144:\"alphabetic, alphanumeric, between, date, digit, email, equals, float, greaterthan, inarray, integer, ip, length, lessthan, regexp, required, uri\";}s:10:\"filtering.\";a:1:{s:11:\"showFilters\";s:97:\"alphabetic, alphanumeric, currency, digit, integer, lowercase, regexp, titlecase, trim, uppercase\";}}}s:5:\"name.\";a:1:{s:14:\"showAccordions\";s:15:\"legend, various\";}s:6:\"email.\";a:2:{s:14:\"showAccordions\";s:38:\"label, attributes, validation, filters\";s:11:\"accordions.\";a:3:{s:11:\"attributes.\";a:1:{s:14:\"showProperties\";s:58:\"name, placeholder, type, class, id, autocomplete, required\";}s:11:\"validation.\";a:1:{s:9:\"showRules\";s:144:\"alphabetic, alphanumeric, between, date, digit, email, equals, float, greaterthan, inarray, integer, ip, length, lessthan, regexp, required, uri\";}s:10:\"filtering.\";a:1:{s:11:\"showFilters\";s:97:\"alphabetic, alphanumeric, currency, digit, integer, lowercase, regexp, titlecase, trim, uppercase\";}}}s:14:\"checkboxgroup.\";a:2:{s:14:\"showAccordions\";s:36:\"legend, options, various, validation\";s:11:\"accordions.\";a:1:{s:11:\"validation.\";a:1:{s:9:\"showRules\";s:8:\"required\";}}}s:11:\"radiogroup.\";a:2:{s:14:\"showAccordions\";s:36:\"legend, options, various, validation\";s:11:\"accordions.\";a:1:{s:11:\"validation.\";a:1:{s:9:\"showRules\";s:8:\"required\";}}}s:7:\"header.\";a:1:{s:14:\"showAccordions\";s:7:\"various\";}s:10:\"textblock.\";a:1:{s:14:\"showAccordions\";s:7:\"various\";}}}}s:9:\"web_view.\";a:1:{s:19:\"previewFrameWidths.\";a:11:{s:5:\"1280.\";a:1:{s:5:\"label\";s:66:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:computer\";}s:5:\"1024.\";a:1:{s:5:\"label\";s:64:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:tablet\";}s:4:\"960.\";a:1:{s:5:\"label\";s:64:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:mobile\";}s:4:\"800.\";a:1:{s:5:\"label\";s:66:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:computer\";}s:4:\"768.\";a:1:{s:5:\"label\";s:64:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:tablet\";}s:4:\"600.\";a:1:{s:5:\"label\";s:64:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:tablet\";}s:4:\"640.\";a:1:{s:5:\"label\";s:64:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:mobile\";}s:4:\"480.\";a:1:{s:5:\"label\";s:64:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:mobile\";}s:4:\"400.\";a:1:{s:5:\"label\";s:64:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:mobile\";}s:4:\"360.\";a:1:{s:5:\"label\";s:64:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:mobile\";}s:4:\"300.\";a:1:{s:5:\"label\";s:64:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:mobile\";}}}}s:4:\"RTE.\";a:4:{s:8:\"default.\";a:18:{s:4:\"skin\";s:35:\"EXT:t3skin/rtehtmlarea/htmlarea.css\";s:3:\"FE.\";a:18:{s:4:\"skin\";s:35:\"EXT:t3skin/rtehtmlarea/htmlarea.css\";s:5:\"proc.\";a:15:{s:12:\"overruleMode\";s:6:\"ts_css\";s:21:\"dontConvBRtoParagraph\";s:1:\"1\";s:19:\"preserveDIVSections\";s:1:\"1\";s:16:\"allowTagsOutside\";s:69:\"address, article, aside, blockquote, footer, header, hr, nav, section\";s:9:\"allowTags\";s:387:\"a, abbr, acronym, address, article, aside, b, bdo, big, blockquote, br, caption, center, cite, code, col, colgroup, dd, del, dfn, dl, div, dt, em, font, footer,header, h1, h2, h3, h4, h5, h6, hr, i, img, ins, kbd, label, li, link, meta, nav, ol, p, pre, q, samp, sdfield, section, small,span, strike, strong, style, sub, sup, table, thead, tbody, tfoot, td, th, tr, title, tt, u, ul, var\";s:15:\"keepPDIVattribs\";s:67:\"id, title, dir, lang, xml:lang, itemscope, itemtype, itemprop,style\";s:26:\"transformBoldAndItalicTags\";s:1:\"1\";s:14:\"dontUndoHSC_db\";s:1:\"1\";s:11:\"dontHSC_rte\";s:1:\"1\";s:18:\"entryHTMLparser_db\";s:1:\"1\";s:19:\"entryHTMLparser_db.\";a:5:{s:9:\"allowTags\";s:387:\"a, abbr, acronym, address, article, aside, b, bdo, big, blockquote, br, caption, center, cite, code, col, colgroup, dd, del, dfn, dl, div, dt, em, font, footer,header, h1, h2, h3, h4, h5, h6, hr, i, img, ins, kbd, label, li, link, meta, nav, ol, p, pre, q, samp, sdfield, section, small,span, strike, strong, style, sub, sup, table, thead, tbody, tfoot, td, th, tr, title, tt, u, ul, var\";s:16:\"htmlSpecialChars\";s:1:\"0\";s:5:\"tags.\";a:28:{s:4:\"img.\";a:2:{s:14:\"allowedAttribs\";s:1:\"0\";s:15:\"rmTagIfNoAttrib\";s:1:\"1\";}s:5:\"span.\";a:3:{s:10:\"fixAttrib.\";a:1:{s:6:\"style.\";a:0:{}}s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";s:15:\"rmTagIfNoAttrib\";s:1:\"1\";}s:2:\"p.\";a:2:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";s:10:\"fixAttrib.\";a:1:{s:6:\"align.\";a:1:{s:5:\"unset\";s:1:\"1\";}}}s:3:\"hr.\";a:1:{s:14:\"allowedAttribs\";s:11:\"class,style\";}s:2:\"b.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:4:\"bdo.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:4:\"big.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:11:\"blockquote.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:5:\"cite.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:5:\"code.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:4:\"del.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:4:\"dfn.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:3:\"em.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:2:\"i.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:4:\"ins.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:4:\"kbd.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:6:\"label.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:2:\"q.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:5:\"samp.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:6:\"small.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:7:\"strike.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:7:\"strong.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:4:\"sub.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:4:\"sup.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:3:\"tt.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:2:\"u.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:4:\"var.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:4:\"div.\";a:2:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";s:10:\"fixAttrib.\";a:1:{s:6:\"align.\";a:1:{s:5:\"unset\";s:1:\"1\";}}}}s:10:\"removeTags\";s:63:\"center, font, link, meta, o:p, sdfield, strike, style, title, u\";s:18:\"keepNonMatchedTags\";s:7:\"protect\";}s:14:\"HTMLparser_db.\";a:1:{s:8:\"noAttrib\";s:2:\"br\";}s:17:\"exitHTMLparser_db\";s:1:\"1\";s:18:\"exitHTMLparser_db.\";a:2:{s:18:\"keepNonMatchedTags\";s:1:\"1\";s:16:\"htmlSpecialChars\";s:1:\"0\";}s:14:\"allowedClasses\";s:301:\"external-link, external-link-new-window, internal-link, internal-link-new-window, download, mail,align-left, align-center, align-right, align-justify,csc-frame-frame1, csc-frame-frame2,component-items, action-items,component-items-ordered, action-items-ordered,important, name-of-person, detail,indent\";}s:15:\"enableWordClean\";s:1:\"1\";s:16:\"removeTrailingBR\";s:1:\"1\";s:14:\"removeComments\";s:1:\"1\";s:10:\"removeTags\";s:37:\"center, font, o:p, sdfield, strike, u\";s:21:\"removeTagsAndContents\";s:32:\"link, meta, script, style, title\";s:11:\"showButtons\";s:493:\"blockstylelabel, blockstyle, textstylelabel, textstyle,formatblock, bold, italic, subscript, superscript,orderedlist, unorderedlist, outdent, indent, textindicator,insertcharacter, link, table, findreplace, chMode, removeformat, undo, redo, about,toggleborders, tableproperties,rowproperties, rowinsertabove, rowinsertunder, rowdelete, rowsplit,columninsertbefore, columninsertafter, columndelete, columnsplit,cellproperties, cellinsertbefore, cellinsertafter, celldelete, cellsplit, cellmerge\";s:23:\"keepButtonGroupTogether\";s:1:\"1\";s:13:\"showStatusBar\";s:1:\"0\";s:8:\"buttons.\";a:7:{s:12:\"formatblock.\";a:1:{s:11:\"removeItems\";s:11:\"pre,address\";}s:11:\"blockstyle.\";a:1:{s:5:\"tags.\";a:3:{s:4:\"div.\";a:1:{s:14:\"allowedClasses\";s:72:\"align-left, align-center, align-right,csc-frame-frame1, csc-frame-frame2\";}s:6:\"table.\";a:1:{s:14:\"allowedClasses\";s:34:\"csc-frame-frame1, csc-frame-frame2\";}s:3:\"td.\";a:1:{s:14:\"allowedClasses\";s:37:\"align-left, align-center, align-right\";}}}s:10:\"textstyle.\";a:1:{s:5:\"tags.\";a:1:{s:5:\"span.\";a:1:{s:14:\"allowedClasses\";s:33:\"important, name-of-person, detail\";}}}s:5:\"link.\";a:5:{s:11:\"properties.\";a:1:{s:6:\"class.\";a:1:{s:14:\"allowedClasses\";s:96:\"external-link, external-link-new-window, internal-link, internal-link-new-window, download, mail\";}}s:5:\"page.\";a:1:{s:11:\"properties.\";a:1:{s:6:\"class.\";a:1:{s:7:\"default\";s:13:\"internal-link\";}}}s:4:\"url.\";a:1:{s:11:\"properties.\";a:1:{s:6:\"class.\";a:1:{s:7:\"default\";s:24:\"external-link-new-window\";}}}s:5:\"file.\";a:1:{s:11:\"properties.\";a:1:{s:6:\"class.\";a:1:{s:7:\"default\";s:8:\"download\";}}}s:5:\"mail.\";a:1:{s:11:\"properties.\";a:1:{s:6:\"class.\";a:1:{s:7:\"default\";s:4:\"mail\";}}}}s:14:\"toggleborders.\";a:1:{s:18:\"setOnTableCreation\";s:1:\"1\";}s:5:\"bold.\";a:1:{s:6:\"hotKey\";s:1:\"b\";}s:7:\"italic.\";a:1:{s:6:\"hotKey\";s:1:\"i\";}}s:41:\"disableAlignmentFieldsetInTableOperations\";s:1:\"1\";s:39:\"disableSpacingFieldsetInTableOperations\";s:1:\"1\";s:37:\"disableColorFieldsetInTableOperations\";s:1:\"1\";s:38:\"disableLayoutFieldsetInTableOperations\";s:1:\"1\";s:39:\"disableBordersFieldsetInTableOperations\";s:1:\"1\";s:7:\"schema.\";a:1:{s:8:\"sources.\";a:1:{s:9:\"schemaOrg\";s:63:\"EXT:rtehtmlarea/extensions/MicrodataSchema/res/schemaOrgAll.rdf\";}}s:11:\"hideButtons\";s:202:\"chMode, blockstyle, textstyle, underline, strikethrough, subscript, superscript, lefttoright, righttoleft, left, center, right, justifyfull, table, inserttag, findreplace, removeformat, copy, cut, paste\";}s:5:\"proc.\";a:15:{s:12:\"overruleMode\";s:6:\"ts_css\";s:21:\"dontConvBRtoParagraph\";s:1:\"1\";s:19:\"preserveDIVSections\";s:1:\"1\";s:16:\"allowTagsOutside\";s:69:\"address, article, aside, blockquote, footer, header, hr, nav, section\";s:9:\"allowTags\";s:387:\"a, abbr, acronym, address, article, aside, b, bdo, big, blockquote, br, caption, center, cite, code, col, colgroup, dd, del, dfn, dl, div, dt, em, font, footer,header, h1, h2, h3, h4, h5, h6, hr, i, img, ins, kbd, label, li, link, meta, nav, ol, p, pre, q, samp, sdfield, section, small,span, strike, strong, style, sub, sup, table, thead, tbody, tfoot, td, th, tr, title, tt, u, ul, var\";s:15:\"keepPDIVattribs\";s:67:\"id, title, dir, lang, xml:lang, itemscope, itemtype, itemprop,style\";s:26:\"transformBoldAndItalicTags\";s:1:\"1\";s:14:\"dontUndoHSC_db\";s:1:\"1\";s:11:\"dontHSC_rte\";s:1:\"1\";s:18:\"entryHTMLparser_db\";s:1:\"1\";s:19:\"entryHTMLparser_db.\";a:5:{s:9:\"allowTags\";s:387:\"a, abbr, acronym, address, article, aside, b, bdo, big, blockquote, br, caption, center, cite, code, col, colgroup, dd, del, dfn, dl, div, dt, em, font, footer,header, h1, h2, h3, h4, h5, h6, hr, i, img, ins, kbd, label, li, link, meta, nav, ol, p, pre, q, samp, sdfield, section, small,span, strike, strong, style, sub, sup, table, thead, tbody, tfoot, td, th, tr, title, tt, u, ul, var\";s:16:\"htmlSpecialChars\";s:1:\"0\";s:5:\"tags.\";a:28:{s:4:\"img.\";a:2:{s:14:\"allowedAttribs\";s:1:\"0\";s:15:\"rmTagIfNoAttrib\";s:1:\"1\";}s:5:\"span.\";a:3:{s:10:\"fixAttrib.\";a:1:{s:6:\"style.\";a:0:{}}s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";s:15:\"rmTagIfNoAttrib\";s:1:\"1\";}s:2:\"p.\";a:2:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";s:10:\"fixAttrib.\";a:1:{s:6:\"align.\";a:1:{s:5:\"unset\";s:1:\"1\";}}}s:3:\"hr.\";a:1:{s:14:\"allowedAttribs\";s:11:\"class,style\";}s:2:\"b.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:4:\"bdo.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:4:\"big.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:11:\"blockquote.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:5:\"cite.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:5:\"code.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:4:\"del.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:4:\"dfn.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:3:\"em.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:2:\"i.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:4:\"ins.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:4:\"kbd.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:6:\"label.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:2:\"q.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:5:\"samp.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:6:\"small.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:7:\"strike.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:7:\"strong.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:4:\"sub.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:4:\"sup.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:3:\"tt.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:2:\"u.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:4:\"var.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:4:\"div.\";a:2:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";s:10:\"fixAttrib.\";a:1:{s:6:\"align.\";a:1:{s:5:\"unset\";s:1:\"1\";}}}}s:10:\"removeTags\";s:63:\"center, font, link, meta, o:p, sdfield, strike, style, title, u\";s:18:\"keepNonMatchedTags\";s:7:\"protect\";}s:14:\"HTMLparser_db.\";a:1:{s:8:\"noAttrib\";s:2:\"br\";}s:17:\"exitHTMLparser_db\";s:1:\"1\";s:18:\"exitHTMLparser_db.\";a:2:{s:18:\"keepNonMatchedTags\";s:1:\"1\";s:16:\"htmlSpecialChars\";s:1:\"0\";}s:14:\"allowedClasses\";s:301:\"external-link, external-link-new-window, internal-link, internal-link-new-window, download, mail,align-left, align-center, align-right, align-justify,csc-frame-frame1, csc-frame-frame2,component-items, action-items,component-items-ordered, action-items-ordered,important, name-of-person, detail,indent\";}s:15:\"enableWordClean\";s:1:\"1\";s:16:\"removeTrailingBR\";s:1:\"1\";s:14:\"removeComments\";s:1:\"1\";s:10:\"removeTags\";s:37:\"center, font, o:p, sdfield, strike, u\";s:21:\"removeTagsAndContents\";s:32:\"link, meta, script, style, title\";s:11:\"showButtons\";s:493:\"blockstylelabel, blockstyle, textstylelabel, textstyle,formatblock, bold, italic, subscript, superscript,orderedlist, unorderedlist, outdent, indent, textindicator,insertcharacter, link, table, findreplace, chMode, removeformat, undo, redo, about,toggleborders, tableproperties,rowproperties, rowinsertabove, rowinsertunder, rowdelete, rowsplit,columninsertbefore, columninsertafter, columndelete, columnsplit,cellproperties, cellinsertbefore, cellinsertafter, celldelete, cellsplit, cellmerge\";s:23:\"keepButtonGroupTogether\";s:1:\"1\";s:13:\"showStatusBar\";s:1:\"1\";s:8:\"buttons.\";a:7:{s:12:\"formatblock.\";a:1:{s:11:\"removeItems\";s:11:\"pre,address\";}s:11:\"blockstyle.\";a:1:{s:5:\"tags.\";a:3:{s:4:\"div.\";a:1:{s:14:\"allowedClasses\";s:72:\"align-left, align-center, align-right,csc-frame-frame1, csc-frame-frame2\";}s:6:\"table.\";a:1:{s:14:\"allowedClasses\";s:34:\"csc-frame-frame1, csc-frame-frame2\";}s:3:\"td.\";a:1:{s:14:\"allowedClasses\";s:37:\"align-left, align-center, align-right\";}}}s:10:\"textstyle.\";a:1:{s:5:\"tags.\";a:1:{s:5:\"span.\";a:1:{s:14:\"allowedClasses\";s:33:\"important, name-of-person, detail\";}}}s:5:\"link.\";a:5:{s:11:\"properties.\";a:1:{s:6:\"class.\";a:1:{s:14:\"allowedClasses\";s:96:\"external-link, external-link-new-window, internal-link, internal-link-new-window, download, mail\";}}s:5:\"page.\";a:1:{s:11:\"properties.\";a:1:{s:6:\"class.\";a:1:{s:7:\"default\";s:13:\"internal-link\";}}}s:4:\"url.\";a:1:{s:11:\"properties.\";a:1:{s:6:\"class.\";a:1:{s:7:\"default\";s:24:\"external-link-new-window\";}}}s:5:\"file.\";a:1:{s:11:\"properties.\";a:1:{s:6:\"class.\";a:1:{s:7:\"default\";s:8:\"download\";}}}s:5:\"mail.\";a:1:{s:11:\"properties.\";a:1:{s:6:\"class.\";a:1:{s:7:\"default\";s:4:\"mail\";}}}}s:14:\"toggleborders.\";a:1:{s:18:\"setOnTableCreation\";s:1:\"1\";}s:5:\"bold.\";a:1:{s:6:\"hotKey\";s:1:\"b\";}s:7:\"italic.\";a:1:{s:6:\"hotKey\";s:1:\"i\";}}s:41:\"disableAlignmentFieldsetInTableOperations\";s:1:\"1\";s:39:\"disableSpacingFieldsetInTableOperations\";s:1:\"1\";s:37:\"disableColorFieldsetInTableOperations\";s:1:\"1\";s:38:\"disableLayoutFieldsetInTableOperations\";s:1:\"1\";s:39:\"disableBordersFieldsetInTableOperations\";s:1:\"1\";s:7:\"schema.\";a:1:{s:8:\"sources.\";a:1:{s:9:\"schemaOrg\";s:63:\"EXT:rtehtmlarea/extensions/MicrodataSchema/res/schemaOrgAll.rdf\";}}}s:7:\"config.\";a:1:{s:11:\"tt_content.\";a:1:{s:9:\"bodytext.\";a:2:{s:5:\"proc.\";a:1:{s:12:\"overruleMode\";s:6:\"ts_css\";}s:6:\"types.\";a:2:{s:5:\"text.\";a:1:{s:5:\"proc.\";a:1:{s:12:\"overruleMode\";s:6:\"ts_css\";}}s:8:\"textpic.\";a:1:{s:5:\"proc.\";a:1:{s:12:\"overruleMode\";s:6:\"ts_css\";}}}}}}s:8:\"classes.\";a:12:{s:11:\"align-left.\";a:2:{s:4:\"name\";s:81:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_tooltips.xlf:justifyleft\";s:5:\"value\";s:17:\"text-align: left;\";}s:13:\"align-center.\";a:2:{s:4:\"name\";s:83:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_tooltips.xlf:justifycenter\";s:5:\"value\";s:19:\"text-align: center;\";}s:12:\"align-right.\";a:2:{s:4:\"name\";s:82:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_tooltips.xlf:justifyright\";s:5:\"value\";s:18:\"text-align: right;\";}s:17:\"csc-frame-frame1.\";a:2:{s:4:\"name\";s:84:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_contentcss.xlf:frame-frame1\";s:5:\"value\";s:53:\"background-color: #EDEBF1; border: 1px solid #333333;\";}s:17:\"csc-frame-frame2.\";a:2:{s:4:\"name\";s:84:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_contentcss.xlf:frame-frame2\";s:5:\"value\";s:53:\"background-color: #F5FFAA; border: 1px solid #333333;\";}s:10:\"important.\";a:2:{s:4:\"name\";s:81:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_contentcss.xlf:important\";s:5:\"value\";s:15:\"color: #8A0020;\";}s:15:\"name-of-person.\";a:2:{s:4:\"name\";s:86:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_contentcss.xlf:name-of-person\";s:5:\"value\";s:15:\"color: #10007B;\";}s:7:\"detail.\";a:2:{s:4:\"name\";s:78:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_contentcss.xlf:detail\";s:5:\"value\";s:15:\"color: #186900;\";}s:16:\"component-items.\";a:2:{s:4:\"name\";s:87:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_contentcss.xlf:component-items\";s:5:\"value\";s:15:\"color: #186900;\";}s:13:\"action-items.\";a:2:{s:4:\"name\";s:84:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_contentcss.xlf:action-items\";s:5:\"value\";s:15:\"color: #8A0020;\";}s:24:\"component-items-ordered.\";a:2:{s:4:\"name\";s:87:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_contentcss.xlf:component-items\";s:5:\"value\";s:15:\"color: #186900;\";}s:21:\"action-items-ordered.\";a:2:{s:4:\"name\";s:84:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_contentcss.xlf:action-items\";s:5:\"value\";s:15:\"color: #8A0020;\";}}s:14:\"classesAnchor.\";a:6:{s:13:\"externalLink.\";a:3:{s:5:\"class\";s:13:\"external-link\";s:4:\"type\";s:3:\"url\";s:9:\"titleText\";s:103:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_accessibilityicons.xlf:external_link_titleText\";}s:24:\"externalLinkInNewWindow.\";a:3:{s:5:\"class\";s:24:\"external-link-new-window\";s:4:\"type\";s:3:\"url\";s:9:\"titleText\";s:114:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_accessibilityicons.xlf:external_link_new_window_titleText\";}s:13:\"internalLink.\";a:3:{s:5:\"class\";s:13:\"internal-link\";s:4:\"type\";s:4:\"page\";s:9:\"titleText\";s:103:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_accessibilityicons.xlf:internal_link_titleText\";}s:24:\"internalLinkInNewWindow.\";a:3:{s:5:\"class\";s:24:\"internal-link-new-window\";s:4:\"type\";s:4:\"page\";s:9:\"titleText\";s:114:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_accessibilityicons.xlf:internal_link_new_window_titleText\";}s:9:\"download.\";a:3:{s:5:\"class\";s:8:\"download\";s:4:\"type\";s:4:\"file\";s:9:\"titleText\";s:98:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_accessibilityicons.xlf:download_titleText\";}s:5:\"mail.\";a:3:{s:5:\"class\";s:4:\"mail\";s:4:\"type\";s:4:\"mail\";s:9:\"titleText\";s:94:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_accessibilityicons.xlf:mail_titleText\";}}}s:8:\"TCEFORM.\";a:1:{s:11:\"tt_content.\";a:1:{s:12:\"imageorient.\";a:1:{s:6:\"types.\";a:1:{s:6:\"image.\";a:1:{s:11:\"removeItems\";s:18:\"8,9,10,17,18,25,26\";}}}}}s:8:\"TCEMAIN.\";a:1:{s:12:\"linkHandler.\";a:5:{s:5:\"page.\";a:2:{s:7:\"handler\";s:48:\"TYPO3\\CMS\\Recordlist\\LinkHandler\\PageLinkHandler\";s:5:\"label\";s:44:\"LLL:EXT:lang/locallang_browse_links.xlf:page\";}s:5:\"file.\";a:4:{s:7:\"handler\";s:48:\"TYPO3\\CMS\\Recordlist\\LinkHandler\\FileLinkHandler\";s:5:\"label\";s:44:\"LLL:EXT:lang/locallang_browse_links.xlf:file\";s:12:\"displayAfter\";s:4:\"page\";s:9:\"scanAfter\";s:4:\"page\";}s:7:\"folder.\";a:4:{s:7:\"handler\";s:50:\"TYPO3\\CMS\\Recordlist\\LinkHandler\\FolderLinkHandler\";s:5:\"label\";s:46:\"LLL:EXT:lang/locallang_browse_links.xlf:folder\";s:12:\"displayAfter\";s:4:\"file\";s:9:\"scanAfter\";s:4:\"file\";}s:4:\"url.\";a:4:{s:7:\"handler\";s:47:\"TYPO3\\CMS\\Recordlist\\LinkHandler\\UrlLinkHandler\";s:5:\"label\";s:46:\"LLL:EXT:lang/locallang_browse_links.xlf:extUrl\";s:12:\"displayAfter\";s:6:\"folder\";s:9:\"scanAfter\";s:4:\"mail\";}s:5:\"mail.\";a:3:{s:7:\"handler\";s:48:\"TYPO3\\CMS\\Recordlist\\LinkHandler\\MailLinkHandler\";s:5:\"label\";s:45:\"LLL:EXT:lang/locallang_browse_links.xlf:email\";s:12:\"displayAfter\";s:3:\"url\";}}}}s:8:\"sections\";a:0:{}s:5:\"match\";a:0:{}}i:1;s:32:\"af77a071e813ca440f81f545dbe1e5d0\";}'),
(3,	'4429166a5789f153f84eafc5658ba06a',	2145909600,	'a:2:{i:0;a:3:{s:8:\"TSconfig\";a:4:{s:4:\"mod.\";a:3:{s:9:\"web_list.\";a:4:{s:28:\"enableDisplayBigControlPanel\";s:10:\"selectable\";s:15:\"enableClipBoard\";s:10:\"selectable\";s:22:\"enableLocalizationView\";s:10:\"selectable\";s:18:\"tableDisplayOrder.\";a:11:{s:9:\"be_users.\";a:1:{s:5:\"after\";s:9:\"be_groups\";}s:15:\"sys_filemounts.\";a:1:{s:5:\"after\";s:8:\"be_users\";}s:17:\"sys_file_storage.\";a:1:{s:5:\"after\";s:14:\"sys_filemounts\";}s:13:\"sys_language.\";a:1:{s:5:\"after\";s:16:\"sys_file_storage\";}s:23:\"pages_language_overlay.\";a:1:{s:6:\"before\";s:5:\"pages\";}s:9:\"fe_users.\";a:2:{s:5:\"after\";s:9:\"fe_groups\";s:6:\"before\";s:5:\"pages\";}s:13:\"sys_template.\";a:1:{s:5:\"after\";s:5:\"pages\";}s:15:\"backend_layout.\";a:1:{s:5:\"after\";s:5:\"pages\";}s:11:\"sys_domain.\";a:1:{s:5:\"after\";s:12:\"sys_template\";}s:11:\"tt_content.\";a:1:{s:5:\"after\";s:33:\"pages,backend_layout,sys_template\";}s:13:\"sys_category.\";a:1:{s:5:\"after\";s:10:\"tt_content\";}}}s:8:\"wizards.\";a:3:{s:10:\"newRecord.\";a:1:{s:6:\"pages.\";a:1:{s:5:\"show.\";a:3:{s:10:\"pageInside\";s:1:\"1\";s:9:\"pageAfter\";s:1:\"1\";s:18:\"pageSelectPosition\";s:1:\"1\";}}}s:18:\"newContentElement.\";a:1:{s:12:\"wizardItems.\";a:4:{s:7:\"common.\";a:3:{s:6:\"header\";s:81:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common\";s:9:\"elements.\";a:6:{s:7:\"header.\";a:4:{s:14:\"iconIdentifier\";s:14:\"content-header\";s:5:\"title\";s:98:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_headerOnly_title\";s:11:\"description\";s:104:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_headerOnly_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:6:\"header\";}}s:5:\"text.\";a:4:{s:14:\"iconIdentifier\";s:12:\"content-text\";s:5:\"title\";s:99:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_regularText_title\";s:11:\"description\";s:105:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_regularText_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:4:\"text\";}}s:8:\"textpic.\";a:4:{s:14:\"iconIdentifier\";s:15:\"content-textpic\";s:5:\"title\";s:97:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_textImage_title\";s:11:\"description\";s:103:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_textImage_description\";s:21:\"tt_content_defValues.\";a:2:{s:5:\"CType\";s:7:\"textpic\";s:11:\"imageorient\";s:2:\"17\";}}s:6:\"image.\";a:4:{s:14:\"iconIdentifier\";s:13:\"content-image\";s:5:\"title\";s:98:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_imagesOnly_title\";s:11:\"description\";s:104:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_imagesOnly_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:5:\"image\";}}s:8:\"bullets.\";a:4:{s:14:\"iconIdentifier\";s:15:\"content-bullets\";s:5:\"title\";s:98:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_bulletList_title\";s:11:\"description\";s:104:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_bulletList_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:7:\"bullets\";}}s:6:\"table.\";a:4:{s:14:\"iconIdentifier\";s:13:\"content-table\";s:5:\"title\";s:93:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_table_title\";s:11:\"description\";s:99:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_table_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:5:\"table\";}}}s:4:\"show\";s:39:\"header,text,textpic,image,bullets,table\";}s:8:\"special.\";a:3:{s:6:\"header\";s:82:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special\";s:9:\"elements.\";a:5:{s:8:\"uploads.\";a:4:{s:14:\"iconIdentifier\";s:23:\"content-special-uploads\";s:5:\"title\";s:98:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special_filelinks_title\";s:11:\"description\";s:104:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special_filelinks_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:7:\"uploads\";}}s:5:\"menu.\";a:4:{s:14:\"iconIdentifier\";s:20:\"content-special-menu\";s:5:\"title\";s:94:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special_menus_title\";s:11:\"description\";s:100:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special_menus_description\";s:21:\"tt_content_defValues.\";a:2:{s:5:\"CType\";s:4:\"menu\";s:9:\"menu_type\";s:1:\"0\";}}s:5:\"html.\";a:4:{s:14:\"iconIdentifier\";s:20:\"content-special-html\";s:5:\"title\";s:98:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special_plainHTML_title\";s:11:\"description\";s:104:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special_plainHTML_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:4:\"html\";}}s:4:\"div.\";a:4:{s:14:\"iconIdentifier\";s:19:\"content-special-div\";s:5:\"title\";s:96:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special_divider_title\";s:11:\"description\";s:102:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special_divider_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:3:\"div\";}}s:9:\"shortcut.\";a:4:{s:14:\"iconIdentifier\";s:24:\"content-special-shortcut\";s:5:\"title\";s:97:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special_shortcut_title\";s:11:\"description\";s:103:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special_shortcut_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:8:\"shortcut\";}}}s:4:\"show\";s:30:\"uploads,menu,html,div,shortcut\";}s:6:\"forms.\";a:3:{s:6:\"header\";s:80:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:forms\";s:9:\"elements.\";a:2:{s:6:\"login.\";a:4:{s:14:\"iconIdentifier\";s:22:\"content-elements-login\";s:5:\"title\";s:92:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:forms_login_title\";s:11:\"description\";s:98:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:forms_login_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:5:\"login\";}}s:9:\"mailform.\";a:4:{s:14:\"iconIdentifier\";s:25:\"content-elements-mailform\";s:5:\"title\";s:91:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:forms_mail_title\";s:11:\"description\";s:97:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:forms_mail_description\";s:21:\"tt_content_defValues.\";a:2:{s:5:\"CType\";s:8:\"mailform\";s:8:\"bodytext\";s:60:\"enctype = multipart/form-data\nmethod = post\nprefix = tx_form\";}}}s:4:\"show\";s:14:\"login,mailform\";}s:8:\"plugins.\";a:3:{s:6:\"header\";s:82:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:plugins\";s:9:\"elements.\";a:1:{s:8:\"general.\";a:4:{s:14:\"iconIdentifier\";s:14:\"content-plugin\";s:5:\"title\";s:96:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:plugins_general_title\";s:11:\"description\";s:102:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:plugins_general_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:4:\"list\";}}}s:4:\"show\";s:1:\"*\";}}}s:5:\"form.\";a:2:{s:9:\"defaults.\";a:2:{s:8:\"showTabs\";s:23:\"elements, options, form\";s:5:\"tabs.\";a:3:{s:9:\"elements.\";a:2:{s:14:\"showAccordions\";s:26:\"basic, predefined, content\";s:11:\"accordions.\";a:3:{s:6:\"basic.\";a:1:{s:11:\"showButtons\";s:106:\"textline, textarea, checkbox, radio, select, fileupload, hidden, password, fieldset, submit, reset, button\";}s:11:\"predefined.\";a:1:{s:11:\"showButtons\";s:38:\"name, email, checkboxgroup, radiogroup\";}s:8:\"content.\";a:1:{s:11:\"showButtons\";s:17:\"header, textblock\";}}}s:8:\"options.\";a:2:{s:14:\"showAccordions\";s:64:\"legend, label, attributes, options, validation, filters, various\";s:11:\"accordions.\";a:4:{s:6:\"label.\";a:1:{s:14:\"showProperties\";s:5:\"label\";}s:11:\"attributes.\";a:1:{s:14:\"showProperties\";s:490:\"accept, accept-charset, accesskey, action, alt, autocomplete, autofocus, checked, class, cols, contenteditable, contextmenu, dir, draggable, dropzone, disabled, enctype, hidden, height, id, inputmode, label, lang, list, max, maxlength, method, min, minlength, multiple, name, novalidate, pattern, placeholder, readonly, required, rows, selected, selectionDirection, selectionEnd, selectionStart, size, spellcheck, src, step, style, tabindex, text, title, translate, type, value, width, wrap\";}s:11:\"validation.\";a:2:{s:9:\"showRules\";s:196:\"alphabetic, alphanumeric, between, date, digit, email, equals, fileallowedtypes, filemaximumsize, fileminimumsize, float, greaterthan, inarray, integer, ip, length, lessthan, regexp, required, uri\";s:6:\"rules.\";a:20:{s:11:\"alphabetic.\";a:1:{s:14:\"showProperties\";s:44:\"message, error, showMessage, allowWhiteSpace\";}s:13:\"alphanumeric.\";a:1:{s:14:\"showProperties\";s:44:\"message, error, showMessage, allowWhiteSpace\";}s:8:\"between.\";a:1:{s:14:\"showProperties\";s:56:\"message, error, showMessage, minimum, maximum, inclusive\";}s:5:\"date.\";a:1:{s:14:\"showProperties\";s:35:\"message, error, showMessage, format\";}s:6:\"digit.\";a:1:{s:14:\"showProperties\";s:27:\"message, error, showMessage\";}s:6:\"email.\";a:1:{s:14:\"showProperties\";s:27:\"message, error, showMessage\";}s:7:\"equals.\";a:1:{s:14:\"showProperties\";s:34:\"message, error, showMessage, field\";}s:17:\"fileallowedtypes.\";a:1:{s:14:\"showProperties\";s:34:\"message, error, showMessage, types\";}s:16:\"filemaximumsize.\";a:1:{s:14:\"showProperties\";s:36:\"message, error, showMessage, maximum\";}s:16:\"fileminimumsize.\";a:1:{s:14:\"showProperties\";s:36:\"message, error, showMessage, minimum\";}s:6:\"float.\";a:1:{s:14:\"showProperties\";s:27:\"message, error, showMessage\";}s:12:\"greaterthan.\";a:1:{s:14:\"showProperties\";s:36:\"message, error, showMessage, minimum\";}s:8:\"inarray.\";a:1:{s:14:\"showProperties\";s:42:\"message, error, showMessage, array, strict\";}s:8:\"integer.\";a:1:{s:14:\"showProperties\";s:27:\"message, error, showMessage\";}s:3:\"ip.\";a:1:{s:14:\"showProperties\";s:27:\"message, error, showMessage\";}s:7:\"length.\";a:1:{s:14:\"showProperties\";s:45:\"message, error, showMessage, minimum, maximum\";}s:9:\"lessthan.\";a:1:{s:14:\"showProperties\";s:36:\"message, error, showMessage, maximum\";}s:7:\"regexp.\";a:1:{s:14:\"showProperties\";s:39:\"message, error, showMessage, expression\";}s:9:\"required.\";a:1:{s:14:\"showProperties\";s:27:\"message, error, showMessage\";}s:4:\"uri.\";a:1:{s:14:\"showProperties\";s:27:\"message, error, showMessage\";}}}s:10:\"filtering.\";a:2:{s:11:\"showFilters\";s:123:\"alphabetic, alphanumeric, currency, digit, integer, lowercase, regexp, removexss, stripnewlines, titlecase, trim, uppercase\";s:8:\"filters.\";a:12:{s:11:\"alphabetic.\";a:1:{s:14:\"showProperties\";s:15:\"allowWhiteSpace\";}s:13:\"alphanumeric.\";a:1:{s:14:\"showProperties\";s:15:\"allowWhiteSpace\";}s:9:\"currency.\";a:1:{s:14:\"showProperties\";s:31:\"decimalPoint, thousandSeparator\";}s:6:\"digit.\";a:1:{s:14:\"showProperties\";s:0:\"\";}s:8:\"integer.\";a:1:{s:14:\"showProperties\";s:0:\"\";}s:10:\"lowercase.\";a:1:{s:14:\"showProperties\";s:0:\"\";}s:7:\"regexp.\";a:1:{s:14:\"showProperties\";s:10:\"expression\";}s:10:\"removexss.\";a:1:{s:14:\"showProperties\";s:0:\"\";}s:14:\"stripnewlines.\";a:1:{s:14:\"showProperties\";s:0:\"\";}s:10:\"titlecase.\";a:1:{s:14:\"showProperties\";s:0:\"\";}s:5:\"trim.\";a:1:{s:14:\"showProperties\";s:13:\"characterList\";}s:10:\"uppercase.\";a:1:{s:14:\"showProperties\";s:0:\"\";}}}}}s:5:\"form.\";a:2:{s:14:\"showAccordions\";s:44:\"behaviour, prefix, attributes, postProcessor\";s:11:\"accordions.\";a:1:{s:14:\"postProcessor.\";a:2:{s:18:\"showPostProcessors\";s:14:\"mail, redirect\";s:15:\"postProcessors.\";a:2:{s:5:\"mail.\";a:1:{s:14:\"showProperties\";s:36:\"recipientEmail, senderEmail, subject\";}s:9:\"redirect.\";a:1:{s:14:\"showProperties\";s:11:\"destination\";}}}}}}}s:9:\"elements.\";a:19:{s:5:\"form.\";a:1:{s:11:\"accordions.\";a:1:{s:11:\"attributes.\";a:1:{s:14:\"showProperties\";s:79:\"accept, action, dir, enctype, lang, method, novalidate, class, id, style, title\";}}}s:7:\"button.\";a:2:{s:14:\"showAccordions\";s:17:\"label, attributes\";s:11:\"accordions.\";a:1:{s:11:\"attributes.\";a:1:{s:14:\"showProperties\";s:22:\"name, value, class, id\";}}}s:9:\"checkbox.\";a:2:{s:14:\"showAccordions\";s:29:\"label, attributes, validation\";s:11:\"accordions.\";a:2:{s:11:\"attributes.\";a:1:{s:14:\"showProperties\";s:41:\"name, value, class, id, checked, required\";}s:11:\"validation.\";a:1:{s:9:\"showRules\";s:8:\"required\";}}}s:9:\"fieldset.\";a:2:{s:14:\"showAccordions\";s:18:\"legend, attributes\";s:11:\"accordions.\";a:1:{s:11:\"attributes.\";a:1:{s:14:\"showProperties\";s:9:\"class, id\";}}}s:11:\"fileupload.\";a:2:{s:14:\"showAccordions\";s:29:\"label, attributes, validation\";s:11:\"accordions.\";a:2:{s:11:\"attributes.\";a:1:{s:14:\"showProperties\";s:25:\"name, class, id, required\";}s:11:\"validation.\";a:1:{s:9:\"showRules\";s:60:\"required, fileallowedtypes, filemaximumsize, fileminimumsize\";}}}s:7:\"hidden.\";a:2:{s:14:\"showAccordions\";s:10:\"attributes\";s:11:\"accordions.\";a:1:{s:11:\"attributes.\";a:1:{s:14:\"showProperties\";s:11:\"name, value\";}}}s:9:\"password.\";a:2:{s:14:\"showAccordions\";s:29:\"label, attributes, validation\";s:11:\"accordions.\";a:2:{s:11:\"attributes.\";a:1:{s:14:\"showProperties\";s:52:\"name, placeholder, class, id, autocomplete, required\";}s:11:\"validation.\";a:1:{s:9:\"showRules\";s:16:\"required, equals\";}}}s:6:\"radio.\";a:2:{s:14:\"showAccordions\";s:29:\"label, attributes, validation\";s:11:\"accordions.\";a:2:{s:11:\"attributes.\";a:1:{s:14:\"showProperties\";s:41:\"name, value, class, id, checked, required\";}s:11:\"validation.\";a:1:{s:9:\"showRules\";s:8:\"required\";}}}s:6:\"reset.\";a:2:{s:14:\"showAccordions\";s:17:\"label, attributes\";s:11:\"accordions.\";a:1:{s:11:\"attributes.\";a:1:{s:14:\"showProperties\";s:14:\"value,class,id\";}}}s:7:\"select.\";a:2:{s:14:\"showAccordions\";s:38:\"label, attributes, options, validation\";s:11:\"accordions.\";a:2:{s:11:\"attributes.\";a:1:{s:14:\"showProperties\";s:41:\"name, size, class, id, multiple, required\";}s:11:\"validation.\";a:1:{s:9:\"showRules\";s:8:\"required\";}}}s:7:\"submit.\";a:2:{s:14:\"showAccordions\";s:17:\"label, attributes\";s:11:\"accordions.\";a:1:{s:11:\"attributes.\";a:1:{s:14:\"showProperties\";s:14:\"value,class,id\";}}}s:9:\"textarea.\";a:2:{s:14:\"showAccordions\";s:38:\"label, attributes, validation, filters\";s:11:\"accordions.\";a:3:{s:11:\"attributes.\";a:1:{s:14:\"showProperties\";s:56:\"name, placeholder, cols, rows, class, id, required, text\";}s:10:\"filtering.\";a:1:{s:11:\"showFilters\";s:86:\"alphabetic, alphanumeric, lowercase, regexp, stripnewlines, titlecase, trim, uppercase\";}s:11:\"validation.\";a:1:{s:9:\"showRules\";s:50:\"alphabetic, alphanumeric, length, regexp, required\";}}}s:9:\"textline.\";a:2:{s:14:\"showAccordions\";s:38:\"label, attributes, validation, filters\";s:11:\"accordions.\";a:3:{s:11:\"attributes.\";a:1:{s:14:\"showProperties\";s:58:\"name, placeholder, type, class, id, autocomplete, required\";}s:11:\"validation.\";a:1:{s:9:\"showRules\";s:144:\"alphabetic, alphanumeric, between, date, digit, email, equals, float, greaterthan, inarray, integer, ip, length, lessthan, regexp, required, uri\";}s:10:\"filtering.\";a:1:{s:11:\"showFilters\";s:97:\"alphabetic, alphanumeric, currency, digit, integer, lowercase, regexp, titlecase, trim, uppercase\";}}}s:5:\"name.\";a:1:{s:14:\"showAccordions\";s:15:\"legend, various\";}s:6:\"email.\";a:2:{s:14:\"showAccordions\";s:38:\"label, attributes, validation, filters\";s:11:\"accordions.\";a:3:{s:11:\"attributes.\";a:1:{s:14:\"showProperties\";s:58:\"name, placeholder, type, class, id, autocomplete, required\";}s:11:\"validation.\";a:1:{s:9:\"showRules\";s:144:\"alphabetic, alphanumeric, between, date, digit, email, equals, float, greaterthan, inarray, integer, ip, length, lessthan, regexp, required, uri\";}s:10:\"filtering.\";a:1:{s:11:\"showFilters\";s:97:\"alphabetic, alphanumeric, currency, digit, integer, lowercase, regexp, titlecase, trim, uppercase\";}}}s:14:\"checkboxgroup.\";a:2:{s:14:\"showAccordions\";s:36:\"legend, options, various, validation\";s:11:\"accordions.\";a:1:{s:11:\"validation.\";a:1:{s:9:\"showRules\";s:8:\"required\";}}}s:11:\"radiogroup.\";a:2:{s:14:\"showAccordions\";s:36:\"legend, options, various, validation\";s:11:\"accordions.\";a:1:{s:11:\"validation.\";a:1:{s:9:\"showRules\";s:8:\"required\";}}}s:7:\"header.\";a:1:{s:14:\"showAccordions\";s:7:\"various\";}s:10:\"textblock.\";a:1:{s:14:\"showAccordions\";s:7:\"various\";}}}}s:9:\"web_view.\";a:1:{s:19:\"previewFrameWidths.\";a:11:{s:5:\"1280.\";a:1:{s:5:\"label\";s:66:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:computer\";}s:5:\"1024.\";a:1:{s:5:\"label\";s:64:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:tablet\";}s:4:\"960.\";a:1:{s:5:\"label\";s:64:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:mobile\";}s:4:\"800.\";a:1:{s:5:\"label\";s:66:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:computer\";}s:4:\"768.\";a:1:{s:5:\"label\";s:64:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:tablet\";}s:4:\"600.\";a:1:{s:5:\"label\";s:64:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:tablet\";}s:4:\"640.\";a:1:{s:5:\"label\";s:64:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:mobile\";}s:4:\"480.\";a:1:{s:5:\"label\";s:64:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:mobile\";}s:4:\"400.\";a:1:{s:5:\"label\";s:64:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:mobile\";}s:4:\"360.\";a:1:{s:5:\"label\";s:64:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:mobile\";}s:4:\"300.\";a:1:{s:5:\"label\";s:64:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:mobile\";}}}}s:4:\"RTE.\";a:4:{s:8:\"default.\";a:18:{s:4:\"skin\";s:35:\"EXT:t3skin/rtehtmlarea/htmlarea.css\";s:3:\"FE.\";a:18:{s:4:\"skin\";s:35:\"EXT:t3skin/rtehtmlarea/htmlarea.css\";s:5:\"proc.\";a:15:{s:12:\"overruleMode\";s:6:\"ts_css\";s:21:\"dontConvBRtoParagraph\";s:1:\"1\";s:19:\"preserveDIVSections\";s:1:\"1\";s:16:\"allowTagsOutside\";s:69:\"address, article, aside, blockquote, footer, header, hr, nav, section\";s:9:\"allowTags\";s:387:\"a, abbr, acronym, address, article, aside, b, bdo, big, blockquote, br, caption, center, cite, code, col, colgroup, dd, del, dfn, dl, div, dt, em, font, footer,header, h1, h2, h3, h4, h5, h6, hr, i, img, ins, kbd, label, li, link, meta, nav, ol, p, pre, q, samp, sdfield, section, small,span, strike, strong, style, sub, sup, table, thead, tbody, tfoot, td, th, tr, title, tt, u, ul, var\";s:15:\"keepPDIVattribs\";s:67:\"id, title, dir, lang, xml:lang, itemscope, itemtype, itemprop,style\";s:26:\"transformBoldAndItalicTags\";s:1:\"1\";s:14:\"dontUndoHSC_db\";s:1:\"1\";s:11:\"dontHSC_rte\";s:1:\"1\";s:18:\"entryHTMLparser_db\";s:1:\"1\";s:19:\"entryHTMLparser_db.\";a:5:{s:9:\"allowTags\";s:387:\"a, abbr, acronym, address, article, aside, b, bdo, big, blockquote, br, caption, center, cite, code, col, colgroup, dd, del, dfn, dl, div, dt, em, font, footer,header, h1, h2, h3, h4, h5, h6, hr, i, img, ins, kbd, label, li, link, meta, nav, ol, p, pre, q, samp, sdfield, section, small,span, strike, strong, style, sub, sup, table, thead, tbody, tfoot, td, th, tr, title, tt, u, ul, var\";s:16:\"htmlSpecialChars\";s:1:\"0\";s:5:\"tags.\";a:28:{s:4:\"img.\";a:2:{s:14:\"allowedAttribs\";s:1:\"0\";s:15:\"rmTagIfNoAttrib\";s:1:\"1\";}s:5:\"span.\";a:3:{s:10:\"fixAttrib.\";a:1:{s:6:\"style.\";a:0:{}}s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";s:15:\"rmTagIfNoAttrib\";s:1:\"1\";}s:2:\"p.\";a:2:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";s:10:\"fixAttrib.\";a:1:{s:6:\"align.\";a:1:{s:5:\"unset\";s:1:\"1\";}}}s:3:\"hr.\";a:1:{s:14:\"allowedAttribs\";s:11:\"class,style\";}s:2:\"b.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:4:\"bdo.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:4:\"big.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:11:\"blockquote.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:5:\"cite.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:5:\"code.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:4:\"del.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:4:\"dfn.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:3:\"em.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:2:\"i.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:4:\"ins.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:4:\"kbd.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:6:\"label.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:2:\"q.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:5:\"samp.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:6:\"small.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:7:\"strike.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:7:\"strong.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:4:\"sub.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:4:\"sup.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:3:\"tt.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:2:\"u.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:4:\"var.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:4:\"div.\";a:2:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";s:10:\"fixAttrib.\";a:1:{s:6:\"align.\";a:1:{s:5:\"unset\";s:1:\"1\";}}}}s:10:\"removeTags\";s:63:\"center, font, link, meta, o:p, sdfield, strike, style, title, u\";s:18:\"keepNonMatchedTags\";s:7:\"protect\";}s:14:\"HTMLparser_db.\";a:1:{s:8:\"noAttrib\";s:2:\"br\";}s:17:\"exitHTMLparser_db\";s:1:\"1\";s:18:\"exitHTMLparser_db.\";a:2:{s:18:\"keepNonMatchedTags\";s:1:\"1\";s:16:\"htmlSpecialChars\";s:1:\"0\";}s:14:\"allowedClasses\";s:301:\"external-link, external-link-new-window, internal-link, internal-link-new-window, download, mail,align-left, align-center, align-right, align-justify,csc-frame-frame1, csc-frame-frame2,component-items, action-items,component-items-ordered, action-items-ordered,important, name-of-person, detail,indent\";}s:15:\"enableWordClean\";s:1:\"1\";s:16:\"removeTrailingBR\";s:1:\"1\";s:14:\"removeComments\";s:1:\"1\";s:10:\"removeTags\";s:37:\"center, font, o:p, sdfield, strike, u\";s:21:\"removeTagsAndContents\";s:32:\"link, meta, script, style, title\";s:11:\"showButtons\";s:493:\"blockstylelabel, blockstyle, textstylelabel, textstyle,formatblock, bold, italic, subscript, superscript,orderedlist, unorderedlist, outdent, indent, textindicator,insertcharacter, link, table, findreplace, chMode, removeformat, undo, redo, about,toggleborders, tableproperties,rowproperties, rowinsertabove, rowinsertunder, rowdelete, rowsplit,columninsertbefore, columninsertafter, columndelete, columnsplit,cellproperties, cellinsertbefore, cellinsertafter, celldelete, cellsplit, cellmerge\";s:23:\"keepButtonGroupTogether\";s:1:\"1\";s:13:\"showStatusBar\";s:1:\"0\";s:8:\"buttons.\";a:7:{s:12:\"formatblock.\";a:1:{s:11:\"removeItems\";s:11:\"pre,address\";}s:11:\"blockstyle.\";a:1:{s:5:\"tags.\";a:3:{s:4:\"div.\";a:1:{s:14:\"allowedClasses\";s:72:\"align-left, align-center, align-right,csc-frame-frame1, csc-frame-frame2\";}s:6:\"table.\";a:1:{s:14:\"allowedClasses\";s:34:\"csc-frame-frame1, csc-frame-frame2\";}s:3:\"td.\";a:1:{s:14:\"allowedClasses\";s:37:\"align-left, align-center, align-right\";}}}s:10:\"textstyle.\";a:1:{s:5:\"tags.\";a:1:{s:5:\"span.\";a:1:{s:14:\"allowedClasses\";s:33:\"important, name-of-person, detail\";}}}s:5:\"link.\";a:5:{s:11:\"properties.\";a:1:{s:6:\"class.\";a:1:{s:14:\"allowedClasses\";s:96:\"external-link, external-link-new-window, internal-link, internal-link-new-window, download, mail\";}}s:5:\"page.\";a:1:{s:11:\"properties.\";a:1:{s:6:\"class.\";a:1:{s:7:\"default\";s:13:\"internal-link\";}}}s:4:\"url.\";a:1:{s:11:\"properties.\";a:1:{s:6:\"class.\";a:1:{s:7:\"default\";s:24:\"external-link-new-window\";}}}s:5:\"file.\";a:1:{s:11:\"properties.\";a:1:{s:6:\"class.\";a:1:{s:7:\"default\";s:8:\"download\";}}}s:5:\"mail.\";a:1:{s:11:\"properties.\";a:1:{s:6:\"class.\";a:1:{s:7:\"default\";s:4:\"mail\";}}}}s:14:\"toggleborders.\";a:1:{s:18:\"setOnTableCreation\";s:1:\"1\";}s:5:\"bold.\";a:1:{s:6:\"hotKey\";s:1:\"b\";}s:7:\"italic.\";a:1:{s:6:\"hotKey\";s:1:\"i\";}}s:41:\"disableAlignmentFieldsetInTableOperations\";s:1:\"1\";s:39:\"disableSpacingFieldsetInTableOperations\";s:1:\"1\";s:37:\"disableColorFieldsetInTableOperations\";s:1:\"1\";s:38:\"disableLayoutFieldsetInTableOperations\";s:1:\"1\";s:39:\"disableBordersFieldsetInTableOperations\";s:1:\"1\";s:7:\"schema.\";a:1:{s:8:\"sources.\";a:1:{s:9:\"schemaOrg\";s:63:\"EXT:rtehtmlarea/extensions/MicrodataSchema/res/schemaOrgAll.rdf\";}}s:11:\"hideButtons\";s:202:\"chMode, blockstyle, textstyle, underline, strikethrough, subscript, superscript, lefttoright, righttoleft, left, center, right, justifyfull, table, inserttag, findreplace, removeformat, copy, cut, paste\";}s:5:\"proc.\";a:15:{s:12:\"overruleMode\";s:6:\"ts_css\";s:21:\"dontConvBRtoParagraph\";s:1:\"1\";s:19:\"preserveDIVSections\";s:1:\"1\";s:16:\"allowTagsOutside\";s:69:\"address, article, aside, blockquote, footer, header, hr, nav, section\";s:9:\"allowTags\";s:387:\"a, abbr, acronym, address, article, aside, b, bdo, big, blockquote, br, caption, center, cite, code, col, colgroup, dd, del, dfn, dl, div, dt, em, font, footer,header, h1, h2, h3, h4, h5, h6, hr, i, img, ins, kbd, label, li, link, meta, nav, ol, p, pre, q, samp, sdfield, section, small,span, strike, strong, style, sub, sup, table, thead, tbody, tfoot, td, th, tr, title, tt, u, ul, var\";s:15:\"keepPDIVattribs\";s:67:\"id, title, dir, lang, xml:lang, itemscope, itemtype, itemprop,style\";s:26:\"transformBoldAndItalicTags\";s:1:\"1\";s:14:\"dontUndoHSC_db\";s:1:\"1\";s:11:\"dontHSC_rte\";s:1:\"1\";s:18:\"entryHTMLparser_db\";s:1:\"1\";s:19:\"entryHTMLparser_db.\";a:5:{s:9:\"allowTags\";s:387:\"a, abbr, acronym, address, article, aside, b, bdo, big, blockquote, br, caption, center, cite, code, col, colgroup, dd, del, dfn, dl, div, dt, em, font, footer,header, h1, h2, h3, h4, h5, h6, hr, i, img, ins, kbd, label, li, link, meta, nav, ol, p, pre, q, samp, sdfield, section, small,span, strike, strong, style, sub, sup, table, thead, tbody, tfoot, td, th, tr, title, tt, u, ul, var\";s:16:\"htmlSpecialChars\";s:1:\"0\";s:5:\"tags.\";a:28:{s:4:\"img.\";a:2:{s:14:\"allowedAttribs\";s:1:\"0\";s:15:\"rmTagIfNoAttrib\";s:1:\"1\";}s:5:\"span.\";a:3:{s:10:\"fixAttrib.\";a:1:{s:6:\"style.\";a:0:{}}s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";s:15:\"rmTagIfNoAttrib\";s:1:\"1\";}s:2:\"p.\";a:2:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";s:10:\"fixAttrib.\";a:1:{s:6:\"align.\";a:1:{s:5:\"unset\";s:1:\"1\";}}}s:3:\"hr.\";a:1:{s:14:\"allowedAttribs\";s:11:\"class,style\";}s:2:\"b.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:4:\"bdo.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:4:\"big.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:11:\"blockquote.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:5:\"cite.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:5:\"code.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:4:\"del.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:4:\"dfn.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:3:\"em.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:2:\"i.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:4:\"ins.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:4:\"kbd.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:6:\"label.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:2:\"q.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:5:\"samp.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:6:\"small.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:7:\"strike.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:7:\"strong.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:4:\"sub.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:4:\"sup.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:3:\"tt.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:2:\"u.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:4:\"var.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:4:\"div.\";a:2:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";s:10:\"fixAttrib.\";a:1:{s:6:\"align.\";a:1:{s:5:\"unset\";s:1:\"1\";}}}}s:10:\"removeTags\";s:63:\"center, font, link, meta, o:p, sdfield, strike, style, title, u\";s:18:\"keepNonMatchedTags\";s:7:\"protect\";}s:14:\"HTMLparser_db.\";a:1:{s:8:\"noAttrib\";s:2:\"br\";}s:17:\"exitHTMLparser_db\";s:1:\"1\";s:18:\"exitHTMLparser_db.\";a:2:{s:18:\"keepNonMatchedTags\";s:1:\"1\";s:16:\"htmlSpecialChars\";s:1:\"0\";}s:14:\"allowedClasses\";s:301:\"external-link, external-link-new-window, internal-link, internal-link-new-window, download, mail,align-left, align-center, align-right, align-justify,csc-frame-frame1, csc-frame-frame2,component-items, action-items,component-items-ordered, action-items-ordered,important, name-of-person, detail,indent\";}s:15:\"enableWordClean\";s:1:\"1\";s:16:\"removeTrailingBR\";s:1:\"1\";s:14:\"removeComments\";s:1:\"1\";s:10:\"removeTags\";s:37:\"center, font, o:p, sdfield, strike, u\";s:21:\"removeTagsAndContents\";s:32:\"link, meta, script, style, title\";s:11:\"showButtons\";s:493:\"blockstylelabel, blockstyle, textstylelabel, textstyle,formatblock, bold, italic, subscript, superscript,orderedlist, unorderedlist, outdent, indent, textindicator,insertcharacter, link, table, findreplace, chMode, removeformat, undo, redo, about,toggleborders, tableproperties,rowproperties, rowinsertabove, rowinsertunder, rowdelete, rowsplit,columninsertbefore, columninsertafter, columndelete, columnsplit,cellproperties, cellinsertbefore, cellinsertafter, celldelete, cellsplit, cellmerge\";s:23:\"keepButtonGroupTogether\";s:1:\"1\";s:13:\"showStatusBar\";s:1:\"1\";s:8:\"buttons.\";a:7:{s:12:\"formatblock.\";a:1:{s:11:\"removeItems\";s:11:\"pre,address\";}s:11:\"blockstyle.\";a:1:{s:5:\"tags.\";a:3:{s:4:\"div.\";a:1:{s:14:\"allowedClasses\";s:72:\"align-left, align-center, align-right,csc-frame-frame1, csc-frame-frame2\";}s:6:\"table.\";a:1:{s:14:\"allowedClasses\";s:34:\"csc-frame-frame1, csc-frame-frame2\";}s:3:\"td.\";a:1:{s:14:\"allowedClasses\";s:37:\"align-left, align-center, align-right\";}}}s:10:\"textstyle.\";a:1:{s:5:\"tags.\";a:1:{s:5:\"span.\";a:1:{s:14:\"allowedClasses\";s:33:\"important, name-of-person, detail\";}}}s:5:\"link.\";a:5:{s:11:\"properties.\";a:1:{s:6:\"class.\";a:1:{s:14:\"allowedClasses\";s:96:\"external-link, external-link-new-window, internal-link, internal-link-new-window, download, mail\";}}s:5:\"page.\";a:1:{s:11:\"properties.\";a:1:{s:6:\"class.\";a:1:{s:7:\"default\";s:13:\"internal-link\";}}}s:4:\"url.\";a:1:{s:11:\"properties.\";a:1:{s:6:\"class.\";a:1:{s:7:\"default\";s:24:\"external-link-new-window\";}}}s:5:\"file.\";a:1:{s:11:\"properties.\";a:1:{s:6:\"class.\";a:1:{s:7:\"default\";s:8:\"download\";}}}s:5:\"mail.\";a:1:{s:11:\"properties.\";a:1:{s:6:\"class.\";a:1:{s:7:\"default\";s:4:\"mail\";}}}}s:14:\"toggleborders.\";a:1:{s:18:\"setOnTableCreation\";s:1:\"1\";}s:5:\"bold.\";a:1:{s:6:\"hotKey\";s:1:\"b\";}s:7:\"italic.\";a:1:{s:6:\"hotKey\";s:1:\"i\";}}s:41:\"disableAlignmentFieldsetInTableOperations\";s:1:\"1\";s:39:\"disableSpacingFieldsetInTableOperations\";s:1:\"1\";s:37:\"disableColorFieldsetInTableOperations\";s:1:\"1\";s:38:\"disableLayoutFieldsetInTableOperations\";s:1:\"1\";s:39:\"disableBordersFieldsetInTableOperations\";s:1:\"1\";s:7:\"schema.\";a:1:{s:8:\"sources.\";a:1:{s:9:\"schemaOrg\";s:63:\"EXT:rtehtmlarea/extensions/MicrodataSchema/res/schemaOrgAll.rdf\";}}}s:7:\"config.\";a:1:{s:11:\"tt_content.\";a:1:{s:9:\"bodytext.\";a:2:{s:5:\"proc.\";a:1:{s:12:\"overruleMode\";s:6:\"ts_css\";}s:6:\"types.\";a:2:{s:5:\"text.\";a:1:{s:5:\"proc.\";a:1:{s:12:\"overruleMode\";s:6:\"ts_css\";}}s:8:\"textpic.\";a:1:{s:5:\"proc.\";a:1:{s:12:\"overruleMode\";s:6:\"ts_css\";}}}}}}s:8:\"classes.\";a:12:{s:11:\"align-left.\";a:2:{s:4:\"name\";s:81:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_tooltips.xlf:justifyleft\";s:5:\"value\";s:17:\"text-align: left;\";}s:13:\"align-center.\";a:2:{s:4:\"name\";s:83:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_tooltips.xlf:justifycenter\";s:5:\"value\";s:19:\"text-align: center;\";}s:12:\"align-right.\";a:2:{s:4:\"name\";s:82:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_tooltips.xlf:justifyright\";s:5:\"value\";s:18:\"text-align: right;\";}s:17:\"csc-frame-frame1.\";a:2:{s:4:\"name\";s:84:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_contentcss.xlf:frame-frame1\";s:5:\"value\";s:53:\"background-color: #EDEBF1; border: 1px solid #333333;\";}s:17:\"csc-frame-frame2.\";a:2:{s:4:\"name\";s:84:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_contentcss.xlf:frame-frame2\";s:5:\"value\";s:53:\"background-color: #F5FFAA; border: 1px solid #333333;\";}s:10:\"important.\";a:2:{s:4:\"name\";s:81:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_contentcss.xlf:important\";s:5:\"value\";s:15:\"color: #8A0020;\";}s:15:\"name-of-person.\";a:2:{s:4:\"name\";s:86:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_contentcss.xlf:name-of-person\";s:5:\"value\";s:15:\"color: #10007B;\";}s:7:\"detail.\";a:2:{s:4:\"name\";s:78:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_contentcss.xlf:detail\";s:5:\"value\";s:15:\"color: #186900;\";}s:16:\"component-items.\";a:2:{s:4:\"name\";s:87:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_contentcss.xlf:component-items\";s:5:\"value\";s:15:\"color: #186900;\";}s:13:\"action-items.\";a:2:{s:4:\"name\";s:84:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_contentcss.xlf:action-items\";s:5:\"value\";s:15:\"color: #8A0020;\";}s:24:\"component-items-ordered.\";a:2:{s:4:\"name\";s:87:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_contentcss.xlf:component-items\";s:5:\"value\";s:15:\"color: #186900;\";}s:21:\"action-items-ordered.\";a:2:{s:4:\"name\";s:84:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_contentcss.xlf:action-items\";s:5:\"value\";s:15:\"color: #8A0020;\";}}s:14:\"classesAnchor.\";a:6:{s:13:\"externalLink.\";a:3:{s:5:\"class\";s:13:\"external-link\";s:4:\"type\";s:3:\"url\";s:9:\"titleText\";s:103:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_accessibilityicons.xlf:external_link_titleText\";}s:24:\"externalLinkInNewWindow.\";a:3:{s:5:\"class\";s:24:\"external-link-new-window\";s:4:\"type\";s:3:\"url\";s:9:\"titleText\";s:114:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_accessibilityicons.xlf:external_link_new_window_titleText\";}s:13:\"internalLink.\";a:3:{s:5:\"class\";s:13:\"internal-link\";s:4:\"type\";s:4:\"page\";s:9:\"titleText\";s:103:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_accessibilityicons.xlf:internal_link_titleText\";}s:24:\"internalLinkInNewWindow.\";a:3:{s:5:\"class\";s:24:\"internal-link-new-window\";s:4:\"type\";s:4:\"page\";s:9:\"titleText\";s:114:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_accessibilityicons.xlf:internal_link_new_window_titleText\";}s:9:\"download.\";a:3:{s:5:\"class\";s:8:\"download\";s:4:\"type\";s:4:\"file\";s:9:\"titleText\";s:98:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_accessibilityicons.xlf:download_titleText\";}s:5:\"mail.\";a:3:{s:5:\"class\";s:4:\"mail\";s:4:\"type\";s:4:\"mail\";s:9:\"titleText\";s:94:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_accessibilityicons.xlf:mail_titleText\";}}}s:8:\"TCEFORM.\";a:1:{s:11:\"tt_content.\";a:1:{s:12:\"imageorient.\";a:1:{s:6:\"types.\";a:1:{s:6:\"image.\";a:1:{s:11:\"removeItems\";s:18:\"8,9,10,17,18,25,26\";}}}}}s:8:\"TCEMAIN.\";a:1:{s:12:\"linkHandler.\";a:5:{s:5:\"page.\";a:2:{s:7:\"handler\";s:48:\"TYPO3\\CMS\\Recordlist\\LinkHandler\\PageLinkHandler\";s:5:\"label\";s:44:\"LLL:EXT:lang/locallang_browse_links.xlf:page\";}s:5:\"file.\";a:4:{s:7:\"handler\";s:48:\"TYPO3\\CMS\\Recordlist\\LinkHandler\\FileLinkHandler\";s:5:\"label\";s:44:\"LLL:EXT:lang/locallang_browse_links.xlf:file\";s:12:\"displayAfter\";s:4:\"page\";s:9:\"scanAfter\";s:4:\"page\";}s:7:\"folder.\";a:4:{s:7:\"handler\";s:50:\"TYPO3\\CMS\\Recordlist\\LinkHandler\\FolderLinkHandler\";s:5:\"label\";s:46:\"LLL:EXT:lang/locallang_browse_links.xlf:folder\";s:12:\"displayAfter\";s:4:\"file\";s:9:\"scanAfter\";s:4:\"file\";}s:4:\"url.\";a:4:{s:7:\"handler\";s:47:\"TYPO3\\CMS\\Recordlist\\LinkHandler\\UrlLinkHandler\";s:5:\"label\";s:46:\"LLL:EXT:lang/locallang_browse_links.xlf:extUrl\";s:12:\"displayAfter\";s:6:\"folder\";s:9:\"scanAfter\";s:4:\"mail\";}s:5:\"mail.\";a:3:{s:7:\"handler\";s:48:\"TYPO3\\CMS\\Recordlist\\LinkHandler\\MailLinkHandler\";s:5:\"label\";s:45:\"LLL:EXT:lang/locallang_browse_links.xlf:email\";s:12:\"displayAfter\";s:3:\"url\";}}}}s:8:\"sections\";a:0:{}s:5:\"match\";a:0:{}}i:1;s:32:\"af77a071e813ca440f81f545dbe1e5d0\";}'),
(4,	'22c5a4a1a25b772c4f4d04b90e2963b1',	2145909600,	'a:1:{s:4:\"ROOT\";a:2:{s:4:\"type\";s:5:\"array\";s:2:\"el\";a:3:{s:8:\"basePath\";a:1:{s:8:\"TCEforms\";a:2:{s:5:\"label\";s:69:\"LLL:EXT:lang/locallang_mod_file_list.xlf:localDriverFlexform_basePath\";s:6:\"config\";a:4:{s:4:\"type\";s:5:\"input\";s:11:\"placeholder\";s:81:\"LLL:EXT:lang/locallang_mod_file_list.xlf:localDriverFlexform_basePath_placeholder\";s:4:\"eval\";s:8:\"required\";s:4:\"size\";s:2:\"30\";}}}s:8:\"pathType\";a:1:{s:8:\"TCEforms\";a:2:{s:5:\"label\";s:69:\"LLL:EXT:lang/locallang_mod_file_list.xlf:localDriverFlexform_pathType\";s:6:\"config\";a:3:{s:4:\"type\";s:5:\"radio\";s:5:\"items\";a:2:{i:0;a:2:{i:0;s:78:\"LLL:EXT:lang/locallang_mod_file_list.xlf:localDriverFlexform_pathType_relative\";i:1;s:8:\"relative\";}i:1;a:2:{i:0;s:78:\"LLL:EXT:lang/locallang_mod_file_list.xlf:localDriverFlexform_pathType_absolute\";i:1;s:8:\"absolute\";}}s:7:\"default\";s:8:\"relative\";}}}s:13:\"caseSensitive\";a:1:{s:8:\"TCEforms\";a:2:{s:5:\"label\";s:74:\"LLL:EXT:lang/locallang_mod_file_list.xlf:localDriverFlexform_caseSensitive\";s:6:\"config\";a:2:{s:4:\"type\";s:5:\"check\";s:7:\"default\";s:1:\"1\";}}}}}}'),
(5,	'5b4f1286d06897f0fafa9b561dffa44a',	2145909600,	'a:1:{s:4:\"ROOT\";a:2:{s:4:\"type\";s:5:\"array\";s:2:\"el\";a:1:{s:8:\"xmlTitle\";a:1:{s:8:\"TCEforms\";a:2:{s:5:\"label\";s:10:\"The Title:\";s:6:\"config\";a:2:{s:4:\"type\";s:5:\"input\";s:4:\"size\";s:2:\"48\";}}}}}}'),
(6,	'891ce143ee0ee00a1a89da0893a80103',	2145909600,	'a:1:{s:6:\"sheets\";a:2:{s:4:\"sDEF\";a:1:{s:4:\"ROOT\";a:3:{s:8:\"TCEforms\";a:1:{s:10:\"sheetTitle\";s:111:\"LLL:EXT:css_styled_content/Resources/Private/Language/locallang_db.xlf:tt_content.tx_cssstyledcontent_acctables\";}s:4:\"type\";s:5:\"array\";s:2:\"el\";a:6:{s:17:\"acctables_caption\";a:1:{s:8:\"TCEforms\";a:2:{s:5:\"label\";s:119:\"LLL:EXT:css_styled_content/Resources/Private/Language/locallang_db.xlf:tt_content.tx_cssstyledcontent_acctables_caption\";s:6:\"config\";a:2:{s:4:\"type\";s:5:\"input\";s:4:\"size\";s:2:\"33\";}}}s:17:\"acctables_summary\";a:1:{s:8:\"TCEforms\";a:2:{s:5:\"label\";s:119:\"LLL:EXT:css_styled_content/Resources/Private/Language/locallang_db.xlf:tt_content.tx_cssstyledcontent_acctables_summary\";s:6:\"config\";a:2:{s:4:\"type\";s:5:\"input\";s:4:\"size\";s:2:\"33\";}}}s:15:\"acctables_tfoot\";a:1:{s:8:\"TCEforms\";a:2:{s:5:\"label\";s:117:\"LLL:EXT:css_styled_content/Resources/Private/Language/locallang_db.xlf:tt_content.tx_cssstyledcontent_acctables_tfoot\";s:6:\"config\";a:2:{s:4:\"type\";s:5:\"check\";s:5:\"items\";a:1:{i:1;a:2:{i:0;s:46:\"LLL:EXT:lang/locallang_core.xlf:labels.enabled\";i:1;s:1:\"1\";}}}}}s:19:\"acctables_headerpos\";a:1:{s:8:\"TCEforms\";a:2:{s:5:\"label\";s:121:\"LLL:EXT:css_styled_content/Resources/Private/Language/locallang_db.xlf:tt_content.tx_cssstyledcontent_acctables_headerpos\";s:6:\"config\";a:5:{s:4:\"type\";s:6:\"select\";s:5:\"items\";a:3:{i:0;a:2:{i:0;s:125:\"LLL:EXT:css_styled_content/Resources/Private/Language/locallang_db.xlf:tt_content.tx_cssstyledcontent_acctables_headerpos.I.0\";i:1;s:0:\"\";}i:1;a:2:{i:0;s:125:\"LLL:EXT:css_styled_content/Resources/Private/Language/locallang_db.xlf:tt_content.tx_cssstyledcontent_acctables_headerpos.I.1\";i:1;s:3:\"top\";}i:2;a:2:{i:0;s:125:\"LLL:EXT:css_styled_content/Resources/Private/Language/locallang_db.xlf:tt_content.tx_cssstyledcontent_acctables_headerpos.I.2\";i:1;s:4:\"left\";}}s:8:\"minitems\";s:1:\"0\";s:8:\"maxitems\";s:1:\"1\";s:4:\"size\";s:1:\"1\";}}}s:18:\"acctables_nostyles\";a:1:{s:8:\"TCEforms\";a:2:{s:5:\"label\";s:120:\"LLL:EXT:css_styled_content/Resources/Private/Language/locallang_db.xlf:tt_content.tx_cssstyledcontent_acctables_nostyles\";s:6:\"config\";a:1:{s:4:\"type\";s:5:\"check\";}}}s:20:\"acctables_tableclass\";a:1:{s:8:\"TCEforms\";a:2:{s:5:\"label\";s:122:\"LLL:EXT:css_styled_content/Resources/Private/Language/locallang_db.xlf:tt_content.tx_cssstyledcontent_acctables_tableclass\";s:6:\"config\";a:3:{s:4:\"type\";s:5:\"input\";s:4:\"size\";s:2:\"33\";s:4:\"eval\";s:4:\"trim\";}}}}}}s:9:\"s_parsing\";a:1:{s:4:\"ROOT\";a:3:{s:8:\"TCEforms\";a:1:{s:10:\"sheetTitle\";s:114:\"LLL:EXT:css_styled_content/Resources/Private/Language/locallang_db.xlf:tt_content.tx_cssstyledcontent_tableparsing\";}s:4:\"type\";s:5:\"array\";s:2:\"el\";a:2:{s:18:\"tableparsing_quote\";a:1:{s:8:\"TCEforms\";a:2:{s:5:\"label\";s:120:\"LLL:EXT:css_styled_content/Resources/Private/Language/locallang_db.xlf:tt_content.tx_cssstyledcontent_tableparsing_quote\";s:6:\"config\";a:5:{s:4:\"type\";s:6:\"select\";s:5:\"items\";a:3:{i:0;a:2:{i:0;s:125:\"LLL:EXT:css_styled_content/Resources/Private/Language/locallang_db.xlf:tt_content.tx_cssstyledcontent_tableparsing_quote_none\";i:1;s:0:\"\";}i:1;a:2:{i:0;s:127:\"LLL:EXT:css_styled_content/Resources/Private/Language/locallang_db.xlf:tt_content.tx_cssstyledcontent_tableparsing_quote_single\";i:1;s:2:\"39\";}i:2;a:2:{i:0;s:127:\"LLL:EXT:css_styled_content/Resources/Private/Language/locallang_db.xlf:tt_content.tx_cssstyledcontent_tableparsing_quote_double\";i:1;s:2:\"34\";}}s:8:\"minitems\";s:1:\"0\";s:8:\"maxitems\";s:1:\"1\";s:4:\"size\";s:1:\"1\";}}}s:22:\"tableparsing_delimiter\";a:1:{s:8:\"TCEforms\";a:2:{s:5:\"label\";s:124:\"LLL:EXT:css_styled_content/Resources/Private/Language/locallang_db.xlf:tt_content.tx_cssstyledcontent_tableparsing_delimiter\";s:6:\"config\";a:5:{s:4:\"type\";s:6:\"select\";s:5:\"items\";a:5:{i:0;a:2:{i:0;s:129:\"LLL:EXT:css_styled_content/Resources/Private/Language/locallang_db.xlf:tt_content.tx_cssstyledcontent_tableparsing_delimiter_pipe\";i:1;s:3:\"124\";}i:1;a:2:{i:0;s:134:\"LLL:EXT:css_styled_content/Resources/Private/Language/locallang_db.xlf:tt_content.tx_cssstyledcontent_tableparsing_delimiter_semicolon\";i:1;s:2:\"59\";}i:2;a:2:{i:0;s:130:\"LLL:EXT:css_styled_content/Resources/Private/Language/locallang_db.xlf:tt_content.tx_cssstyledcontent_tableparsing_delimiter_comma\";i:1;s:2:\"44\";}i:3;a:2:{i:0;s:130:\"LLL:EXT:css_styled_content/Resources/Private/Language/locallang_db.xlf:tt_content.tx_cssstyledcontent_tableparsing_delimiter_colon\";i:1;s:2:\"58\";}i:4;a:2:{i:0;s:128:\"LLL:EXT:css_styled_content/Resources/Private/Language/locallang_db.xlf:tt_content.tx_cssstyledcontent_tableparsing_delimiter_tab\";i:1;s:1:\"9\";}}s:8:\"minitems\";s:1:\"0\";s:8:\"maxitems\";s:1:\"1\";s:4:\"size\";s:1:\"1\";}}}}}}}}'),
(7,	'99e69834fbfaa201a6fa4693e860258d',	2145909600,	'a:1:{s:6:\"sheets\";a:3:{s:4:\"sDEF\";a:1:{s:4:\"ROOT\";a:3:{s:8:\"TCEforms\";a:1:{s:10:\"sheetTitle\";s:92:\"LLL:EXT:felogin/Resources/Private/Language/Database.xlf:tt_content.pi_flexform.sheet_general\";}s:4:\"type\";s:5:\"array\";s:2:\"el\";a:6:{s:18:\"showForgotPassword\";a:1:{s:8:\"TCEforms\";a:2:{s:5:\"label\";s:99:\"LLL:EXT:felogin/Resources/Private/Language/Database.xlf:tt_content.pi_flexform.show_forgot_password\";s:6:\"config\";a:2:{s:4:\"type\";s:5:\"check\";s:5:\"items\";a:1:{i:1;a:2:{i:0;s:46:\"LLL:EXT:lang/locallang_core.xlf:labels.enabled\";i:1;s:1:\"1\";}}}}}s:14:\"showPermaLogin\";a:1:{s:8:\"TCEforms\";a:2:{s:5:\"label\";s:94:\"LLL:EXT:felogin/Resources/Private/Language/Database.xlf:tt_content.pi_flexform.show_permalogin\";s:6:\"config\";a:3:{s:7:\"default\";s:1:\"1\";s:4:\"type\";s:5:\"check\";s:5:\"items\";a:1:{i:1;a:2:{i:0;s:46:\"LLL:EXT:lang/locallang_core.xlf:labels.enabled\";i:1;s:1:\"1\";}}}}}s:24:\"showLogoutFormAfterLogin\";a:1:{s:8:\"TCEforms\";a:2:{s:5:\"label\";s:104:\"LLL:EXT:felogin/Resources/Private/Language/Database.xlf:tt_content.pi_flexform.show_logoutFormAfterLogin\";s:6:\"config\";a:3:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:5:\"check\";s:5:\"items\";a:1:{i:1;a:2:{i:0;s:46:\"LLL:EXT:lang/locallang_core.xlf:labels.enabled\";i:1;s:1:\"1\";}}}}}s:5:\"pages\";a:1:{s:8:\"TCEforms\";a:3:{s:7:\"exclude\";s:1:\"1\";s:5:\"label\";s:91:\"LLL:EXT:felogin/Resources/Private/Language/Database.xlf:tt_content.pi_flexform.user_storage\";s:6:\"config\";a:8:{s:4:\"type\";s:5:\"group\";s:13:\"internal_type\";s:2:\"db\";s:7:\"allowed\";s:5:\"pages\";s:4:\"size\";s:1:\"3\";s:8:\"maxitems\";s:2:\"22\";s:8:\"minitems\";s:1:\"0\";s:11:\"show_thumbs\";s:1:\"1\";s:7:\"wizards\";a:1:{s:7:\"suggest\";a:1:{s:4:\"type\";s:7:\"suggest\";}}}}}s:9:\"recursive\";a:1:{s:8:\"TCEforms\";a:2:{s:5:\"label\";s:48:\"LLL:EXT:lang/locallang_general.xlf:LGL.recursive\";s:6:\"config\";a:6:{s:4:\"type\";s:6:\"select\";s:10:\"renderType\";s:12:\"selectSingle\";s:5:\"items\";a:6:{i:0;a:2:{i:0;s:75:\"LLL:EXT:frontend/Resources/Private/Language/locallang_ttc.xlf:recursive.I.0\";i:1;s:0:\"\";}i:1;a:2:{i:0;s:75:\"LLL:EXT:frontend/Resources/Private/Language/locallang_ttc.xlf:recursive.I.1\";i:1;s:1:\"1\";}i:2;a:2:{i:0;s:75:\"LLL:EXT:frontend/Resources/Private/Language/locallang_ttc.xlf:recursive.I.2\";i:1;s:1:\"2\";}i:3;a:2:{i:0;s:75:\"LLL:EXT:frontend/Resources/Private/Language/locallang_ttc.xlf:recursive.I.3\";i:1;s:1:\"3\";}i:4;a:2:{i:0;s:75:\"LLL:EXT:frontend/Resources/Private/Language/locallang_ttc.xlf:recursive.I.4\";i:1;s:1:\"4\";}i:5;a:2:{i:0;s:75:\"LLL:EXT:frontend/Resources/Private/Language/locallang_ttc.xlf:recursive.I.5\";i:1;s:3:\"250\";}}s:8:\"minitems\";s:1:\"0\";s:8:\"maxitems\";s:1:\"1\";s:4:\"size\";s:1:\"1\";}}}s:12:\"templateFile\";a:1:{s:8:\"TCEforms\";a:2:{s:5:\"label\";s:92:\"LLL:EXT:felogin/Resources/Private/Language/Database.xlf:tt_content.pi_flexform.template_file\";s:6:\"config\";a:8:{s:4:\"type\";s:5:\"group\";s:13:\"internal_type\";s:4:\"file\";s:7:\"allowed\";s:13:\"tmpl,html,htm\";s:8:\"max_size\";s:3:\"100\";s:12:\"uploadfolder\";s:18:\"uploads/tx_felogin\";s:8:\"maxitems\";s:1:\"1\";s:4:\"size\";s:1:\"1\";s:17:\"selectedListStyle\";s:11:\"width:180px\";}}}}}}s:10:\"s_redirect\";a:1:{s:4:\"ROOT\";a:3:{s:8:\"TCEforms\";a:1:{s:10:\"sheetTitle\";s:93:\"LLL:EXT:felogin/Resources/Private/Language/Database.xlf:tt_content.pi_flexform.sheet_redirect\";}s:4:\"type\";s:5:\"array\";s:2:\"el\";a:6:{s:12:\"redirectMode\";a:1:{s:8:\"TCEforms\";a:2:{s:5:\"label\";s:91:\"LLL:EXT:felogin/Resources/Private/Language/Database.xlf:tt_content.pi_flexform.redirectMode\";s:6:\"config\";a:6:{s:4:\"type\";s:6:\"select\";s:10:\"renderType\";s:24:\"selectMultipleSideBySide\";s:5:\"items\";a:8:{i:0;a:2:{i:0;s:95:\"LLL:EXT:felogin/Resources/Private/Language/Database.xlf:tt_content.pi_flexform.redirectMode.I.0\";i:1;s:10:\"groupLogin\";}i:1;a:2:{i:0;s:95:\"LLL:EXT:felogin/Resources/Private/Language/Database.xlf:tt_content.pi_flexform.redirectMode.I.1\";i:1;s:9:\"userLogin\";}i:2;a:2:{i:0;s:95:\"LLL:EXT:felogin/Resources/Private/Language/Database.xlf:tt_content.pi_flexform.redirectMode.I.2\";i:1;s:5:\"login\";}i:3;a:2:{i:0;s:95:\"LLL:EXT:felogin/Resources/Private/Language/Database.xlf:tt_content.pi_flexform.redirectMode.I.3\";i:1;s:6:\"logout\";}i:4;a:2:{i:0;s:95:\"LLL:EXT:felogin/Resources/Private/Language/Database.xlf:tt_content.pi_flexform.redirectMode.I.4\";i:1;s:10:\"loginError\";}i:5;a:2:{i:0;s:95:\"LLL:EXT:felogin/Resources/Private/Language/Database.xlf:tt_content.pi_flexform.redirectMode.I.5\";i:1;s:7:\"getpost\";}i:6;a:2:{i:0;s:95:\"LLL:EXT:felogin/Resources/Private/Language/Database.xlf:tt_content.pi_flexform.redirectMode.I.6\";i:1;s:7:\"referer\";}i:7;a:2:{i:0;s:95:\"LLL:EXT:felogin/Resources/Private/Language/Database.xlf:tt_content.pi_flexform.redirectMode.I.7\";i:1;s:14:\"refererDomains\";}}s:4:\"size\";s:1:\"8\";s:8:\"minitems\";s:1:\"0\";s:8:\"maxitems\";s:1:\"8\";}}}s:19:\"redirectFirstMethod\";a:1:{s:8:\"TCEforms\";a:2:{s:5:\"label\";s:98:\"LLL:EXT:felogin/Resources/Private/Language/Database.xlf:tt_content.pi_flexform.redirectFirstMethod\";s:6:\"config\";a:2:{s:4:\"type\";s:5:\"check\";s:5:\"items\";a:1:{i:1;a:2:{i:0;s:46:\"LLL:EXT:lang/locallang_core.xlf:labels.enabled\";i:1;s:1:\"1\";}}}}}s:17:\"redirectPageLogin\";a:1:{s:8:\"TCEforms\";a:2:{s:5:\"label\";s:96:\"LLL:EXT:felogin/Resources/Private/Language/Database.xlf:tt_content.pi_flexform.redirectPageLogin\";s:6:\"config\";a:8:{s:4:\"type\";s:5:\"group\";s:13:\"internal_type\";s:2:\"db\";s:7:\"allowed\";s:5:\"pages\";s:4:\"size\";s:1:\"1\";s:8:\"maxitems\";s:1:\"1\";s:8:\"minitems\";s:1:\"0\";s:11:\"show_thumbs\";s:1:\"1\";s:7:\"wizards\";a:1:{s:7:\"suggest\";a:1:{s:4:\"type\";s:7:\"suggest\";}}}}}s:22:\"redirectPageLoginError\";a:1:{s:8:\"TCEforms\";a:2:{s:5:\"label\";s:101:\"LLL:EXT:felogin/Resources/Private/Language/Database.xlf:tt_content.pi_flexform.redirectPageLoginError\";s:6:\"config\";a:8:{s:4:\"type\";s:5:\"group\";s:13:\"internal_type\";s:2:\"db\";s:7:\"allowed\";s:5:\"pages\";s:4:\"size\";s:1:\"1\";s:8:\"maxitems\";s:1:\"1\";s:8:\"minitems\";s:1:\"0\";s:11:\"show_thumbs\";s:1:\"1\";s:7:\"wizards\";a:1:{s:7:\"suggest\";a:1:{s:4:\"type\";s:7:\"suggest\";}}}}}s:18:\"redirectPageLogout\";a:1:{s:8:\"TCEforms\";a:2:{s:5:\"label\";s:97:\"LLL:EXT:felogin/Resources/Private/Language/Database.xlf:tt_content.pi_flexform.redirectPageLogout\";s:6:\"config\";a:8:{s:4:\"type\";s:5:\"group\";s:13:\"internal_type\";s:2:\"db\";s:7:\"allowed\";s:5:\"pages\";s:4:\"size\";s:1:\"1\";s:8:\"maxitems\";s:1:\"1\";s:8:\"minitems\";s:1:\"0\";s:11:\"show_thumbs\";s:1:\"1\";s:7:\"wizards\";a:1:{s:7:\"suggest\";a:1:{s:4:\"type\";s:7:\"suggest\";}}}}}s:15:\"redirectDisable\";a:1:{s:8:\"TCEforms\";a:2:{s:5:\"label\";s:94:\"LLL:EXT:felogin/Resources/Private/Language/Database.xlf:tt_content.pi_flexform.redirectDisable\";s:6:\"config\";a:2:{s:4:\"type\";s:5:\"check\";s:5:\"items\";a:1:{i:1;a:2:{i:0;s:41:\"LLL:EXT:lang/locallang_common.xlf:disable\";i:1;s:1:\"1\";}}}}}}}}s:10:\"s_messages\";a:1:{s:4:\"ROOT\";a:3:{s:8:\"TCEforms\";a:1:{s:10:\"sheetTitle\";s:93:\"LLL:EXT:felogin/Resources/Private/Language/Database.xlf:tt_content.pi_flexform.sheet_messages\";}s:4:\"type\";s:5:\"array\";s:2:\"el\";a:12:{s:14:\"welcome_header\";a:1:{s:8:\"TCEforms\";a:2:{s:5:\"label\";s:93:\"LLL:EXT:felogin/Resources/Private/Language/Database.xlf:tt_content.pi_flexform.welcome_header\";s:6:\"config\";a:2:{s:4:\"type\";s:5:\"input\";s:4:\"size\";s:2:\"30\";}}}s:15:\"welcome_message\";a:1:{s:8:\"TCEforms\";a:2:{s:5:\"label\";s:94:\"LLL:EXT:felogin/Resources/Private/Language/Database.xlf:tt_content.pi_flexform.welcome_message\";s:6:\"config\";a:3:{s:4:\"type\";s:4:\"text\";s:4:\"cols\";s:2:\"30\";s:4:\"rows\";s:1:\"5\";}}}s:14:\"success_header\";a:1:{s:8:\"TCEforms\";a:2:{s:5:\"label\";s:93:\"LLL:EXT:felogin/Resources/Private/Language/Database.xlf:tt_content.pi_flexform.success_header\";s:6:\"config\";a:2:{s:4:\"type\";s:5:\"input\";s:4:\"size\";s:2:\"30\";}}}s:15:\"success_message\";a:1:{s:8:\"TCEforms\";a:2:{s:5:\"label\";s:94:\"LLL:EXT:felogin/Resources/Private/Language/Database.xlf:tt_content.pi_flexform.success_message\";s:6:\"config\";a:3:{s:4:\"type\";s:4:\"text\";s:4:\"cols\";s:2:\"30\";s:4:\"rows\";s:1:\"5\";}}}s:12:\"error_header\";a:1:{s:8:\"TCEforms\";a:2:{s:5:\"label\";s:91:\"LLL:EXT:felogin/Resources/Private/Language/Database.xlf:tt_content.pi_flexform.error_header\";s:6:\"config\";a:2:{s:4:\"type\";s:5:\"input\";s:4:\"size\";s:2:\"30\";}}}s:13:\"error_message\";a:1:{s:8:\"TCEforms\";a:2:{s:5:\"label\";s:92:\"LLL:EXT:felogin/Resources/Private/Language/Database.xlf:tt_content.pi_flexform.error_message\";s:6:\"config\";a:3:{s:4:\"type\";s:4:\"text\";s:4:\"cols\";s:2:\"30\";s:4:\"rows\";s:1:\"5\";}}}s:13:\"status_header\";a:1:{s:8:\"TCEforms\";a:2:{s:5:\"label\";s:92:\"LLL:EXT:felogin/Resources/Private/Language/Database.xlf:tt_content.pi_flexform.status_header\";s:6:\"config\";a:2:{s:4:\"type\";s:5:\"input\";s:4:\"size\";s:2:\"30\";}}}s:14:\"status_message\";a:1:{s:8:\"TCEforms\";a:2:{s:5:\"label\";s:93:\"LLL:EXT:felogin/Resources/Private/Language/Database.xlf:tt_content.pi_flexform.status_message\";s:6:\"config\";a:3:{s:4:\"type\";s:4:\"text\";s:4:\"cols\";s:2:\"30\";s:4:\"rows\";s:1:\"5\";}}}s:13:\"logout_header\";a:1:{s:8:\"TCEforms\";a:2:{s:5:\"label\";s:92:\"LLL:EXT:felogin/Resources/Private/Language/Database.xlf:tt_content.pi_flexform.logout_header\";s:6:\"config\";a:2:{s:4:\"type\";s:5:\"input\";s:4:\"size\";s:2:\"30\";}}}s:14:\"logout_message\";a:1:{s:8:\"TCEforms\";a:2:{s:5:\"label\";s:93:\"LLL:EXT:felogin/Resources/Private/Language/Database.xlf:tt_content.pi_flexform.logout_message\";s:6:\"config\";a:3:{s:4:\"type\";s:4:\"text\";s:4:\"cols\";s:2:\"30\";s:4:\"rows\";s:1:\"5\";}}}s:13:\"forgot_header\";a:1:{s:8:\"TCEforms\";a:2:{s:5:\"label\";s:92:\"LLL:EXT:felogin/Resources/Private/Language/Database.xlf:tt_content.pi_flexform.forgot_header\";s:6:\"config\";a:2:{s:4:\"type\";s:5:\"input\";s:4:\"size\";s:2:\"30\";}}}s:20:\"forgot_reset_message\";a:1:{s:8:\"TCEforms\";a:2:{s:5:\"label\";s:93:\"LLL:EXT:felogin/Resources/Private/Language/Database.xlf:tt_content.pi_flexform.forgot_message\";s:6:\"config\";a:3:{s:4:\"type\";s:4:\"text\";s:4:\"cols\";s:2:\"30\";s:4:\"rows\";s:1:\"5\";}}}}}}}}'),
(8,	'19dc228204e8360c2469184729e2f807',	2145909600,	'a:2:{i:0;a:3:{s:8:\"TSconfig\";a:4:{s:4:\"mod.\";a:3:{s:9:\"web_list.\";a:4:{s:28:\"enableDisplayBigControlPanel\";s:10:\"selectable\";s:15:\"enableClipBoard\";s:10:\"selectable\";s:22:\"enableLocalizationView\";s:10:\"selectable\";s:18:\"tableDisplayOrder.\";a:11:{s:9:\"be_users.\";a:1:{s:5:\"after\";s:9:\"be_groups\";}s:15:\"sys_filemounts.\";a:1:{s:5:\"after\";s:8:\"be_users\";}s:17:\"sys_file_storage.\";a:1:{s:5:\"after\";s:14:\"sys_filemounts\";}s:13:\"sys_language.\";a:1:{s:5:\"after\";s:16:\"sys_file_storage\";}s:23:\"pages_language_overlay.\";a:1:{s:6:\"before\";s:5:\"pages\";}s:9:\"fe_users.\";a:2:{s:5:\"after\";s:9:\"fe_groups\";s:6:\"before\";s:5:\"pages\";}s:13:\"sys_template.\";a:1:{s:5:\"after\";s:5:\"pages\";}s:15:\"backend_layout.\";a:1:{s:5:\"after\";s:5:\"pages\";}s:11:\"sys_domain.\";a:1:{s:5:\"after\";s:12:\"sys_template\";}s:11:\"tt_content.\";a:1:{s:5:\"after\";s:33:\"pages,backend_layout,sys_template\";}s:13:\"sys_category.\";a:1:{s:5:\"after\";s:10:\"tt_content\";}}}s:8:\"wizards.\";a:3:{s:10:\"newRecord.\";a:1:{s:6:\"pages.\";a:1:{s:5:\"show.\";a:3:{s:10:\"pageInside\";s:1:\"1\";s:9:\"pageAfter\";s:1:\"1\";s:18:\"pageSelectPosition\";s:1:\"1\";}}}s:18:\"newContentElement.\";a:1:{s:12:\"wizardItems.\";a:4:{s:7:\"common.\";a:3:{s:6:\"header\";s:81:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common\";s:9:\"elements.\";a:6:{s:7:\"header.\";a:4:{s:14:\"iconIdentifier\";s:14:\"content-header\";s:5:\"title\";s:98:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_headerOnly_title\";s:11:\"description\";s:104:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_headerOnly_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:6:\"header\";}}s:5:\"text.\";a:4:{s:14:\"iconIdentifier\";s:12:\"content-text\";s:5:\"title\";s:99:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_regularText_title\";s:11:\"description\";s:105:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_regularText_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:4:\"text\";}}s:8:\"textpic.\";a:4:{s:14:\"iconIdentifier\";s:15:\"content-textpic\";s:5:\"title\";s:97:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_textImage_title\";s:11:\"description\";s:103:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_textImage_description\";s:21:\"tt_content_defValues.\";a:2:{s:5:\"CType\";s:7:\"textpic\";s:11:\"imageorient\";s:2:\"17\";}}s:6:\"image.\";a:4:{s:14:\"iconIdentifier\";s:13:\"content-image\";s:5:\"title\";s:98:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_imagesOnly_title\";s:11:\"description\";s:104:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_imagesOnly_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:5:\"image\";}}s:8:\"bullets.\";a:4:{s:14:\"iconIdentifier\";s:15:\"content-bullets\";s:5:\"title\";s:98:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_bulletList_title\";s:11:\"description\";s:104:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_bulletList_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:7:\"bullets\";}}s:6:\"table.\";a:4:{s:14:\"iconIdentifier\";s:13:\"content-table\";s:5:\"title\";s:93:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_table_title\";s:11:\"description\";s:99:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_table_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:5:\"table\";}}}s:4:\"show\";s:39:\"header,text,textpic,image,bullets,table\";}s:8:\"special.\";a:3:{s:6:\"header\";s:82:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special\";s:9:\"elements.\";a:5:{s:8:\"uploads.\";a:4:{s:14:\"iconIdentifier\";s:23:\"content-special-uploads\";s:5:\"title\";s:98:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special_filelinks_title\";s:11:\"description\";s:104:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special_filelinks_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:7:\"uploads\";}}s:5:\"menu.\";a:4:{s:14:\"iconIdentifier\";s:20:\"content-special-menu\";s:5:\"title\";s:94:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special_menus_title\";s:11:\"description\";s:100:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special_menus_description\";s:21:\"tt_content_defValues.\";a:2:{s:5:\"CType\";s:4:\"menu\";s:9:\"menu_type\";s:1:\"0\";}}s:5:\"html.\";a:4:{s:14:\"iconIdentifier\";s:20:\"content-special-html\";s:5:\"title\";s:98:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special_plainHTML_title\";s:11:\"description\";s:104:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special_plainHTML_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:4:\"html\";}}s:4:\"div.\";a:4:{s:14:\"iconIdentifier\";s:19:\"content-special-div\";s:5:\"title\";s:96:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special_divider_title\";s:11:\"description\";s:102:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special_divider_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:3:\"div\";}}s:9:\"shortcut.\";a:4:{s:14:\"iconIdentifier\";s:24:\"content-special-shortcut\";s:5:\"title\";s:97:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special_shortcut_title\";s:11:\"description\";s:103:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special_shortcut_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:8:\"shortcut\";}}}s:4:\"show\";s:30:\"uploads,menu,html,div,shortcut\";}s:6:\"forms.\";a:3:{s:6:\"header\";s:80:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:forms\";s:9:\"elements.\";a:2:{s:6:\"login.\";a:4:{s:14:\"iconIdentifier\";s:22:\"content-elements-login\";s:5:\"title\";s:92:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:forms_login_title\";s:11:\"description\";s:98:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:forms_login_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:5:\"login\";}}s:9:\"mailform.\";a:4:{s:14:\"iconIdentifier\";s:25:\"content-elements-mailform\";s:5:\"title\";s:91:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:forms_mail_title\";s:11:\"description\";s:97:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:forms_mail_description\";s:21:\"tt_content_defValues.\";a:2:{s:5:\"CType\";s:8:\"mailform\";s:8:\"bodytext\";s:60:\"enctype = multipart/form-data\nmethod = post\nprefix = tx_form\";}}}s:4:\"show\";s:14:\"login,mailform\";}s:8:\"plugins.\";a:3:{s:6:\"header\";s:82:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:plugins\";s:9:\"elements.\";a:1:{s:8:\"general.\";a:4:{s:14:\"iconIdentifier\";s:14:\"content-plugin\";s:5:\"title\";s:96:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:plugins_general_title\";s:11:\"description\";s:102:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:plugins_general_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:4:\"list\";}}}s:4:\"show\";s:1:\"*\";}}}s:5:\"form.\";a:2:{s:9:\"defaults.\";a:2:{s:8:\"showTabs\";s:23:\"elements, options, form\";s:5:\"tabs.\";a:3:{s:9:\"elements.\";a:2:{s:14:\"showAccordions\";s:26:\"basic, predefined, content\";s:11:\"accordions.\";a:3:{s:6:\"basic.\";a:1:{s:11:\"showButtons\";s:106:\"textline, textarea, checkbox, radio, select, fileupload, hidden, password, fieldset, submit, reset, button\";}s:11:\"predefined.\";a:1:{s:11:\"showButtons\";s:38:\"name, email, checkboxgroup, radiogroup\";}s:8:\"content.\";a:1:{s:11:\"showButtons\";s:17:\"header, textblock\";}}}s:8:\"options.\";a:2:{s:14:\"showAccordions\";s:64:\"legend, label, attributes, options, validation, filters, various\";s:11:\"accordions.\";a:4:{s:6:\"label.\";a:1:{s:14:\"showProperties\";s:5:\"label\";}s:11:\"attributes.\";a:1:{s:14:\"showProperties\";s:490:\"accept, accept-charset, accesskey, action, alt, autocomplete, autofocus, checked, class, cols, contenteditable, contextmenu, dir, draggable, dropzone, disabled, enctype, hidden, height, id, inputmode, label, lang, list, max, maxlength, method, min, minlength, multiple, name, novalidate, pattern, placeholder, readonly, required, rows, selected, selectionDirection, selectionEnd, selectionStart, size, spellcheck, src, step, style, tabindex, text, title, translate, type, value, width, wrap\";}s:11:\"validation.\";a:2:{s:9:\"showRules\";s:196:\"alphabetic, alphanumeric, between, date, digit, email, equals, fileallowedtypes, filemaximumsize, fileminimumsize, float, greaterthan, inarray, integer, ip, length, lessthan, regexp, required, uri\";s:6:\"rules.\";a:20:{s:11:\"alphabetic.\";a:1:{s:14:\"showProperties\";s:44:\"message, error, showMessage, allowWhiteSpace\";}s:13:\"alphanumeric.\";a:1:{s:14:\"showProperties\";s:44:\"message, error, showMessage, allowWhiteSpace\";}s:8:\"between.\";a:1:{s:14:\"showProperties\";s:56:\"message, error, showMessage, minimum, maximum, inclusive\";}s:5:\"date.\";a:1:{s:14:\"showProperties\";s:35:\"message, error, showMessage, format\";}s:6:\"digit.\";a:1:{s:14:\"showProperties\";s:27:\"message, error, showMessage\";}s:6:\"email.\";a:1:{s:14:\"showProperties\";s:27:\"message, error, showMessage\";}s:7:\"equals.\";a:1:{s:14:\"showProperties\";s:34:\"message, error, showMessage, field\";}s:17:\"fileallowedtypes.\";a:1:{s:14:\"showProperties\";s:34:\"message, error, showMessage, types\";}s:16:\"filemaximumsize.\";a:1:{s:14:\"showProperties\";s:36:\"message, error, showMessage, maximum\";}s:16:\"fileminimumsize.\";a:1:{s:14:\"showProperties\";s:36:\"message, error, showMessage, minimum\";}s:6:\"float.\";a:1:{s:14:\"showProperties\";s:27:\"message, error, showMessage\";}s:12:\"greaterthan.\";a:1:{s:14:\"showProperties\";s:36:\"message, error, showMessage, minimum\";}s:8:\"inarray.\";a:1:{s:14:\"showProperties\";s:42:\"message, error, showMessage, array, strict\";}s:8:\"integer.\";a:1:{s:14:\"showProperties\";s:27:\"message, error, showMessage\";}s:3:\"ip.\";a:1:{s:14:\"showProperties\";s:27:\"message, error, showMessage\";}s:7:\"length.\";a:1:{s:14:\"showProperties\";s:45:\"message, error, showMessage, minimum, maximum\";}s:9:\"lessthan.\";a:1:{s:14:\"showProperties\";s:36:\"message, error, showMessage, maximum\";}s:7:\"regexp.\";a:1:{s:14:\"showProperties\";s:39:\"message, error, showMessage, expression\";}s:9:\"required.\";a:1:{s:14:\"showProperties\";s:27:\"message, error, showMessage\";}s:4:\"uri.\";a:1:{s:14:\"showProperties\";s:27:\"message, error, showMessage\";}}}s:10:\"filtering.\";a:2:{s:11:\"showFilters\";s:123:\"alphabetic, alphanumeric, currency, digit, integer, lowercase, regexp, removexss, stripnewlines, titlecase, trim, uppercase\";s:8:\"filters.\";a:12:{s:11:\"alphabetic.\";a:1:{s:14:\"showProperties\";s:15:\"allowWhiteSpace\";}s:13:\"alphanumeric.\";a:1:{s:14:\"showProperties\";s:15:\"allowWhiteSpace\";}s:9:\"currency.\";a:1:{s:14:\"showProperties\";s:31:\"decimalPoint, thousandSeparator\";}s:6:\"digit.\";a:1:{s:14:\"showProperties\";s:0:\"\";}s:8:\"integer.\";a:1:{s:14:\"showProperties\";s:0:\"\";}s:10:\"lowercase.\";a:1:{s:14:\"showProperties\";s:0:\"\";}s:7:\"regexp.\";a:1:{s:14:\"showProperties\";s:10:\"expression\";}s:10:\"removexss.\";a:1:{s:14:\"showProperties\";s:0:\"\";}s:14:\"stripnewlines.\";a:1:{s:14:\"showProperties\";s:0:\"\";}s:10:\"titlecase.\";a:1:{s:14:\"showProperties\";s:0:\"\";}s:5:\"trim.\";a:1:{s:14:\"showProperties\";s:13:\"characterList\";}s:10:\"uppercase.\";a:1:{s:14:\"showProperties\";s:0:\"\";}}}}}s:5:\"form.\";a:2:{s:14:\"showAccordions\";s:44:\"behaviour, prefix, attributes, postProcessor\";s:11:\"accordions.\";a:1:{s:14:\"postProcessor.\";a:2:{s:18:\"showPostProcessors\";s:14:\"mail, redirect\";s:15:\"postProcessors.\";a:2:{s:5:\"mail.\";a:1:{s:14:\"showProperties\";s:36:\"recipientEmail, senderEmail, subject\";}s:9:\"redirect.\";a:1:{s:14:\"showProperties\";s:11:\"destination\";}}}}}}}s:9:\"elements.\";a:19:{s:5:\"form.\";a:1:{s:11:\"accordions.\";a:1:{s:11:\"attributes.\";a:1:{s:14:\"showProperties\";s:79:\"accept, action, dir, enctype, lang, method, novalidate, class, id, style, title\";}}}s:7:\"button.\";a:2:{s:14:\"showAccordions\";s:17:\"label, attributes\";s:11:\"accordions.\";a:1:{s:11:\"attributes.\";a:1:{s:14:\"showProperties\";s:22:\"name, value, class, id\";}}}s:9:\"checkbox.\";a:2:{s:14:\"showAccordions\";s:29:\"label, attributes, validation\";s:11:\"accordions.\";a:2:{s:11:\"attributes.\";a:1:{s:14:\"showProperties\";s:41:\"name, value, class, id, checked, required\";}s:11:\"validation.\";a:1:{s:9:\"showRules\";s:8:\"required\";}}}s:9:\"fieldset.\";a:2:{s:14:\"showAccordions\";s:18:\"legend, attributes\";s:11:\"accordions.\";a:1:{s:11:\"attributes.\";a:1:{s:14:\"showProperties\";s:9:\"class, id\";}}}s:11:\"fileupload.\";a:2:{s:14:\"showAccordions\";s:29:\"label, attributes, validation\";s:11:\"accordions.\";a:2:{s:11:\"attributes.\";a:1:{s:14:\"showProperties\";s:25:\"name, class, id, required\";}s:11:\"validation.\";a:1:{s:9:\"showRules\";s:60:\"required, fileallowedtypes, filemaximumsize, fileminimumsize\";}}}s:7:\"hidden.\";a:2:{s:14:\"showAccordions\";s:10:\"attributes\";s:11:\"accordions.\";a:1:{s:11:\"attributes.\";a:1:{s:14:\"showProperties\";s:11:\"name, value\";}}}s:9:\"password.\";a:2:{s:14:\"showAccordions\";s:29:\"label, attributes, validation\";s:11:\"accordions.\";a:2:{s:11:\"attributes.\";a:1:{s:14:\"showProperties\";s:52:\"name, placeholder, class, id, autocomplete, required\";}s:11:\"validation.\";a:1:{s:9:\"showRules\";s:16:\"required, equals\";}}}s:6:\"radio.\";a:2:{s:14:\"showAccordions\";s:29:\"label, attributes, validation\";s:11:\"accordions.\";a:2:{s:11:\"attributes.\";a:1:{s:14:\"showProperties\";s:41:\"name, value, class, id, checked, required\";}s:11:\"validation.\";a:1:{s:9:\"showRules\";s:8:\"required\";}}}s:6:\"reset.\";a:2:{s:14:\"showAccordions\";s:17:\"label, attributes\";s:11:\"accordions.\";a:1:{s:11:\"attributes.\";a:1:{s:14:\"showProperties\";s:14:\"value,class,id\";}}}s:7:\"select.\";a:2:{s:14:\"showAccordions\";s:38:\"label, attributes, options, validation\";s:11:\"accordions.\";a:2:{s:11:\"attributes.\";a:1:{s:14:\"showProperties\";s:41:\"name, size, class, id, multiple, required\";}s:11:\"validation.\";a:1:{s:9:\"showRules\";s:8:\"required\";}}}s:7:\"submit.\";a:2:{s:14:\"showAccordions\";s:17:\"label, attributes\";s:11:\"accordions.\";a:1:{s:11:\"attributes.\";a:1:{s:14:\"showProperties\";s:14:\"value,class,id\";}}}s:9:\"textarea.\";a:2:{s:14:\"showAccordions\";s:38:\"label, attributes, validation, filters\";s:11:\"accordions.\";a:3:{s:11:\"attributes.\";a:1:{s:14:\"showProperties\";s:56:\"name, placeholder, cols, rows, class, id, required, text\";}s:10:\"filtering.\";a:1:{s:11:\"showFilters\";s:86:\"alphabetic, alphanumeric, lowercase, regexp, stripnewlines, titlecase, trim, uppercase\";}s:11:\"validation.\";a:1:{s:9:\"showRules\";s:50:\"alphabetic, alphanumeric, length, regexp, required\";}}}s:9:\"textline.\";a:2:{s:14:\"showAccordions\";s:38:\"label, attributes, validation, filters\";s:11:\"accordions.\";a:3:{s:11:\"attributes.\";a:1:{s:14:\"showProperties\";s:58:\"name, placeholder, type, class, id, autocomplete, required\";}s:11:\"validation.\";a:1:{s:9:\"showRules\";s:144:\"alphabetic, alphanumeric, between, date, digit, email, equals, float, greaterthan, inarray, integer, ip, length, lessthan, regexp, required, uri\";}s:10:\"filtering.\";a:1:{s:11:\"showFilters\";s:97:\"alphabetic, alphanumeric, currency, digit, integer, lowercase, regexp, titlecase, trim, uppercase\";}}}s:5:\"name.\";a:1:{s:14:\"showAccordions\";s:15:\"legend, various\";}s:6:\"email.\";a:2:{s:14:\"showAccordions\";s:38:\"label, attributes, validation, filters\";s:11:\"accordions.\";a:3:{s:11:\"attributes.\";a:1:{s:14:\"showProperties\";s:58:\"name, placeholder, type, class, id, autocomplete, required\";}s:11:\"validation.\";a:1:{s:9:\"showRules\";s:144:\"alphabetic, alphanumeric, between, date, digit, email, equals, float, greaterthan, inarray, integer, ip, length, lessthan, regexp, required, uri\";}s:10:\"filtering.\";a:1:{s:11:\"showFilters\";s:97:\"alphabetic, alphanumeric, currency, digit, integer, lowercase, regexp, titlecase, trim, uppercase\";}}}s:14:\"checkboxgroup.\";a:2:{s:14:\"showAccordions\";s:36:\"legend, options, various, validation\";s:11:\"accordions.\";a:1:{s:11:\"validation.\";a:1:{s:9:\"showRules\";s:8:\"required\";}}}s:11:\"radiogroup.\";a:2:{s:14:\"showAccordions\";s:36:\"legend, options, various, validation\";s:11:\"accordions.\";a:1:{s:11:\"validation.\";a:1:{s:9:\"showRules\";s:8:\"required\";}}}s:7:\"header.\";a:1:{s:14:\"showAccordions\";s:7:\"various\";}s:10:\"textblock.\";a:1:{s:14:\"showAccordions\";s:7:\"various\";}}}}s:9:\"web_view.\";a:1:{s:19:\"previewFrameWidths.\";a:11:{s:5:\"1280.\";a:1:{s:5:\"label\";s:66:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:computer\";}s:5:\"1024.\";a:1:{s:5:\"label\";s:64:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:tablet\";}s:4:\"960.\";a:1:{s:5:\"label\";s:64:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:mobile\";}s:4:\"800.\";a:1:{s:5:\"label\";s:66:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:computer\";}s:4:\"768.\";a:1:{s:5:\"label\";s:64:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:tablet\";}s:4:\"600.\";a:1:{s:5:\"label\";s:64:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:tablet\";}s:4:\"640.\";a:1:{s:5:\"label\";s:64:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:mobile\";}s:4:\"480.\";a:1:{s:5:\"label\";s:64:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:mobile\";}s:4:\"400.\";a:1:{s:5:\"label\";s:64:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:mobile\";}s:4:\"360.\";a:1:{s:5:\"label\";s:64:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:mobile\";}s:4:\"300.\";a:1:{s:5:\"label\";s:64:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:mobile\";}}}}s:4:\"RTE.\";a:4:{s:8:\"default.\";a:18:{s:4:\"skin\";s:35:\"EXT:t3skin/rtehtmlarea/htmlarea.css\";s:3:\"FE.\";a:18:{s:4:\"skin\";s:35:\"EXT:t3skin/rtehtmlarea/htmlarea.css\";s:5:\"proc.\";a:15:{s:12:\"overruleMode\";s:6:\"ts_css\";s:21:\"dontConvBRtoParagraph\";s:1:\"1\";s:19:\"preserveDIVSections\";s:1:\"1\";s:16:\"allowTagsOutside\";s:69:\"address, article, aside, blockquote, footer, header, hr, nav, section\";s:9:\"allowTags\";s:387:\"a, abbr, acronym, address, article, aside, b, bdo, big, blockquote, br, caption, center, cite, code, col, colgroup, dd, del, dfn, dl, div, dt, em, font, footer,header, h1, h2, h3, h4, h5, h6, hr, i, img, ins, kbd, label, li, link, meta, nav, ol, p, pre, q, samp, sdfield, section, small,span, strike, strong, style, sub, sup, table, thead, tbody, tfoot, td, th, tr, title, tt, u, ul, var\";s:15:\"keepPDIVattribs\";s:67:\"id, title, dir, lang, xml:lang, itemscope, itemtype, itemprop,style\";s:26:\"transformBoldAndItalicTags\";s:1:\"1\";s:14:\"dontUndoHSC_db\";s:1:\"1\";s:11:\"dontHSC_rte\";s:1:\"1\";s:18:\"entryHTMLparser_db\";s:1:\"1\";s:19:\"entryHTMLparser_db.\";a:5:{s:9:\"allowTags\";s:387:\"a, abbr, acronym, address, article, aside, b, bdo, big, blockquote, br, caption, center, cite, code, col, colgroup, dd, del, dfn, dl, div, dt, em, font, footer,header, h1, h2, h3, h4, h5, h6, hr, i, img, ins, kbd, label, li, link, meta, nav, ol, p, pre, q, samp, sdfield, section, small,span, strike, strong, style, sub, sup, table, thead, tbody, tfoot, td, th, tr, title, tt, u, ul, var\";s:16:\"htmlSpecialChars\";s:1:\"0\";s:5:\"tags.\";a:28:{s:4:\"img.\";a:2:{s:14:\"allowedAttribs\";s:1:\"0\";s:15:\"rmTagIfNoAttrib\";s:1:\"1\";}s:5:\"span.\";a:3:{s:10:\"fixAttrib.\";a:1:{s:6:\"style.\";a:0:{}}s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";s:15:\"rmTagIfNoAttrib\";s:1:\"1\";}s:2:\"p.\";a:2:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";s:10:\"fixAttrib.\";a:1:{s:6:\"align.\";a:1:{s:5:\"unset\";s:1:\"1\";}}}s:3:\"hr.\";a:1:{s:14:\"allowedAttribs\";s:11:\"class,style\";}s:2:\"b.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:4:\"bdo.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:4:\"big.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:11:\"blockquote.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:5:\"cite.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:5:\"code.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:4:\"del.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:4:\"dfn.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:3:\"em.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:2:\"i.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:4:\"ins.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:4:\"kbd.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:6:\"label.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:2:\"q.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:5:\"samp.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:6:\"small.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:7:\"strike.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:7:\"strong.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:4:\"sub.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:4:\"sup.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:3:\"tt.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:2:\"u.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:4:\"var.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:4:\"div.\";a:2:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";s:10:\"fixAttrib.\";a:1:{s:6:\"align.\";a:1:{s:5:\"unset\";s:1:\"1\";}}}}s:10:\"removeTags\";s:63:\"center, font, link, meta, o:p, sdfield, strike, style, title, u\";s:18:\"keepNonMatchedTags\";s:7:\"protect\";}s:14:\"HTMLparser_db.\";a:1:{s:8:\"noAttrib\";s:2:\"br\";}s:17:\"exitHTMLparser_db\";s:1:\"1\";s:18:\"exitHTMLparser_db.\";a:2:{s:18:\"keepNonMatchedTags\";s:1:\"1\";s:16:\"htmlSpecialChars\";s:1:\"0\";}s:14:\"allowedClasses\";s:301:\"external-link, external-link-new-window, internal-link, internal-link-new-window, download, mail,align-left, align-center, align-right, align-justify,csc-frame-frame1, csc-frame-frame2,component-items, action-items,component-items-ordered, action-items-ordered,important, name-of-person, detail,indent\";}s:15:\"enableWordClean\";s:1:\"1\";s:16:\"removeTrailingBR\";s:1:\"1\";s:14:\"removeComments\";s:1:\"1\";s:10:\"removeTags\";s:37:\"center, font, o:p, sdfield, strike, u\";s:21:\"removeTagsAndContents\";s:32:\"link, meta, script, style, title\";s:11:\"showButtons\";s:493:\"blockstylelabel, blockstyle, textstylelabel, textstyle,formatblock, bold, italic, subscript, superscript,orderedlist, unorderedlist, outdent, indent, textindicator,insertcharacter, link, table, findreplace, chMode, removeformat, undo, redo, about,toggleborders, tableproperties,rowproperties, rowinsertabove, rowinsertunder, rowdelete, rowsplit,columninsertbefore, columninsertafter, columndelete, columnsplit,cellproperties, cellinsertbefore, cellinsertafter, celldelete, cellsplit, cellmerge\";s:23:\"keepButtonGroupTogether\";s:1:\"1\";s:13:\"showStatusBar\";s:1:\"0\";s:8:\"buttons.\";a:7:{s:12:\"formatblock.\";a:1:{s:11:\"removeItems\";s:11:\"pre,address\";}s:11:\"blockstyle.\";a:1:{s:5:\"tags.\";a:3:{s:4:\"div.\";a:1:{s:14:\"allowedClasses\";s:72:\"align-left, align-center, align-right,csc-frame-frame1, csc-frame-frame2\";}s:6:\"table.\";a:1:{s:14:\"allowedClasses\";s:34:\"csc-frame-frame1, csc-frame-frame2\";}s:3:\"td.\";a:1:{s:14:\"allowedClasses\";s:37:\"align-left, align-center, align-right\";}}}s:10:\"textstyle.\";a:1:{s:5:\"tags.\";a:1:{s:5:\"span.\";a:1:{s:14:\"allowedClasses\";s:33:\"important, name-of-person, detail\";}}}s:5:\"link.\";a:5:{s:11:\"properties.\";a:1:{s:6:\"class.\";a:1:{s:14:\"allowedClasses\";s:96:\"external-link, external-link-new-window, internal-link, internal-link-new-window, download, mail\";}}s:5:\"page.\";a:1:{s:11:\"properties.\";a:1:{s:6:\"class.\";a:1:{s:7:\"default\";s:13:\"internal-link\";}}}s:4:\"url.\";a:1:{s:11:\"properties.\";a:1:{s:6:\"class.\";a:1:{s:7:\"default\";s:24:\"external-link-new-window\";}}}s:5:\"file.\";a:1:{s:11:\"properties.\";a:1:{s:6:\"class.\";a:1:{s:7:\"default\";s:8:\"download\";}}}s:5:\"mail.\";a:1:{s:11:\"properties.\";a:1:{s:6:\"class.\";a:1:{s:7:\"default\";s:4:\"mail\";}}}}s:14:\"toggleborders.\";a:1:{s:18:\"setOnTableCreation\";s:1:\"1\";}s:5:\"bold.\";a:1:{s:6:\"hotKey\";s:1:\"b\";}s:7:\"italic.\";a:1:{s:6:\"hotKey\";s:1:\"i\";}}s:41:\"disableAlignmentFieldsetInTableOperations\";s:1:\"1\";s:39:\"disableSpacingFieldsetInTableOperations\";s:1:\"1\";s:37:\"disableColorFieldsetInTableOperations\";s:1:\"1\";s:38:\"disableLayoutFieldsetInTableOperations\";s:1:\"1\";s:39:\"disableBordersFieldsetInTableOperations\";s:1:\"1\";s:7:\"schema.\";a:1:{s:8:\"sources.\";a:1:{s:9:\"schemaOrg\";s:63:\"EXT:rtehtmlarea/extensions/MicrodataSchema/res/schemaOrgAll.rdf\";}}s:11:\"hideButtons\";s:202:\"chMode, blockstyle, textstyle, underline, strikethrough, subscript, superscript, lefttoright, righttoleft, left, center, right, justifyfull, table, inserttag, findreplace, removeformat, copy, cut, paste\";}s:5:\"proc.\";a:15:{s:12:\"overruleMode\";s:6:\"ts_css\";s:21:\"dontConvBRtoParagraph\";s:1:\"1\";s:19:\"preserveDIVSections\";s:1:\"1\";s:16:\"allowTagsOutside\";s:69:\"address, article, aside, blockquote, footer, header, hr, nav, section\";s:9:\"allowTags\";s:387:\"a, abbr, acronym, address, article, aside, b, bdo, big, blockquote, br, caption, center, cite, code, col, colgroup, dd, del, dfn, dl, div, dt, em, font, footer,header, h1, h2, h3, h4, h5, h6, hr, i, img, ins, kbd, label, li, link, meta, nav, ol, p, pre, q, samp, sdfield, section, small,span, strike, strong, style, sub, sup, table, thead, tbody, tfoot, td, th, tr, title, tt, u, ul, var\";s:15:\"keepPDIVattribs\";s:67:\"id, title, dir, lang, xml:lang, itemscope, itemtype, itemprop,style\";s:26:\"transformBoldAndItalicTags\";s:1:\"1\";s:14:\"dontUndoHSC_db\";s:1:\"1\";s:11:\"dontHSC_rte\";s:1:\"1\";s:18:\"entryHTMLparser_db\";s:1:\"1\";s:19:\"entryHTMLparser_db.\";a:5:{s:9:\"allowTags\";s:387:\"a, abbr, acronym, address, article, aside, b, bdo, big, blockquote, br, caption, center, cite, code, col, colgroup, dd, del, dfn, dl, div, dt, em, font, footer,header, h1, h2, h3, h4, h5, h6, hr, i, img, ins, kbd, label, li, link, meta, nav, ol, p, pre, q, samp, sdfield, section, small,span, strike, strong, style, sub, sup, table, thead, tbody, tfoot, td, th, tr, title, tt, u, ul, var\";s:16:\"htmlSpecialChars\";s:1:\"0\";s:5:\"tags.\";a:28:{s:4:\"img.\";a:2:{s:14:\"allowedAttribs\";s:1:\"0\";s:15:\"rmTagIfNoAttrib\";s:1:\"1\";}s:5:\"span.\";a:3:{s:10:\"fixAttrib.\";a:1:{s:6:\"style.\";a:0:{}}s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";s:15:\"rmTagIfNoAttrib\";s:1:\"1\";}s:2:\"p.\";a:2:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";s:10:\"fixAttrib.\";a:1:{s:6:\"align.\";a:1:{s:5:\"unset\";s:1:\"1\";}}}s:3:\"hr.\";a:1:{s:14:\"allowedAttribs\";s:11:\"class,style\";}s:2:\"b.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:4:\"bdo.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:4:\"big.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:11:\"blockquote.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:5:\"cite.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:5:\"code.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:4:\"del.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:4:\"dfn.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:3:\"em.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:2:\"i.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:4:\"ins.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:4:\"kbd.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:6:\"label.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:2:\"q.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:5:\"samp.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:6:\"small.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:7:\"strike.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:7:\"strong.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:4:\"sub.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:4:\"sup.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:3:\"tt.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:2:\"u.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:4:\"var.\";a:1:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";}s:4:\"div.\";a:2:{s:14:\"allowedAttribs\";s:74:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop,style\";s:10:\"fixAttrib.\";a:1:{s:6:\"align.\";a:1:{s:5:\"unset\";s:1:\"1\";}}}}s:10:\"removeTags\";s:63:\"center, font, link, meta, o:p, sdfield, strike, style, title, u\";s:18:\"keepNonMatchedTags\";s:7:\"protect\";}s:14:\"HTMLparser_db.\";a:1:{s:8:\"noAttrib\";s:2:\"br\";}s:17:\"exitHTMLparser_db\";s:1:\"1\";s:18:\"exitHTMLparser_db.\";a:2:{s:18:\"keepNonMatchedTags\";s:1:\"1\";s:16:\"htmlSpecialChars\";s:1:\"0\";}s:14:\"allowedClasses\";s:301:\"external-link, external-link-new-window, internal-link, internal-link-new-window, download, mail,align-left, align-center, align-right, align-justify,csc-frame-frame1, csc-frame-frame2,component-items, action-items,component-items-ordered, action-items-ordered,important, name-of-person, detail,indent\";}s:15:\"enableWordClean\";s:1:\"1\";s:16:\"removeTrailingBR\";s:1:\"1\";s:14:\"removeComments\";s:1:\"1\";s:10:\"removeTags\";s:37:\"center, font, o:p, sdfield, strike, u\";s:21:\"removeTagsAndContents\";s:32:\"link, meta, script, style, title\";s:11:\"showButtons\";s:493:\"blockstylelabel, blockstyle, textstylelabel, textstyle,formatblock, bold, italic, subscript, superscript,orderedlist, unorderedlist, outdent, indent, textindicator,insertcharacter, link, table, findreplace, chMode, removeformat, undo, redo, about,toggleborders, tableproperties,rowproperties, rowinsertabove, rowinsertunder, rowdelete, rowsplit,columninsertbefore, columninsertafter, columndelete, columnsplit,cellproperties, cellinsertbefore, cellinsertafter, celldelete, cellsplit, cellmerge\";s:23:\"keepButtonGroupTogether\";s:1:\"1\";s:13:\"showStatusBar\";s:1:\"1\";s:8:\"buttons.\";a:7:{s:12:\"formatblock.\";a:1:{s:11:\"removeItems\";s:11:\"pre,address\";}s:11:\"blockstyle.\";a:1:{s:5:\"tags.\";a:3:{s:4:\"div.\";a:1:{s:14:\"allowedClasses\";s:72:\"align-left, align-center, align-right,csc-frame-frame1, csc-frame-frame2\";}s:6:\"table.\";a:1:{s:14:\"allowedClasses\";s:34:\"csc-frame-frame1, csc-frame-frame2\";}s:3:\"td.\";a:1:{s:14:\"allowedClasses\";s:37:\"align-left, align-center, align-right\";}}}s:10:\"textstyle.\";a:1:{s:5:\"tags.\";a:1:{s:5:\"span.\";a:1:{s:14:\"allowedClasses\";s:33:\"important, name-of-person, detail\";}}}s:5:\"link.\";a:5:{s:11:\"properties.\";a:1:{s:6:\"class.\";a:1:{s:14:\"allowedClasses\";s:96:\"external-link, external-link-new-window, internal-link, internal-link-new-window, download, mail\";}}s:5:\"page.\";a:1:{s:11:\"properties.\";a:1:{s:6:\"class.\";a:1:{s:7:\"default\";s:13:\"internal-link\";}}}s:4:\"url.\";a:1:{s:11:\"properties.\";a:1:{s:6:\"class.\";a:1:{s:7:\"default\";s:24:\"external-link-new-window\";}}}s:5:\"file.\";a:1:{s:11:\"properties.\";a:1:{s:6:\"class.\";a:1:{s:7:\"default\";s:8:\"download\";}}}s:5:\"mail.\";a:1:{s:11:\"properties.\";a:1:{s:6:\"class.\";a:1:{s:7:\"default\";s:4:\"mail\";}}}}s:14:\"toggleborders.\";a:1:{s:18:\"setOnTableCreation\";s:1:\"1\";}s:5:\"bold.\";a:1:{s:6:\"hotKey\";s:1:\"b\";}s:7:\"italic.\";a:1:{s:6:\"hotKey\";s:1:\"i\";}}s:41:\"disableAlignmentFieldsetInTableOperations\";s:1:\"1\";s:39:\"disableSpacingFieldsetInTableOperations\";s:1:\"1\";s:37:\"disableColorFieldsetInTableOperations\";s:1:\"1\";s:38:\"disableLayoutFieldsetInTableOperations\";s:1:\"1\";s:39:\"disableBordersFieldsetInTableOperations\";s:1:\"1\";s:7:\"schema.\";a:1:{s:8:\"sources.\";a:1:{s:9:\"schemaOrg\";s:63:\"EXT:rtehtmlarea/extensions/MicrodataSchema/res/schemaOrgAll.rdf\";}}}s:7:\"config.\";a:1:{s:11:\"tt_content.\";a:1:{s:9:\"bodytext.\";a:2:{s:5:\"proc.\";a:1:{s:12:\"overruleMode\";s:6:\"ts_css\";}s:6:\"types.\";a:2:{s:5:\"text.\";a:1:{s:5:\"proc.\";a:1:{s:12:\"overruleMode\";s:6:\"ts_css\";}}s:8:\"textpic.\";a:1:{s:5:\"proc.\";a:1:{s:12:\"overruleMode\";s:6:\"ts_css\";}}}}}}s:8:\"classes.\";a:12:{s:11:\"align-left.\";a:2:{s:4:\"name\";s:81:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_tooltips.xlf:justifyleft\";s:5:\"value\";s:17:\"text-align: left;\";}s:13:\"align-center.\";a:2:{s:4:\"name\";s:83:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_tooltips.xlf:justifycenter\";s:5:\"value\";s:19:\"text-align: center;\";}s:12:\"align-right.\";a:2:{s:4:\"name\";s:82:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_tooltips.xlf:justifyright\";s:5:\"value\";s:18:\"text-align: right;\";}s:17:\"csc-frame-frame1.\";a:2:{s:4:\"name\";s:84:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_contentcss.xlf:frame-frame1\";s:5:\"value\";s:53:\"background-color: #EDEBF1; border: 1px solid #333333;\";}s:17:\"csc-frame-frame2.\";a:2:{s:4:\"name\";s:84:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_contentcss.xlf:frame-frame2\";s:5:\"value\";s:53:\"background-color: #F5FFAA; border: 1px solid #333333;\";}s:10:\"important.\";a:2:{s:4:\"name\";s:81:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_contentcss.xlf:important\";s:5:\"value\";s:15:\"color: #8A0020;\";}s:15:\"name-of-person.\";a:2:{s:4:\"name\";s:86:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_contentcss.xlf:name-of-person\";s:5:\"value\";s:15:\"color: #10007B;\";}s:7:\"detail.\";a:2:{s:4:\"name\";s:78:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_contentcss.xlf:detail\";s:5:\"value\";s:15:\"color: #186900;\";}s:16:\"component-items.\";a:2:{s:4:\"name\";s:87:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_contentcss.xlf:component-items\";s:5:\"value\";s:15:\"color: #186900;\";}s:13:\"action-items.\";a:2:{s:4:\"name\";s:84:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_contentcss.xlf:action-items\";s:5:\"value\";s:15:\"color: #8A0020;\";}s:24:\"component-items-ordered.\";a:2:{s:4:\"name\";s:87:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_contentcss.xlf:component-items\";s:5:\"value\";s:15:\"color: #186900;\";}s:21:\"action-items-ordered.\";a:2:{s:4:\"name\";s:84:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_contentcss.xlf:action-items\";s:5:\"value\";s:15:\"color: #8A0020;\";}}s:14:\"classesAnchor.\";a:6:{s:13:\"externalLink.\";a:3:{s:5:\"class\";s:13:\"external-link\";s:4:\"type\";s:3:\"url\";s:9:\"titleText\";s:103:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_accessibilityicons.xlf:external_link_titleText\";}s:24:\"externalLinkInNewWindow.\";a:3:{s:5:\"class\";s:24:\"external-link-new-window\";s:4:\"type\";s:3:\"url\";s:9:\"titleText\";s:114:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_accessibilityicons.xlf:external_link_new_window_titleText\";}s:13:\"internalLink.\";a:3:{s:5:\"class\";s:13:\"internal-link\";s:4:\"type\";s:4:\"page\";s:9:\"titleText\";s:103:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_accessibilityicons.xlf:internal_link_titleText\";}s:24:\"internalLinkInNewWindow.\";a:3:{s:5:\"class\";s:24:\"internal-link-new-window\";s:4:\"type\";s:4:\"page\";s:9:\"titleText\";s:114:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_accessibilityicons.xlf:internal_link_new_window_titleText\";}s:9:\"download.\";a:3:{s:5:\"class\";s:8:\"download\";s:4:\"type\";s:4:\"file\";s:9:\"titleText\";s:98:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_accessibilityicons.xlf:download_titleText\";}s:5:\"mail.\";a:3:{s:5:\"class\";s:4:\"mail\";s:4:\"type\";s:4:\"mail\";s:9:\"titleText\";s:94:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_accessibilityicons.xlf:mail_titleText\";}}}s:8:\"TCEFORM.\";a:1:{s:11:\"tt_content.\";a:1:{s:12:\"imageorient.\";a:1:{s:6:\"types.\";a:1:{s:6:\"image.\";a:1:{s:11:\"removeItems\";s:18:\"8,9,10,17,18,25,26\";}}}}}s:8:\"TCEMAIN.\";a:1:{s:12:\"linkHandler.\";a:5:{s:5:\"page.\";a:2:{s:7:\"handler\";s:48:\"TYPO3\\CMS\\Recordlist\\LinkHandler\\PageLinkHandler\";s:5:\"label\";s:44:\"LLL:EXT:lang/locallang_browse_links.xlf:page\";}s:5:\"file.\";a:4:{s:7:\"handler\";s:48:\"TYPO3\\CMS\\Recordlist\\LinkHandler\\FileLinkHandler\";s:5:\"label\";s:44:\"LLL:EXT:lang/locallang_browse_links.xlf:file\";s:12:\"displayAfter\";s:4:\"page\";s:9:\"scanAfter\";s:4:\"page\";}s:7:\"folder.\";a:4:{s:7:\"handler\";s:50:\"TYPO3\\CMS\\Recordlist\\LinkHandler\\FolderLinkHandler\";s:5:\"label\";s:46:\"LLL:EXT:lang/locallang_browse_links.xlf:folder\";s:12:\"displayAfter\";s:4:\"file\";s:9:\"scanAfter\";s:4:\"file\";}s:4:\"url.\";a:4:{s:7:\"handler\";s:47:\"TYPO3\\CMS\\Recordlist\\LinkHandler\\UrlLinkHandler\";s:5:\"label\";s:46:\"LLL:EXT:lang/locallang_browse_links.xlf:extUrl\";s:12:\"displayAfter\";s:6:\"folder\";s:9:\"scanAfter\";s:4:\"mail\";}s:5:\"mail.\";a:3:{s:7:\"handler\";s:48:\"TYPO3\\CMS\\Recordlist\\LinkHandler\\MailLinkHandler\";s:5:\"label\";s:45:\"LLL:EXT:lang/locallang_browse_links.xlf:email\";s:12:\"displayAfter\";s:3:\"url\";}}}}s:8:\"sections\";a:0:{}s:5:\"match\";a:0:{}}i:1;s:32:\"af77a071e813ca440f81f545dbe1e5d0\";}'),
(9,	'2c18365758f04f4d2e0170bafa596523',	2145909600,	'a:1:{s:4:\"data\";a:1:{s:4:\"sDEF\";a:1:{s:4:\"lDEF\";a:3:{s:8:\"basePath\";a:1:{s:4:\"vDEF\";s:10:\"fileadmin/\";}s:8:\"pathType\";a:1:{s:4:\"vDEF\";s:8:\"relative\";}s:13:\"caseSensitive\";a:1:{s:4:\"vDEF\";s:0:\"\";}}}}}'),
(10,	'e02589b7a33f679490138832552b685d',	2145909600,	'a:2:{i:0;a:3:{s:8:\"TSconfig\";a:4:{s:8:\"options.\";a:9:{s:15:\"enableBookmarks\";s:1:\"1\";s:10:\"file_list.\";a:3:{s:28:\"enableDisplayBigControlPanel\";s:10:\"selectable\";s:23:\"enableDisplayThumbnails\";s:10:\"selectable\";s:15:\"enableClipBoard\";s:10:\"selectable\";}s:9:\"pageTree.\";a:1:{s:31:\"doktypesToShowInNewPageDragArea\";s:21:\"1,6,4,7,3,254,255,199\";}s:12:\"contextMenu.\";a:2:{s:8:\"options.\";a:1:{s:9:\"leftIcons\";s:1:\"1\";}s:6:\"table.\";a:3:{s:13:\"virtual_root.\";a:2:{s:12:\"disableItems\";s:0:\"\";s:6:\"items.\";a:7:{i:100;s:4:\"ITEM\";s:4:\"100.\";a:5:{s:4:\"name\";s:7:\"history\";s:5:\"label\";s:42:\"LLL:EXT:lang/locallang_misc.xlf:CM_history\";s:8:\"iconName\";s:29:\"actions-document-history-open\";s:16:\"displayCondition\";s:19:\"canShowHistory != 0\";s:14:\"callbackAction\";s:16:\"openHistoryPopUp\";}i:9000;s:7:\"DIVIDER\";i:9100;s:4:\"ITEM\";s:5:\"9100.\";a:4:{s:4:\"name\";s:9:\"exportT3d\";s:5:\"label\";s:62:\"LLL:EXT:impexp/Resources/Private/Language/locallang.xlf:export\";s:8:\"iconName\";s:27:\"actions-document-export-t3d\";s:14:\"callbackAction\";s:9:\"exportT3d\";}i:9200;s:4:\"ITEM\";s:5:\"9200.\";a:4:{s:4:\"name\";s:9:\"importT3d\";s:5:\"label\";s:62:\"LLL:EXT:impexp/Resources/Private/Language/locallang.xlf:import\";s:8:\"iconName\";s:27:\"actions-document-import-t3d\";s:14:\"callbackAction\";s:9:\"importT3d\";}}}s:11:\"pages_root.\";a:2:{s:12:\"disableItems\";s:0:\"\";s:6:\"items.\";a:12:{i:100;s:4:\"ITEM\";s:4:\"100.\";a:5:{s:4:\"name\";s:4:\"view\";s:5:\"label\";s:39:\"LLL:EXT:lang/locallang_core.xlf:cm.view\";s:8:\"iconName\";s:21:\"actions-document-view\";s:16:\"displayCondition\";s:16:\"canBeViewed != 0\";s:14:\"callbackAction\";s:8:\"viewPage\";}i:200;s:4:\"ITEM\";s:4:\"200.\";a:5:{s:4:\"name\";s:3:\"new\";s:5:\"label\";s:38:\"LLL:EXT:lang/locallang_core.xlf:cm.new\";s:8:\"iconName\";s:16:\"actions-page-new\";s:16:\"displayCondition\";s:22:\"canCreateNewPages != 0\";s:14:\"callbackAction\";s:13:\"newPageWizard\";}i:300;s:7:\"DIVIDER\";i:400;s:4:\"ITEM\";s:4:\"400.\";a:5:{s:4:\"name\";s:7:\"history\";s:5:\"label\";s:42:\"LLL:EXT:lang/locallang_misc.xlf:CM_history\";s:8:\"iconName\";s:29:\"actions-document-history-open\";s:16:\"displayCondition\";s:19:\"canShowHistory != 0\";s:14:\"callbackAction\";s:16:\"openHistoryPopUp\";}i:9000;s:7:\"DIVIDER\";i:9100;s:4:\"ITEM\";s:5:\"9100.\";a:4:{s:4:\"name\";s:9:\"exportT3d\";s:5:\"label\";s:62:\"LLL:EXT:impexp/Resources/Private/Language/locallang.xlf:export\";s:8:\"iconName\";s:27:\"actions-document-export-t3d\";s:14:\"callbackAction\";s:9:\"exportT3d\";}i:9200;s:4:\"ITEM\";s:5:\"9200.\";a:4:{s:4:\"name\";s:9:\"importT3d\";s:5:\"label\";s:62:\"LLL:EXT:impexp/Resources/Private/Language/locallang.xlf:import\";s:8:\"iconName\";s:27:\"actions-document-import-t3d\";s:14:\"callbackAction\";s:9:\"importT3d\";}}}s:6:\"pages.\";a:2:{s:12:\"disableItems\";s:0:\"\";s:6:\"items.\";a:18:{i:100;s:4:\"ITEM\";s:4:\"100.\";a:5:{s:4:\"name\";s:4:\"view\";s:5:\"label\";s:39:\"LLL:EXT:lang/locallang_core.xlf:cm.view\";s:8:\"iconName\";s:21:\"actions-document-view\";s:16:\"displayCondition\";s:16:\"canBeViewed != 0\";s:14:\"callbackAction\";s:8:\"viewPage\";}i:200;s:7:\"DIVIDER\";i:300;s:4:\"ITEM\";s:4:\"300.\";a:5:{s:4:\"name\";s:7:\"disable\";s:5:\"label\";s:41:\"LLL:EXT:lang/locallang_common.xlf:disable\";s:8:\"iconName\";s:17:\"actions-edit-hide\";s:16:\"displayCondition\";s:52:\"getRecord|hidden = 0 && canBeDisabledAndEnabled != 0\";s:14:\"callbackAction\";s:11:\"disablePage\";}i:400;s:4:\"ITEM\";s:4:\"400.\";a:5:{s:4:\"name\";s:6:\"enable\";s:5:\"label\";s:40:\"LLL:EXT:lang/locallang_common.xlf:enable\";s:8:\"iconName\";s:19:\"actions-edit-unhide\";s:16:\"displayCondition\";s:52:\"getRecord|hidden = 1 && canBeDisabledAndEnabled != 0\";s:14:\"callbackAction\";s:10:\"enablePage\";}i:500;s:4:\"ITEM\";s:4:\"500.\";a:5:{s:4:\"name\";s:4:\"edit\";s:5:\"label\";s:39:\"LLL:EXT:lang/locallang_core.xlf:cm.edit\";s:8:\"iconName\";s:17:\"actions-page-open\";s:16:\"displayCondition\";s:16:\"canBeEdited != 0\";s:14:\"callbackAction\";s:18:\"editPageProperties\";}i:600;s:4:\"ITEM\";s:4:\"600.\";a:5:{s:4:\"name\";s:4:\"info\";s:5:\"label\";s:39:\"LLL:EXT:lang/locallang_core.xlf:cm.info\";s:8:\"iconName\";s:21:\"actions-document-info\";s:16:\"displayCondition\";s:16:\"canShowInfo != 0\";s:14:\"callbackAction\";s:13:\"openInfoPopUp\";}i:700;s:4:\"ITEM\";s:4:\"700.\";a:5:{s:4:\"name\";s:7:\"history\";s:5:\"label\";s:42:\"LLL:EXT:lang/locallang_misc.xlf:CM_history\";s:8:\"iconName\";s:29:\"actions-document-history-open\";s:16:\"displayCondition\";s:19:\"canShowHistory != 0\";s:14:\"callbackAction\";s:16:\"openHistoryPopUp\";}i:800;s:7:\"DIVIDER\";i:900;s:7:\"SUBMENU\";s:4:\"900.\";a:19:{s:5:\"label\";s:51:\"LLL:EXT:lang/locallang_core.xlf:cm.copyPasteActions\";i:100;s:4:\"ITEM\";s:4:\"100.\";a:5:{s:4:\"name\";s:3:\"new\";s:5:\"label\";s:38:\"LLL:EXT:lang/locallang_core.xlf:cm.new\";s:8:\"iconName\";s:16:\"actions-page-new\";s:16:\"displayCondition\";s:22:\"canCreateNewPages != 0\";s:14:\"callbackAction\";s:13:\"newPageWizard\";}i:200;s:7:\"DIVIDER\";i:300;s:4:\"ITEM\";s:4:\"300.\";a:5:{s:4:\"name\";s:3:\"cut\";s:5:\"label\";s:38:\"LLL:EXT:lang/locallang_core.xlf:cm.cut\";s:8:\"iconName\";s:16:\"actions-edit-cut\";s:16:\"displayCondition\";s:53:\"isInCutMode = 0 && canBeCut != 0 && isMountPoint != 1\";s:14:\"callbackAction\";s:13:\"enableCutMode\";}i:400;s:4:\"ITEM\";s:4:\"400.\";a:5:{s:4:\"name\";s:3:\"cut\";s:5:\"label\";s:38:\"LLL:EXT:lang/locallang_core.xlf:cm.cut\";s:8:\"iconName\";s:24:\"actions-edit-cut-release\";s:16:\"displayCondition\";s:32:\"isInCutMode = 1 && canBeCut != 0\";s:14:\"callbackAction\";s:14:\"disableCutMode\";}i:500;s:4:\"ITEM\";s:4:\"500.\";a:5:{s:4:\"name\";s:4:\"copy\";s:5:\"label\";s:39:\"LLL:EXT:lang/locallang_core.xlf:cm.copy\";s:8:\"iconName\";s:17:\"actions-edit-copy\";s:16:\"displayCondition\";s:16:\"isInCopyMode = 0\";s:14:\"callbackAction\";s:14:\"enableCopyMode\";}i:600;s:4:\"ITEM\";s:4:\"600.\";a:5:{s:4:\"name\";s:4:\"copy\";s:5:\"label\";s:39:\"LLL:EXT:lang/locallang_core.xlf:cm.copy\";s:8:\"iconName\";s:25:\"actions-edit-copy-release\";s:16:\"displayCondition\";s:16:\"isInCopyMode = 1\";s:14:\"callbackAction\";s:15:\"disableCopyMode\";}i:700;s:4:\"ITEM\";s:4:\"700.\";a:5:{s:4:\"name\";s:9:\"pasteInto\";s:5:\"label\";s:44:\"LLL:EXT:lang/locallang_core.xlf:cm.pasteinto\";s:8:\"iconName\";s:27:\"actions-document-paste-into\";s:16:\"displayCondition\";s:85:\"getContextInfo|inCopyMode = 1 || getContextInfo|inCutMode = 1 && canBePastedInto != 0\";s:14:\"callbackAction\";s:13:\"pasteIntoNode\";}i:800;s:4:\"ITEM\";s:4:\"800.\";a:5:{s:4:\"name\";s:10:\"pasteAfter\";s:5:\"label\";s:45:\"LLL:EXT:lang/locallang_core.xlf:cm.pasteafter\";s:8:\"iconName\";s:28:\"actions-document-paste-after\";s:16:\"displayCondition\";s:86:\"getContextInfo|inCopyMode = 1 || getContextInfo|inCutMode = 1 && canBePastedAfter != 0\";s:14:\"callbackAction\";s:14:\"pasteAfterNode\";}i:900;s:7:\"DIVIDER\";i:1000;s:4:\"ITEM\";s:5:\"1000.\";a:5:{s:4:\"name\";s:6:\"delete\";s:5:\"label\";s:41:\"LLL:EXT:lang/locallang_core.xlf:cm.delete\";s:8:\"iconName\";s:19:\"actions-edit-delete\";s:16:\"displayCondition\";s:38:\"canBeRemoved != 0 && isMountPoint != 1\";s:14:\"callbackAction\";s:10:\"removeNode\";}}i:1000;s:7:\"SUBMENU\";s:5:\"1000.\";a:13:{s:5:\"label\";s:48:\"LLL:EXT:lang/locallang_core.xlf:cm.branchActions\";i:100;s:4:\"ITEM\";s:4:\"100.\";a:5:{s:4:\"name\";s:15:\"mountAsTreeroot\";s:5:\"label\";s:49:\"LLL:EXT:lang/locallang_core.xlf:cm.tempMountPoint\";s:8:\"iconName\";s:26:\"actions-pagetree-mountroot\";s:16:\"displayCondition\";s:49:\"canBeTemporaryMountPoint != 0 && isMountPoint = 0\";s:14:\"callbackAction\";s:15:\"mountAsTreeRoot\";}i:200;s:7:\"DIVIDER\";i:300;s:4:\"ITEM\";s:4:\"300.\";a:5:{s:4:\"name\";s:12:\"expandBranch\";s:5:\"label\";s:47:\"LLL:EXT:lang/locallang_core.xlf:cm.expandBranch\";s:8:\"iconName\";s:23:\"actions-pagetree-expand\";s:16:\"displayCondition\";s:0:\"\";s:14:\"callbackAction\";s:12:\"expandBranch\";}i:400;s:4:\"ITEM\";s:4:\"400.\";a:5:{s:4:\"name\";s:14:\"collapseBranch\";s:5:\"label\";s:49:\"LLL:EXT:lang/locallang_core.xlf:cm.collapseBranch\";s:8:\"iconName\";s:25:\"actions-pagetree-collapse\";s:16:\"displayCondition\";s:0:\"\";s:14:\"callbackAction\";s:14:\"collapseBranch\";}i:9000;s:7:\"DIVIDER\";i:9100;s:4:\"ITEM\";s:5:\"9100.\";a:4:{s:4:\"name\";s:9:\"exportT3d\";s:5:\"label\";s:62:\"LLL:EXT:impexp/Resources/Private/Language/locallang.xlf:export\";s:8:\"iconName\";s:27:\"actions-document-export-t3d\";s:14:\"callbackAction\";s:9:\"exportT3d\";}i:9200;s:4:\"ITEM\";s:5:\"9200.\";a:4:{s:4:\"name\";s:9:\"importT3d\";s:5:\"label\";s:62:\"LLL:EXT:impexp/Resources/Private/Language/locallang.xlf:import\";s:8:\"iconName\";s:27:\"actions-document-import-t3d\";s:14:\"callbackAction\";s:9:\"importT3d\";}}}}}}s:14:\"disableDelete.\";a:2:{s:17:\"sys_file_metadata\";s:1:\"1\";s:8:\"sys_file\";s:1:\"1\";}s:11:\"saveDocView\";s:1:\"1\";s:10:\"saveDocNew\";s:1:\"1\";s:11:\"saveDocNew.\";a:3:{s:5:\"pages\";s:1:\"0\";s:8:\"sys_file\";s:1:\"0\";s:17:\"sys_file_metadata\";s:1:\"0\";}s:11:\"clearCache.\";a:2:{s:3:\"all\";s:1:\"1\";s:6:\"system\";s:1:\"1\";}}s:6:\"setup.\";a:1:{s:8:\"default.\";a:1:{s:8:\"edit_RTE\";s:1:\"1\";}}s:9:\"admPanel.\";a:2:{s:7:\"enable.\";a:1:{s:3:\"all\";s:1:\"1\";}s:9:\"override.\";a:1:{s:8:\"tsdebug.\";a:1:{s:20:\"forceTemplateParsing\";s:1:\"1\";}}}s:12:\"TCAdefaults.\";a:1:{s:9:\"sys_note.\";a:2:{s:6:\"author\";s:17:\"Christian Pschorr\";s:5:\"email\";s:13:\"hello@qinx.me\";}}}s:8:\"sections\";a:0:{}s:5:\"match\";a:0:{}}i:1;s:32:\"b03d1352e95067e8a3f19a5fd0567869\";}'),
(11,	'05d306ffec48f00f2eb5f23c00d2187a',	2145909600,	'a:1:{s:4:\"data\";a:1:{s:4:\"sDEF\";a:1:{s:4:\"lDEF\";a:3:{s:8:\"basePath\";a:1:{s:4:\"vDEF\";s:10:\"fileadmin/\";}s:8:\"pathType\";a:1:{s:4:\"vDEF\";s:8:\"relative\";}s:13:\"caseSensitive\";a:1:{s:4:\"vDEF\";s:1:\"0\";}}}}}');

DROP TABLE IF EXISTS `cf_cache_hash_tags`;
CREATE TABLE `cf_cache_hash_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `cf_cache_hash_tags` (`id`, `identifier`, `tag`) VALUES
(1,	'dd83ad6f6284423b2f1995d36a888b7d',	'ident_userTS_TSconfig'),
(2,	'b86d691357fa5e0f6dbe0152427664d5',	'ident_PAGES_TSconfig'),
(3,	'4429166a5789f153f84eafc5658ba06a',	'ident_PAGES_TSconfig'),
(4,	'22c5a4a1a25b772c4f4d04b90e2963b1',	'ident_ident_xml2array'),
(5,	'5b4f1286d06897f0fafa9b561dffa44a',	'ident_ident_xml2array'),
(6,	'891ce143ee0ee00a1a89da0893a80103',	'ident_ident_xml2array'),
(7,	'99e69834fbfaa201a6fa4693e860258d',	'ident_ident_xml2array'),
(8,	'19dc228204e8360c2469184729e2f807',	'ident_PAGES_TSconfig'),
(9,	'2c18365758f04f4d2e0170bafa596523',	'ident_ident_xml2array'),
(10,	'e02589b7a33f679490138832552b685d',	'ident_userTS_TSconfig'),
(11,	'05d306ffec48f00f2eb5f23c00d2187a',	'ident_ident_xml2array');

DROP TABLE IF EXISTS `cf_cache_imagesizes`;
CREATE TABLE `cf_cache_imagesizes` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `cf_cache_imagesizes_tags`;
CREATE TABLE `cf_cache_imagesizes_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `cf_cache_pages`;
CREATE TABLE `cf_cache_pages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `cf_cache_pagesection`;
CREATE TABLE `cf_cache_pagesection` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `cf_cache_pagesection_tags`;
CREATE TABLE `cf_cache_pagesection_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `cf_cache_pages_tags`;
CREATE TABLE `cf_cache_pages_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `cf_cache_rootline`;
CREATE TABLE `cf_cache_rootline` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `cf_cache_rootline_tags`;
CREATE TABLE `cf_cache_rootline_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `cf_extbase_datamapfactory_datamap`;
CREATE TABLE `cf_extbase_datamapfactory_datamap` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `cf_extbase_datamapfactory_datamap_tags`;
CREATE TABLE `cf_extbase_datamapfactory_datamap_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `cf_extbase_object`;
CREATE TABLE `cf_extbase_object` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `cf_extbase_object` (`id`, `identifier`, `expires`, `content`) VALUES
(1,	'3bcc835c5d8d7866a0ce2dc41464b9a8',	2145909600,	'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:52:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManager\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:2:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:24:\"injectEnvironmentService\";s:44:\"TYPO3\\CMS\\Extbase\\Service\\EnvironmentService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:1;}'),
(2,	'48ee39591354d5b031b745485de55720',	2145909600,	'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:38:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManager\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),
(3,	'dbac534c00a92e4f7b105be73fba4655',	2145909600,	'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:44:\"TYPO3\\CMS\\Extbase\\Service\\EnvironmentService\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),
(4,	'698f3592af2e452d429bd1e9cf4e7f28',	2145909600,	'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:59:\"TYPO3\\CMS\\Extbase\\Configuration\\BackendConfigurationManager\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:4:{s:20:\"injectQueryGenerator\";s:38:\"TYPO3\\CMS\\Core\\Database\\QueryGenerator\";s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:23:\"injectTypoScriptService\";s:43:\"TYPO3\\CMS\\Extbase\\Service\\TypoScriptService\";s:24:\"injectEnvironmentService\";s:44:\"TYPO3\\CMS\\Extbase\\Service\\EnvironmentService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),
(5,	'a83f638ccc959a3a47ea70bd7ad866a8',	2145909600,	'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:38:\"TYPO3\\CMS\\Core\\Database\\QueryGenerator\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),
(6,	'd9a9ae73d3607000daec9828154ef861',	2145909600,	'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:43:\"TYPO3\\CMS\\Extbase\\Service\\TypoScriptService\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),
(7,	'3316fa0a4297a6ddcca7021a1565a7e9',	2145909600,	'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:42:\"TYPO3\\CMS\\Fluid\\Core\\Parser\\TemplateParser\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:1:{s:13:\"objectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),
(8,	'e8d805b35474fd740277e82b2633dfdc',	2145909600,	'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:47:\"TYPO3\\CMS\\Fluid\\Core\\Rendering\\RenderingContext\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:3:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:33:\"injectViewHelperVariableContainer\";s:59:\"TYPO3\\CMS\\Fluid\\Core\\ViewHelper\\ViewHelperVariableContainer\";s:31:\"injectTemplateVariableContainer\";s:57:\"TYPO3\\CMS\\Fluid\\Core\\ViewHelper\\TemplateVariableContainer\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),
(9,	'a640fdb9512138cae8d3d392619d9034',	2145909600,	'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:59:\"TYPO3\\CMS\\Fluid\\Core\\ViewHelper\\ViewHelperVariableContainer\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),
(10,	'6e9736d7b31f65e8bab9afe208da72f5',	2145909600,	'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:57:\"TYPO3\\CMS\\Fluid\\Core\\ViewHelper\\TemplateVariableContainer\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:1:{i:0;a:2:{s:4:\"name\";s:13:\"variableArray\";s:12:\"defaultValue\";a:0:{}}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),
(11,	'ffab3d90bc879cb5f9bc7dad6eeca0fe',	2145909600,	'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:33:\"TYPO3\\CMS\\Extbase\\Mvc\\Web\\Request\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:3:{s:17:\"injectHashService\";s:51:\"TYPO3\\CMS\\Extbase\\Security\\Cryptography\\HashService\";s:26:\"injectConfigurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";s:24:\"injectEnvironmentService\";s:44:\"TYPO3\\CMS\\Extbase\\Service\\EnvironmentService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),
(12,	'b50521e5e180c67942dcfb9564f33b28',	2145909600,	'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:51:\"TYPO3\\CMS\\Extbase\\Security\\Cryptography\\HashService\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),
(13,	'4162aee1fc2f8a1059d3c19ec4daa1c7',	2145909600,	'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:44:\"TYPO3\\CMS\\Extbase\\Mvc\\Web\\Routing\\UriBuilder\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:3:{s:26:\"injectConfigurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";s:22:\"injectExtensionService\";s:42:\"TYPO3\\CMS\\Extbase\\Service\\ExtensionService\";s:24:\"injectEnvironmentService\";s:44:\"TYPO3\\CMS\\Extbase\\Service\\EnvironmentService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:1;}'),
(14,	'161ec4a31f0f6bbc932fcc1ae6d48887',	2145909600,	'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:42:\"TYPO3\\CMS\\Extbase\\Service\\ExtensionService\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:2:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:26:\"injectConfigurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),
(15,	'6c06740645171b100a0605c1774e691c',	2145909600,	'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:50:\"TYPO3\\CMS\\Extbase\\Mvc\\Controller\\ControllerContext\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:2:{s:25:\"injectFlashMessageService\";s:44:\"TYPO3\\CMS\\Core\\Messaging\\FlashMessageService\";s:22:\"injectExtensionService\";s:42:\"TYPO3\\CMS\\Extbase\\Service\\ExtensionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),
(16,	'fcd3672a290f64f6875bb8d84ef8362b',	2145909600,	'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:44:\"TYPO3\\CMS\\Core\\Messaging\\FlashMessageService\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),
(17,	'5ed31dbb2262e355409980a4c85adca5',	2145909600,	'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:46:\"TYPO3\\CMS\\Fluid\\Core\\Compiler\\TemplateCompiler\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),
(18,	'82775a44b14c5ee1f99fb06534415b03',	2145909600,	'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:41:\"TYPO3\\CMS\\Fluid\\Core\\Parser\\Configuration\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),
(19,	'f542e57a147c74616c2c14ae45a7da4e',	2145909600,	'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:46:\"TYPO3\\CMS\\Fluid\\Core\\Parser\\Interceptor\\Escape\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:1:{s:13:\"objectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),
(20,	'434532454ee301095ce48df889c5685c',	2145909600,	'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:40:\"TYPO3\\CMS\\Fluid\\Core\\Parser\\ParsingState\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:1:{s:17:\"variableContainer\";s:57:\"TYPO3\\CMS\\Fluid\\Core\\ViewHelper\\TemplateVariableContainer\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),
(21,	'78b1b7823d2022e2377301c0f55ac4e6',	2145909600,	'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:47:\"TYPO3\\CMS\\Fluid\\Core\\Parser\\SyntaxTree\\RootNode\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),
(22,	'1fb2371d594668a70e77b8c6ad79fab3',	2145909600,	'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:57:\"TYPO3\\CMS\\Fluid\\Core\\Parser\\SyntaxTree\\ObjectAccessorNode\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:1:{i:0;a:1:{s:4:\"name\";s:10:\"objectPath\";}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),
(23,	'40fc6eb24ec4cac8fd87a969e75c464f',	2145909600,	'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:48:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\Be\\InfoboxViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:2:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),
(24,	'33557becb5fd776e48ac1a4e8877c048',	2145909600,	'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:2:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:26:\"injectConfigurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),
(25,	'4a3a325facbf7a9fc8d188cb22d15301',	2145909600,	'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:53:\"TYPO3\\CMS\\Fluid\\Core\\Parser\\SyntaxTree\\ViewHelperNode\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:2:{i:0;a:2:{s:4:\"name\";s:10:\"viewHelper\";s:10:\"dependency\";s:50:\"TYPO3\\CMS\\Fluid\\Core\\ViewHelper\\AbstractViewHelper\";}i:1;a:1:{s:4:\"name\";s:9:\"arguments\";}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),
(26,	'630b0da604b2c9cabe61e71b441dd0e2',	2145909600,	'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:47:\"TYPO3\\CMS\\Fluid\\Core\\Parser\\SyntaxTree\\TextNode\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:1:{i:0;a:1:{s:4:\"name\";s:4:\"text\";}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),
(27,	'5b9bc39514aff3e59f378bd70fcc2a90',	2145909600,	'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:48:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\Format\\RawViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:2:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),
(28,	'c7cb88ec1a57cdfb6bb3a8518f770ffe',	2145909600,	'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:61:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\Format\\HtmlspecialcharsViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:2:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),
(29,	'7a6761aed6bbdcf2b0f612bc11c1217c',	2145909600,	'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:40:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\IfViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:2:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),
(30,	'232c19c4ec41c1994aa808ba8c0e088f',	2145909600,	'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:42:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\ThenViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:2:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),
(31,	'3a4cfbd9a9d33ba0ada3c8848d08e7f2',	2145909600,	'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:48:\"TYPO3\\CMS\\Fluid\\Core\\Parser\\SyntaxTree\\ArrayNode\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:1:{i:0;a:1:{s:4:\"name\";s:13:\"internalArray\";}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),
(32,	'17466a85af9a994978ee0405320a798b',	2145909600,	'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:44:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\RenderViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:2:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),
(33,	'0a2c329eb2c8346be16fcb86e5609437',	2145909600,	'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:51:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\FlashMessagesViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:2:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:1:{s:3:\"tag\";s:42:\"TYPO3\\CMS\\Fluid\\Core\\ViewHelper\\TagBuilder\";}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),
(34,	'ff9b48c897971beddd71034528f6f90e',	2145909600,	'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:42:\"TYPO3\\CMS\\Fluid\\Core\\ViewHelper\\TagBuilder\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:2:{i:0;a:2:{s:4:\"name\";s:7:\"tagName\";s:12:\"defaultValue\";s:0:\"\";}i:1;a:2:{s:4:\"name\";s:10:\"tagContent\";s:12:\"defaultValue\";s:0:\"\";}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),
(35,	'c2e9ae889aae6db5bc680e826e21142d',	2145909600,	'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:41:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\ForViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:2:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),
(36,	'3460f0111910bdbec763a839d29eaf53',	2145909600,	'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:47:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\TranslateViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:2:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),
(37,	'5394aed9549d0cd47a0b4aa0679efbf8',	2145909600,	'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:43:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\CountViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:2:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),
(38,	'd1627dc87083dc420614aa04dcfcf5cc',	2145909600,	'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:42:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\ElseViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:2:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),
(39,	'f4161c7b5ff989cc5937476177f76d76',	2145909600,	'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:39:\"TYPO3\\CMS\\Extbase\\SignalSlot\\Dispatcher\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:1;}'),
(40,	'0d117d62cabc9997e0760b23d053b5e1',	2145909600,	'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:52:\"TYPO3\\CMS\\Backend\\Security\\CategoryPermissionsAspect\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:1:{i:0;a:2:{s:4:\"name\";s:25:\"backendUserAuthentication\";s:12:\"defaultValue\";N;}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),
(41,	'78915e2e1fdd639df1175e175e3b005a',	2145909600,	'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:50:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\Format\\Nl2brViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:2:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),
(42,	'f56378169db4df0a14757de6f6a254d7',	2145909600,	'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:57:\"TYPO3\\CMS\\Core\\Resource\\Security\\StoragePermissionsAspect\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:1:{i:0;a:2:{s:4:\"name\";s:25:\"backendUserAuthentication\";s:12:\"defaultValue\";N;}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}');

DROP TABLE IF EXISTS `cf_extbase_object_tags`;
CREATE TABLE `cf_extbase_object_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `cf_extbase_reflection`;
CREATE TABLE `cf_extbase_reflection` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `cf_extbase_reflection_tags`;
CREATE TABLE `cf_extbase_reflection_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `cf_extbase_typo3dbbackend_queries`;
CREATE TABLE `cf_extbase_typo3dbbackend_queries` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `cf_extbase_typo3dbbackend_queries_tags`;
CREATE TABLE `cf_extbase_typo3dbbackend_queries_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `fe_groups`;
CREATE TABLE `fe_groups` (
  `tx_extbase_type` varchar(255) NOT NULL DEFAULT '0',
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(50) NOT NULL DEFAULT '',
  `hidden` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `lockToDomain` varchar(50) NOT NULL DEFAULT '',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `description` text,
  `subgroup` tinytext,
  `TSconfig` text,
  `felogin_redirectPid` tinytext,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `fe_sessions`;
CREATE TABLE `fe_sessions` (
  `ses_id` varchar(32) NOT NULL DEFAULT '',
  `ses_name` varchar(32) NOT NULL DEFAULT '',
  `ses_iplock` varchar(39) NOT NULL DEFAULT '',
  `ses_hashlock` int(11) NOT NULL DEFAULT '0',
  `ses_userid` int(11) unsigned NOT NULL DEFAULT '0',
  `ses_tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `ses_data` blob,
  `ses_permanent` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ses_id`,`ses_name`),
  KEY `ses_tstamp` (`ses_tstamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `fe_session_data`;
CREATE TABLE `fe_session_data` (
  `hash` varchar(32) NOT NULL DEFAULT '',
  `content` mediumblob,
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`hash`),
  KEY `tstamp` (`tstamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `fe_users`;
CREATE TABLE `fe_users` (
  `tx_extbase_type` varchar(255) NOT NULL DEFAULT '0',
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `username` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `usergroup` tinytext,
  `disable` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(80) NOT NULL DEFAULT '',
  `first_name` varchar(50) NOT NULL DEFAULT '',
  `middle_name` varchar(50) NOT NULL DEFAULT '',
  `last_name` varchar(50) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `telephone` varchar(20) NOT NULL DEFAULT '',
  `fax` varchar(20) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `lockToDomain` varchar(50) NOT NULL DEFAULT '',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `uc` blob,
  `title` varchar(40) NOT NULL DEFAULT '',
  `zip` varchar(10) NOT NULL DEFAULT '',
  `city` varchar(50) NOT NULL DEFAULT '',
  `country` varchar(40) NOT NULL DEFAULT '',
  `www` varchar(80) NOT NULL DEFAULT '',
  `company` varchar(80) NOT NULL DEFAULT '',
  `image` tinytext,
  `TSconfig` text,
  `fe_cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lastlogin` int(10) unsigned NOT NULL DEFAULT '0',
  `is_online` int(10) unsigned NOT NULL DEFAULT '0',
  `felogin_redirectPid` tinytext,
  `felogin_forgotHash` varchar(80) DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`username`),
  KEY `username` (`username`),
  KEY `is_online` (`is_online`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `perms_userid` int(11) unsigned NOT NULL DEFAULT '0',
  `perms_groupid` int(11) unsigned NOT NULL DEFAULT '0',
  `perms_user` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `perms_group` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `perms_everybody` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `editlock` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `doktype` int(11) unsigned NOT NULL DEFAULT '0',
  `TSconfig` text,
  `is_siteroot` tinyint(4) NOT NULL DEFAULT '0',
  `php_tree_stop` tinyint(4) NOT NULL DEFAULT '0',
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT '0',
  `url` varchar(255) NOT NULL DEFAULT '',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `urltype` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `shortcut` int(10) unsigned NOT NULL DEFAULT '0',
  `shortcut_mode` int(10) unsigned NOT NULL DEFAULT '0',
  `no_cache` int(10) unsigned NOT NULL DEFAULT '0',
  `fe_group` varchar(100) NOT NULL DEFAULT '0',
  `subtitle` varchar(255) NOT NULL DEFAULT '',
  `layout` int(11) unsigned NOT NULL DEFAULT '0',
  `url_scheme` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `target` varchar(80) NOT NULL DEFAULT '',
  `media` int(11) unsigned NOT NULL DEFAULT '0',
  `lastUpdated` int(10) unsigned NOT NULL DEFAULT '0',
  `keywords` text,
  `cache_timeout` int(10) unsigned NOT NULL DEFAULT '0',
  `cache_tags` varchar(255) NOT NULL DEFAULT '',
  `newUntil` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text,
  `no_search` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `SYS_LASTCHANGED` int(10) unsigned NOT NULL DEFAULT '0',
  `abstract` text,
  `module` varchar(255) NOT NULL DEFAULT '',
  `extendToSubpages` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `author` varchar(255) NOT NULL DEFAULT '',
  `author_email` varchar(80) NOT NULL DEFAULT '',
  `nav_title` varchar(255) NOT NULL DEFAULT '',
  `nav_hide` tinyint(4) NOT NULL DEFAULT '0',
  `content_from_pid` int(10) unsigned NOT NULL DEFAULT '0',
  `mount_pid` int(10) unsigned NOT NULL DEFAULT '0',
  `mount_pid_ol` tinyint(4) NOT NULL DEFAULT '0',
  `alias` varchar(32) NOT NULL DEFAULT '',
  `l18n_cfg` tinyint(4) NOT NULL DEFAULT '0',
  `fe_login_mode` tinyint(4) NOT NULL DEFAULT '0',
  `backend_layout` varchar(64) NOT NULL DEFAULT '',
  `backend_layout_next_level` varchar(64) NOT NULL DEFAULT '',
  `tsconfig_includes` text,
  `categories` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `parent` (`pid`,`deleted`,`sorting`),
  KEY `alias` (`alias`),
  KEY `determineSiteRoot` (`is_siteroot`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `pages` (`uid`, `pid`, `t3ver_oid`, `t3ver_id`, `t3ver_wsid`, `t3ver_label`, `t3ver_state`, `t3ver_stage`, `t3ver_count`, `t3ver_tstamp`, `t3ver_move_id`, `t3_origuid`, `tstamp`, `sorting`, `deleted`, `perms_userid`, `perms_groupid`, `perms_user`, `perms_group`, `perms_everybody`, `editlock`, `crdate`, `cruser_id`, `hidden`, `title`, `doktype`, `TSconfig`, `is_siteroot`, `php_tree_stop`, `tx_impexp_origuid`, `url`, `starttime`, `endtime`, `urltype`, `shortcut`, `shortcut_mode`, `no_cache`, `fe_group`, `subtitle`, `layout`, `url_scheme`, `target`, `media`, `lastUpdated`, `keywords`, `cache_timeout`, `cache_tags`, `newUntil`, `description`, `no_search`, `SYS_LASTCHANGED`, `abstract`, `module`, `extendToSubpages`, `author`, `author_email`, `nav_title`, `nav_hide`, `content_from_pid`, `mount_pid`, `mount_pid_ol`, `alias`, `l18n_cfg`, `fe_login_mode`, `backend_layout`, `backend_layout_next_level`, `tsconfig_includes`, `categories`) VALUES
(1,	0,	0,	0,	0,	'',	0,	0,	0,	0,	0,	0,	1486014347,	256,	0,	1,	0,	31,	27,	0,	0,	1486013175,	1,	0,	'play.me',	1,	NULL,	1,	0,	0,	'',	0,	0,	1,	0,	0,	0,	'',	'',	0,	0,	'',	0,	0,	NULL,	0,	'',	0,	NULL,	0,	1486014347,	NULL,	'',	0,	'',	'',	'',	0,	0,	0,	0,	'',	0,	0,	'1',	'1',	NULL,	0),
(2,	0,	0,	0,	0,	'',	0,	0,	0,	0,	0,	0,	1486014249,	512,	0,	1,	0,	31,	27,	0,	0,	1486014217,	1,	0,	'Global Storage',	254,	NULL,	0,	0,	0,	'',	0,	0,	1,	0,	0,	0,	'0',	'',	0,	0,	'',	0,	0,	NULL,	0,	'',	0,	NULL,	0,	0,	NULL,	'',	0,	'',	'',	'',	0,	0,	0,	0,	'',	0,	0,	'',	'',	NULL,	0);

DROP TABLE IF EXISTS `pages_language_overlay`;
CREATE TABLE `pages_language_overlay` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `doktype` int(11) unsigned NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `subtitle` varchar(255) NOT NULL DEFAULT '',
  `nav_title` varchar(255) NOT NULL DEFAULT '',
  `media` int(11) unsigned NOT NULL DEFAULT '0',
  `keywords` text,
  `description` text,
  `abstract` text,
  `author` varchar(255) NOT NULL DEFAULT '',
  `author_email` varchar(80) NOT NULL DEFAULT '',
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT '0',
  `l18n_diffsource` mediumblob,
  `url` varchar(255) NOT NULL DEFAULT '',
  `urltype` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `shortcut` int(10) unsigned NOT NULL DEFAULT '0',
  `shortcut_mode` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `parent` (`pid`,`sys_language_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `sys_be_shortcuts`;
CREATE TABLE `sys_be_shortcuts` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `module_name` varchar(255) NOT NULL DEFAULT '',
  `url` text,
  `description` varchar(255) NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `sc_group` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `event` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `sys_category`;
CREATE TABLE `sys_category` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `hidden` tinyint(4) NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob NOT NULL,
  `title` tinytext NOT NULL,
  `description` text,
  `parent` int(11) NOT NULL DEFAULT '0',
  `items` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `category_parent` (`parent`),
  KEY `category_list` (`pid`,`deleted`,`sys_language_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `sys_category_record_mm`;
CREATE TABLE `sys_category_record_mm` (
  `uid_local` int(11) NOT NULL DEFAULT '0',
  `uid_foreign` int(11) NOT NULL DEFAULT '0',
  `tablenames` varchar(255) NOT NULL DEFAULT '',
  `fieldname` varchar(255) NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `sorting_foreign` int(11) NOT NULL DEFAULT '0',
  KEY `uid_local_foreign` (`uid_local`,`uid_foreign`),
  KEY `uid_foreign_tablefield` (`uid_foreign`,`tablenames`(40),`fieldname`(3),`sorting_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `sys_collection`;
CREATE TABLE `sys_collection` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumtext,
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `hidden` tinyint(4) NOT NULL DEFAULT '0',
  `starttime` int(11) NOT NULL DEFAULT '0',
  `endtime` int(11) NOT NULL DEFAULT '0',
  `fe_group` int(11) NOT NULL DEFAULT '0',
  `title` tinytext,
  `description` text,
  `type` varchar(32) NOT NULL DEFAULT 'static',
  `table_name` tinytext,
  `items` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `sys_collection_entries`;
CREATE TABLE `sys_collection_entries` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `uid_local` int(11) NOT NULL DEFAULT '0',
  `uid_foreign` int(11) NOT NULL DEFAULT '0',
  `tablenames` varchar(64) NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `sys_domain`;
CREATE TABLE `sys_domain` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `domainName` varchar(80) NOT NULL DEFAULT '',
  `redirectTo` varchar(255) NOT NULL DEFAULT '',
  `redirectHttpStatusCode` int(4) unsigned NOT NULL DEFAULT '301',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `prepend_params` int(10) NOT NULL DEFAULT '0',
  `forced` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `getSysDomain` (`redirectTo`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `sys_file`;
CREATE TABLE `sys_file` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `last_indexed` int(11) NOT NULL DEFAULT '0',
  `missing` tinyint(4) NOT NULL DEFAULT '0',
  `storage` int(11) NOT NULL DEFAULT '0',
  `type` varchar(10) NOT NULL DEFAULT '',
  `metadata` int(11) NOT NULL DEFAULT '0',
  `identifier` text,
  `identifier_hash` char(40) NOT NULL DEFAULT '',
  `folder_hash` char(40) NOT NULL DEFAULT '',
  `extension` varchar(255) NOT NULL DEFAULT '',
  `mime_type` varchar(255) NOT NULL DEFAULT '',
  `name` tinytext,
  `sha1` char(40) NOT NULL DEFAULT '',
  `size` bigint(20) unsigned NOT NULL DEFAULT '0',
  `creation_date` int(11) NOT NULL DEFAULT '0',
  `modification_date` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `sel01` (`storage`,`identifier_hash`),
  KEY `folder` (`storage`,`folder_hash`),
  KEY `tstamp` (`tstamp`),
  KEY `lastindex` (`last_indexed`),
  KEY `sha1` (`sha1`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `sys_filemounts`;
CREATE TABLE `sys_filemounts` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(30) NOT NULL DEFAULT '',
  `description` varchar(2000) NOT NULL DEFAULT '',
  `path` varchar(120) NOT NULL DEFAULT '',
  `base` int(11) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `read_only` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `sys_file_collection`;
CREATE TABLE `sys_file_collection` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumtext,
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `hidden` tinyint(4) NOT NULL DEFAULT '0',
  `starttime` int(11) NOT NULL DEFAULT '0',
  `endtime` int(11) NOT NULL DEFAULT '0',
  `title` tinytext,
  `description` text,
  `type` varchar(30) NOT NULL DEFAULT 'static',
  `files` int(11) NOT NULL DEFAULT '0',
  `storage` int(11) NOT NULL DEFAULT '0',
  `folder` text,
  `recursive` tinyint(4) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `sys_file_metadata`;
CREATE TABLE `sys_file_metadata` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob NOT NULL,
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `file` int(11) NOT NULL DEFAULT '0',
  `title` tinytext,
  `width` int(11) NOT NULL DEFAULT '0',
  `height` int(11) NOT NULL DEFAULT '0',
  `description` text,
  `alternative` text,
  `categories` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `file` (`file`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `fal_filelist` (`l10n_parent`,`sys_language_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `sys_file_processedfile`;
CREATE TABLE `sys_file_processedfile` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `storage` int(11) NOT NULL DEFAULT '0',
  `original` int(11) NOT NULL DEFAULT '0',
  `identifier` varchar(512) NOT NULL DEFAULT '',
  `name` tinytext,
  `configuration` text,
  `configurationsha1` char(40) NOT NULL DEFAULT '',
  `originalfilesha1` char(40) NOT NULL DEFAULT '',
  `task_type` varchar(200) NOT NULL DEFAULT '',
  `checksum` char(10) NOT NULL DEFAULT '',
  `width` int(11) DEFAULT '0',
  `height` int(11) DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `combined_1` (`original`,`task_type`,`configurationsha1`),
  KEY `identifier` (`storage`,`identifier`(199))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `sys_file_reference`;
CREATE TABLE `sys_file_reference` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `sorting` int(10) NOT NULL DEFAULT '0',
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `hidden` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob NOT NULL,
  `uid_local` int(11) NOT NULL DEFAULT '0',
  `uid_foreign` int(11) NOT NULL DEFAULT '0',
  `tablenames` varchar(64) NOT NULL DEFAULT '',
  `fieldname` varchar(64) NOT NULL DEFAULT '',
  `sorting_foreign` int(11) NOT NULL DEFAULT '0',
  `table_local` varchar(64) NOT NULL DEFAULT '',
  `title` tinytext,
  `description` text,
  `alternative` tinytext,
  `link` varchar(1024) NOT NULL DEFAULT '',
  `downloadname` tinytext,
  `crop` varchar(4000) NOT NULL DEFAULT '',
  `autoplay` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`),
  KEY `tablenames_fieldname` (`tablenames`(32),`fieldname`(12)),
  KEY `deleted` (`deleted`),
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `sys_file_storage`;
CREATE TABLE `sys_file_storage` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `name` varchar(30) NOT NULL DEFAULT '',
  `description` text,
  `driver` tinytext,
  `configuration` text,
  `is_default` tinyint(4) NOT NULL DEFAULT '0',
  `is_browsable` tinyint(4) NOT NULL DEFAULT '0',
  `is_public` tinyint(4) NOT NULL DEFAULT '0',
  `is_writable` tinyint(4) NOT NULL DEFAULT '0',
  `is_online` tinyint(4) NOT NULL DEFAULT '1',
  `auto_extract_metadata` tinyint(4) NOT NULL DEFAULT '1',
  `processingfolder` tinytext,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `sys_file_storage` (`uid`, `pid`, `tstamp`, `crdate`, `cruser_id`, `deleted`, `name`, `description`, `driver`, `configuration`, `is_default`, `is_browsable`, `is_public`, `is_writable`, `is_online`, `auto_extract_metadata`, `processingfolder`) VALUES
(1,	0,	1486017376,	1486013206,	0,	0,	'fileadmin/ (auto-created)',	'This is the local fileadmin/ directory. This storage mount has been created automatically by TYPO3.',	'Local',	'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"basePath\">\n                    <value index=\"vDEF\">fileadmin/</value>\n                </field>\n                <field index=\"pathType\">\n                    <value index=\"vDEF\">relative</value>\n                </field>\n                <field index=\"caseSensitive\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>',	1,	1,	1,	1,	1,	1,	NULL);

DROP TABLE IF EXISTS `sys_history`;
CREATE TABLE `sys_history` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_log_uid` int(11) NOT NULL DEFAULT '0',
  `history_data` mediumtext,
  `fieldlist` text,
  `recuid` int(11) NOT NULL DEFAULT '0',
  `tablename` varchar(255) NOT NULL DEFAULT '',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `history_files` mediumtext,
  `snapshot` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `recordident_1` (`tablename`,`recuid`),
  KEY `recordident_2` (`tablename`,`tstamp`),
  KEY `sys_log_uid` (`sys_log_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `sys_language`;
CREATE TABLE `sys_language` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `title` varchar(80) NOT NULL DEFAULT '',
  `flag` varchar(20) NOT NULL DEFAULT '',
  `language_isocode` varchar(2) NOT NULL DEFAULT '',
  `static_lang_isocode` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `sys_lockedrecords`;
CREATE TABLE `sys_lockedrecords` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `record_table` varchar(255) NOT NULL DEFAULT '',
  `record_uid` int(11) NOT NULL DEFAULT '0',
  `record_pid` int(11) NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL DEFAULT '',
  `feuserid` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `event` (`userid`,`tstamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `action` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `recuid` int(11) unsigned NOT NULL DEFAULT '0',
  `tablename` varchar(255) NOT NULL DEFAULT '',
  `recpid` int(11) NOT NULL DEFAULT '0',
  `error` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `details` text NOT NULL,
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `details_nr` tinyint(3) NOT NULL DEFAULT '0',
  `IP` varchar(39) NOT NULL DEFAULT '',
  `log_data` text,
  `event_pid` int(11) NOT NULL DEFAULT '-1',
  `workspace` int(11) NOT NULL DEFAULT '0',
  `NEWid` varchar(30) NOT NULL DEFAULT '',
  `request_id` varchar(13) NOT NULL DEFAULT '',
  `time_micro` float NOT NULL DEFAULT '0',
  `component` varchar(255) NOT NULL DEFAULT '',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `message` text,
  `data` text,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `event` (`userid`,`event_pid`),
  KEY `recuidIdx` (`recuid`,`uid`),
  KEY `user_auth` (`type`,`action`,`tstamp`),
  KEY `request` (`request_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `sys_news`;
CREATE TABLE `sys_news` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `content` mediumtext,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `sys_note`;
CREATE TABLE `sys_note` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser` int(11) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text,
  `personal` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `category` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `sys_refindex`;
CREATE TABLE `sys_refindex` (
  `hash` varchar(32) NOT NULL DEFAULT '',
  `tablename` varchar(255) NOT NULL DEFAULT '',
  `recuid` int(11) NOT NULL DEFAULT '0',
  `field` varchar(64) NOT NULL DEFAULT '',
  `flexpointer` varchar(255) NOT NULL DEFAULT '',
  `softref_key` varchar(30) NOT NULL DEFAULT '',
  `softref_id` varchar(40) NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `workspace` int(11) NOT NULL DEFAULT '0',
  `ref_table` varchar(255) NOT NULL DEFAULT '',
  `ref_uid` int(11) NOT NULL DEFAULT '0',
  `ref_string` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`hash`),
  KEY `lookup_rec` (`tablename`,`recuid`),
  KEY `lookup_uid` (`ref_table`,`ref_uid`),
  KEY `lookup_string` (`ref_string`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `sys_refindex` (`hash`, `tablename`, `recuid`, `field`, `flexpointer`, `softref_key`, `softref_id`, `sorting`, `deleted`, `workspace`, `ref_table`, `ref_uid`, `ref_string`) VALUES
('4fdf94c72ee877bae5efc45d56d9819e',	'be_users',	1,	'email',	'',	'email',	'2',	-1,	0,	0,	'_STRING',	0,	'hello@qinx.me'),
('f3d4c48da7c3f3e66aa32520950fb2f8',	'be_users',	1,	'usergroup',	'',	'',	'',	0,	0,	0,	'be_groups',	1,	'');

DROP TABLE IF EXISTS `sys_registry`;
CREATE TABLE `sys_registry` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_namespace` varchar(128) NOT NULL DEFAULT '',
  `entry_key` varchar(128) NOT NULL DEFAULT '',
  `entry_value` blob,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `entry_identifier` (`entry_namespace`,`entry_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `sys_registry` (`uid`, `entry_namespace`, `entry_key`, `entry_value`) VALUES
(1,	'core',	'formProtectionSessionToken:1',	's:64:\"76dfd0878b855192af97502f8809b65bce39d3969061b25612f527e7f49317f5\";'),
(2,	'extensionDataImport',	'typo3/sysext/css_styled_content/ext_tables_static+adt.sql',	'i:1;'),
(3,	'extensionDataImport',	'typo3conf/ext/extension_builder/ext_tables_static+adt.sql',	'i:1;'),
(4,	'extensionDataImport',	'typo3conf/ext/qxplay/ext_tables_static+adt.sql',	'i:1;');

DROP TABLE IF EXISTS `sys_template`;
CREATE TABLE `sys_template` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `sitetitle` varchar(255) NOT NULL DEFAULT '',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `root` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `clear` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `include_static_file` text,
  `constants` text,
  `config` text,
  `nextLevel` varchar(5) NOT NULL DEFAULT '',
  `description` text,
  `basedOn` tinytext,
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `includeStaticAfterBasedOn` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `static_file_mode` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `parent` (`pid`,`deleted`,`hidden`,`sorting`),
  KEY `roottemplate` (`deleted`,`hidden`,`root`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `sys_template` (`uid`, `pid`, `t3ver_oid`, `t3ver_id`, `t3ver_wsid`, `t3ver_label`, `t3ver_state`, `t3ver_stage`, `t3ver_count`, `t3ver_tstamp`, `t3ver_move_id`, `t3_origuid`, `tstamp`, `sorting`, `crdate`, `cruser_id`, `title`, `sitetitle`, `hidden`, `starttime`, `endtime`, `root`, `clear`, `include_static_file`, `constants`, `config`, `nextLevel`, `description`, `basedOn`, `deleted`, `includeStaticAfterBasedOn`, `static_file_mode`, `tx_impexp_origuid`) VALUES
(1,	1,	0,	0,	0,	'',	0,	0,	0,	0,	0,	0,	1486014371,	256,	1486013276,	1,	'QxPlay',	'[play.me]',	0,	0,	0,	1,	3,	'EXT:css_styled_content/static/',	'<INCLUDE_TYPOSCRIPT: source=\"FILE:EXT:qxplay/Configuration/TypoScript/QxPlay.t3c\">',	'<INCLUDE_TYPOSCRIPT: source=\"FILE:EXT:qxplay/Configuration/TypoScript/QxPlay.t3s\">',	'',	NULL,	'',	0,	0,	0,	0);

DROP TABLE IF EXISTS `tt_content`;
CREATE TABLE `tt_content` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `editlock` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `CType` varchar(255) NOT NULL DEFAULT '',
  `header` varchar(255) NOT NULL DEFAULT '',
  `rowDescription` text,
  `bodytext` mediumtext,
  `image` int(11) unsigned NOT NULL DEFAULT '0',
  `imagewidth` mediumint(11) unsigned NOT NULL DEFAULT '0',
  `imageorient` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `imagecols` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `imageborder` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `media` int(11) unsigned NOT NULL DEFAULT '0',
  `layout` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `cols` int(11) unsigned NOT NULL DEFAULT '0',
  `records` text,
  `pages` text,
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `colPos` int(11) unsigned NOT NULL DEFAULT '0',
  `subheader` varchar(255) NOT NULL DEFAULT '',
  `fe_group` varchar(100) NOT NULL DEFAULT '0',
  `header_link` varchar(1024) NOT NULL DEFAULT '',
  `image_zoom` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `header_layout` varchar(30) NOT NULL DEFAULT '0',
  `menu_type` varchar(30) NOT NULL DEFAULT '0',
  `list_type` varchar(255) NOT NULL DEFAULT '',
  `select_key` varchar(80) NOT NULL DEFAULT '',
  `sectionIndex` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `linkToTop` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `file_collections` text,
  `filelink_size` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `filelink_sorting` varchar(10) NOT NULL DEFAULT '',
  `target` varchar(30) NOT NULL DEFAULT '',
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  `recursive` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `imageheight` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT '0',
  `pi_flexform` mediumtext,
  `accessibility_title` varchar(30) NOT NULL DEFAULT '',
  `accessibility_bypass` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `accessibility_bypass_text` varchar(30) NOT NULL DEFAULT '',
  `l18n_parent` int(11) NOT NULL DEFAULT '0',
  `l18n_diffsource` mediumblob,
  `selected_categories` text,
  `category_field` varchar(64) NOT NULL DEFAULT '',
  `table_caption` varchar(255) DEFAULT NULL,
  `table_delimiter` smallint(6) unsigned NOT NULL DEFAULT '0',
  `table_enclosure` smallint(6) unsigned NOT NULL DEFAULT '0',
  `table_header_position` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `table_tfoot` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `bullets_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `uploads_description` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `uploads_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `assets` int(11) unsigned NOT NULL DEFAULT '0',
  `categories` int(11) NOT NULL DEFAULT '0',
  `header_position` varchar(6) NOT NULL DEFAULT '',
  `image_compression` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `image_effects` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `image_noRows` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `section_frame` int(11) unsigned NOT NULL DEFAULT '0',
  `spaceAfter` smallint(5) unsigned NOT NULL DEFAULT '0',
  `spaceBefore` smallint(5) unsigned NOT NULL DEFAULT '0',
  `table_bgColor` int(11) unsigned NOT NULL DEFAULT '0',
  `table_border` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `table_cellpadding` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `table_cellspacing` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `parent` (`pid`,`sorting`),
  KEY `language` (`l18n_parent`,`sys_language_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `tx_extensionmanager_domain_model_extension`;
CREATE TABLE `tx_extensionmanager_domain_model_extension` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `extension_key` varchar(60) NOT NULL DEFAULT '',
  `repository` int(11) unsigned NOT NULL DEFAULT '1',
  `version` varchar(15) NOT NULL DEFAULT '',
  `alldownloadcounter` int(11) unsigned NOT NULL DEFAULT '0',
  `downloadcounter` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(150) NOT NULL DEFAULT '',
  `description` mediumtext,
  `state` int(4) NOT NULL DEFAULT '0',
  `review_state` int(4) NOT NULL DEFAULT '0',
  `category` int(4) NOT NULL DEFAULT '0',
  `last_updated` int(11) unsigned NOT NULL DEFAULT '0',
  `serialized_dependencies` mediumtext,
  `author_name` varchar(255) NOT NULL DEFAULT '',
  `author_email` varchar(255) NOT NULL DEFAULT '',
  `ownerusername` varchar(50) NOT NULL DEFAULT '',
  `md5hash` varchar(35) NOT NULL DEFAULT '',
  `update_comment` mediumtext,
  `authorcompany` varchar(255) NOT NULL DEFAULT '',
  `integer_version` int(11) NOT NULL DEFAULT '0',
  `current_version` int(3) NOT NULL DEFAULT '0',
  `lastreviewedversion` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `versionextrepo` (`extension_key`,`version`,`repository`),
  KEY `index_extrepo` (`extension_key`,`repository`),
  KEY `index_versionrepo` (`integer_version`,`repository`),
  KEY `index_currentversions` (`current_version`,`review_state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `tx_extensionmanager_domain_model_repository`;
CREATE TABLE `tx_extensionmanager_domain_model_repository` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(150) NOT NULL DEFAULT '',
  `description` mediumtext,
  `wsdl_url` varchar(100) NOT NULL DEFAULT '',
  `mirror_list_url` varchar(100) NOT NULL DEFAULT '',
  `last_update` int(11) unsigned NOT NULL DEFAULT '0',
  `extension_count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `tx_extensionmanager_domain_model_repository` (`uid`, `pid`, `title`, `description`, `wsdl_url`, `mirror_list_url`, `last_update`, `extension_count`) VALUES
(1,	0,	'TYPO3.org Main Repository',	'Main repository on typo3.org. This repository has some mirrors configured which are available with the mirror url.',	'https://typo3.org/wsdl/tx_ter_wsdl.php',	'https://repositories.typo3.org/mirrors.xml.gz',	1346191200,	0);

DROP TABLE IF EXISTS `tx_impexp_presets`;
CREATE TABLE `tx_impexp_presets` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `user_uid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `public` tinyint(3) NOT NULL DEFAULT '0',
  `item_uid` int(11) NOT NULL DEFAULT '0',
  `preset_data` blob,
  PRIMARY KEY (`uid`),
  KEY `lookup` (`item_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `tx_rsaauth_keys`;
CREATE TABLE `tx_rsaauth_keys` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `key_value` text,
  PRIMARY KEY (`uid`),
  KEY `crdate` (`crdate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `tx_rtehtmlarea_acronym`;
CREATE TABLE `tx_rtehtmlarea_acronym` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `term` varchar(255) NOT NULL DEFAULT '',
  `acronym` varchar(255) NOT NULL DEFAULT '',
  `static_lang_isocode` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- 2017-02-02 06:37:41
