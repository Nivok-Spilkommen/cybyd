-- Torrent Image Upload by Real_ptr / start
ALTER TABLE `{$db_prefix}files` ADD `image` VARCHAR( 255 ) NOT NULL DEFAULT '' AFTER `url`,
ADD `screen1` VARCHAR( 255 ) NOT NULL DEFAULT '' AFTER `image`,
ADD `screen2` VARCHAR( 255 ) NOT NULL DEFAULT '' AFTER `screen1`,
ADD `screen3` VARCHAR( 255 ) NOT NULL DEFAULT '' AFTER `screen2`;

--

INSERT INTO `{$db_prefix}settings` ( `key` , `value` ) VALUES ('imageon', 'true');
INSERT INTO `{$db_prefix}settings` ( `key` , `value` ) VALUES ('uploaddir', 'cybyd_img/');
INSERT INTO `{$db_prefix}settings` ( `key` , `value` ) VALUES ('file_limit', '15');
INSERT INTO `{$db_prefix}settings` ( `key` , `value` ) VALUES ('screenon', 'true');
-- Torrent Image Upload by Real_ptr / end


-- Gold/Silver Torrent v 1.2 by Losmi / start
ALTER TABLE `{$db_prefix}files` ADD `gold` ENUM( '0', '1', '2' ) NOT NULL DEFAULT '0' AFTER `screen3`;

CREATE TABLE IF NOT EXISTS `{$db_prefix}gold` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `level` int(11) NOT NULL DEFAULT '4',
  `gold_picture` varchar(255) NOT NULL DEFAULT 'gold.gif',
  `silver_picture` varchar(255) NOT NULL DEFAULT 'silver.gif',
  `active` enum('-1','0','1') NOT NULL DEFAULT '1',
  `date` date NOT NULL DEFAULT '0000-00-00',
  `gold_description` text NOT NULL,
  `silver_description` text NOT NULL,
  `classic_description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

INSERT INTO `{$db_prefix}gold` (`id`, `level`, `gold_picture`, `silver_picture`, `active`, `date`, `gold_description`, `silver_description`, `classic_description`) VALUES
(1, 3, 'gold.gif', 'silver.gif', '1', CURDATE(), 'Gold torrent description', 'Silver torrent description', 'Classic torrent description');
-- Gold/Silver Torrent v 1.2 by Losmi / end
