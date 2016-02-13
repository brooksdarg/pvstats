CREATE TABLE `activity` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `date` datetime DEFAULT NULL,
  `distance` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci
