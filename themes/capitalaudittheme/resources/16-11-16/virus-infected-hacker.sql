# WordPress MySQL database migration
#
# Generated: Wednesday 16. November 2016 21:43 UTC
# Hostname: localhost
# Database: `capitalaudit`
# --------------------------------------------------------

/*!40101 SET NAMES utf8 */;

SET sql_mode='NO_AUTO_VALUE_ON_ZERO';



#
# Delete any existing table `wp_capitalaudit_commentmeta`
#

DROP TABLE IF EXISTS `wp_capitalaudit_commentmeta`;


#
# Table structure of table `wp_capitalaudit_commentmeta`
#

CREATE TABLE `wp_capitalaudit_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_capitalaudit_commentmeta`
#

#
# End of data contents of table `wp_capitalaudit_commentmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_capitalaudit_comments`
#

DROP TABLE IF EXISTS `wp_capitalaudit_comments`;


#
# Table structure of table `wp_capitalaudit_comments`
#

CREATE TABLE `wp_capitalaudit_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_capitalaudit_comments`
#
INSERT INTO `wp_capitalaudit_comments` ( `comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un comentarista de WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2016-11-16 15:43:08', '2016-11-16 15:43:08', 'Hola, esto es un comentario.\nPara empezar a moderar, editar y borrar comentarios, por favor, visite la pantalla de comentarios en el escritorio.\nLos avatares de los comentaristas provienen de <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0) ;

#
# End of data contents of table `wp_capitalaudit_comments`
# --------------------------------------------------------



#
# Delete any existing table `wp_capitalaudit_links`
#

DROP TABLE IF EXISTS `wp_capitalaudit_links`;


#
# Table structure of table `wp_capitalaudit_links`
#

CREATE TABLE `wp_capitalaudit_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_capitalaudit_links`
#

#
# End of data contents of table `wp_capitalaudit_links`
# --------------------------------------------------------



#
# Delete any existing table `wp_capitalaudit_options`
#

DROP TABLE IF EXISTS `wp_capitalaudit_options`;


#
# Table structure of table `wp_capitalaudit_options`
#

CREATE TABLE `wp_capitalaudit_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=870 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_capitalaudit_options`
#
INSERT INTO `wp_capitalaudit_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/capitalaudit', 'yes'),
(2, 'home', 'http://localhost/capitalaudit', 'yes'),
(3, 'blogname', 'CapitalAudit', 'yes'),
(4, 'blogdescription', 'Otro sitio de WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'jgomez@ingenioart.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:189:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:9:"banner/?$";s:26:"index.php?post_type=banner";s:39:"banner/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?post_type=banner&feed=$matches[1]";s:34:"banner/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?post_type=banner&feed=$matches[1]";s:26:"banner/page/([0-9]{1,})/?$";s:44:"index.php?post_type=banner&paged=$matches[1]";s:11:"servicio/?$";s:28:"index.php?post_type=servicio";s:41:"servicio/feed/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?post_type=servicio&feed=$matches[1]";s:36:"servicio/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?post_type=servicio&feed=$matches[1]";s:28:"servicio/page/([0-9]{1,})/?$";s:46:"index.php?post_type=servicio&paged=$matches[1]";s:22:"theme-image-gallery/?$";s:39:"index.php?post_type=theme-image-gallery";s:52:"theme-image-gallery/feed/(feed|rdf|rss|rss2|atom)/?$";s:56:"index.php?post_type=theme-image-gallery&feed=$matches[1]";s:47:"theme-image-gallery/(feed|rdf|rss|rss2|atom)/?$";s:56:"index.php?post_type=theme-image-gallery&feed=$matches[1]";s:39:"theme-image-gallery/page/([0-9]{1,})/?$";s:57:"index.php?post_type=theme-image-gallery&paged=$matches[1]";s:22:"theme-video-gallery/?$";s:39:"index.php?post_type=theme-video-gallery";s:52:"theme-video-gallery/feed/(feed|rdf|rss|rss2|atom)/?$";s:56:"index.php?post_type=theme-video-gallery&feed=$matches[1]";s:47:"theme-video-gallery/(feed|rdf|rss|rss2|atom)/?$";s:56:"index.php?post_type=theme-video-gallery&feed=$matches[1]";s:39:"theme-video-gallery/page/([0-9]{1,})/?$";s:57:"index.php?post_type=theme-video-gallery&paged=$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:54:"wpmf-category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?wpmf-category=$matches[1]&feed=$matches[2]";s:49:"wpmf-category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?wpmf-category=$matches[1]&feed=$matches[2]";s:30:"wpmf-category/([^/]+)/embed/?$";s:46:"index.php?wpmf-category=$matches[1]&embed=true";s:42:"wpmf-category/([^/]+)/page/?([0-9]{1,})/?$";s:53:"index.php?wpmf-category=$matches[1]&paged=$matches[2]";s:24:"wpmf-category/([^/]+)/?$";s:35:"index.php?wpmf-category=$matches[1]";s:56:"banner-category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:54:"index.php?banner_category=$matches[1]&feed=$matches[2]";s:51:"banner-category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:54:"index.php?banner_category=$matches[1]&feed=$matches[2]";s:32:"banner-category/([^/]+)/embed/?$";s:48:"index.php?banner_category=$matches[1]&embed=true";s:44:"banner-category/([^/]+)/page/?([0-9]{1,})/?$";s:55:"index.php?banner_category=$matches[1]&paged=$matches[2]";s:26:"banner-category/([^/]+)/?$";s:37:"index.php?banner_category=$matches[1]";s:34:"banner/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"banner/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"banner/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"banner/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"banner/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"banner/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:23:"banner/([^/]+)/embed/?$";s:39:"index.php?banner=$matches[1]&embed=true";s:27:"banner/([^/]+)/trackback/?$";s:33:"index.php?banner=$matches[1]&tb=1";s:47:"banner/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?banner=$matches[1]&feed=$matches[2]";s:42:"banner/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?banner=$matches[1]&feed=$matches[2]";s:35:"banner/([^/]+)/page/?([0-9]{1,})/?$";s:46:"index.php?banner=$matches[1]&paged=$matches[2]";s:42:"banner/([^/]+)/comment-page-([0-9]{1,})/?$";s:46:"index.php?banner=$matches[1]&cpage=$matches[2]";s:31:"banner/([^/]+)(?:/([0-9]+))?/?$";s:45:"index.php?banner=$matches[1]&page=$matches[2]";s:23:"banner/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:33:"banner/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:53:"banner/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:48:"banner/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:48:"banner/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:29:"banner/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:36:"servicio/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:46:"servicio/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:66:"servicio/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"servicio/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"servicio/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:42:"servicio/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:25:"servicio/([^/]+)/embed/?$";s:41:"index.php?servicio=$matches[1]&embed=true";s:29:"servicio/([^/]+)/trackback/?$";s:35:"index.php?servicio=$matches[1]&tb=1";s:49:"servicio/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?servicio=$matches[1]&feed=$matches[2]";s:44:"servicio/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?servicio=$matches[1]&feed=$matches[2]";s:37:"servicio/([^/]+)/page/?([0-9]{1,})/?$";s:48:"index.php?servicio=$matches[1]&paged=$matches[2]";s:44:"servicio/([^/]+)/comment-page-([0-9]{1,})/?$";s:48:"index.php?servicio=$matches[1]&cpage=$matches[2]";s:33:"servicio/([^/]+)(?:/([0-9]+))?/?$";s:47:"index.php?servicio=$matches[1]&page=$matches[2]";s:25:"servicio/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:35:"servicio/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:55:"servicio/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"servicio/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"servicio/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:31:"servicio/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:47:"theme-image-gallery/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"theme-image-gallery/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"theme-image-gallery/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"theme-image-gallery/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"theme-image-gallery/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"theme-image-gallery/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:36:"theme-image-gallery/([^/]+)/embed/?$";s:52:"index.php?theme-image-gallery=$matches[1]&embed=true";s:40:"theme-image-gallery/([^/]+)/trackback/?$";s:46:"index.php?theme-image-gallery=$matches[1]&tb=1";s:60:"theme-image-gallery/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:58:"index.php?theme-image-gallery=$matches[1]&feed=$matches[2]";s:55:"theme-image-gallery/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:58:"index.php?theme-image-gallery=$matches[1]&feed=$matches[2]";s:48:"theme-image-gallery/([^/]+)/page/?([0-9]{1,})/?$";s:59:"index.php?theme-image-gallery=$matches[1]&paged=$matches[2]";s:55:"theme-image-gallery/([^/]+)/comment-page-([0-9]{1,})/?$";s:59:"index.php?theme-image-gallery=$matches[1]&cpage=$matches[2]";s:44:"theme-image-gallery/([^/]+)(?:/([0-9]+))?/?$";s:58:"index.php?theme-image-gallery=$matches[1]&page=$matches[2]";s:36:"theme-image-gallery/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:46:"theme-image-gallery/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:66:"theme-image-gallery/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"theme-image-gallery/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"theme-image-gallery/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:42:"theme-image-gallery/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:47:"theme-video-gallery/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"theme-video-gallery/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"theme-video-gallery/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"theme-video-gallery/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"theme-video-gallery/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"theme-video-gallery/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:36:"theme-video-gallery/([^/]+)/embed/?$";s:52:"index.php?theme-video-gallery=$matches[1]&embed=true";s:40:"theme-video-gallery/([^/]+)/trackback/?$";s:46:"index.php?theme-video-gallery=$matches[1]&tb=1";s:60:"theme-video-gallery/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:58:"index.php?theme-video-gallery=$matches[1]&feed=$matches[2]";s:55:"theme-video-gallery/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:58:"index.php?theme-video-gallery=$matches[1]&feed=$matches[2]";s:48:"theme-video-gallery/([^/]+)/page/?([0-9]{1,})/?$";s:59:"index.php?theme-video-gallery=$matches[1]&paged=$matches[2]";s:55:"theme-video-gallery/([^/]+)/comment-page-([0-9]{1,})/?$";s:59:"index.php?theme-video-gallery=$matches[1]&cpage=$matches[2]";s:44:"theme-video-gallery/([^/]+)(?:/([0-9]+))?/?$";s:58:"index.php?theme-video-gallery=$matches[1]&page=$matches[2]";s:36:"theme-video-gallery/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:46:"theme-video-gallery/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:66:"theme-video-gallery/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"theme-video-gallery/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"theme-video-gallery/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:42:"theme-video-gallery/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:8:{i:0;s:27:"autoptimize/autoptimize.php";i:1;s:31:"cache-enabler/cache-enabler.php";i:2;s:33:"duplicate-post/duplicate-post.php";i:3;s:37:"error-log-viewer/error-log-viewer.php";i:4;s:31:"live-admin-customzier/index.php";i:5;s:19:"optimus/optimus.php";i:6;s:35:"wp-media-folder/wp-media-folder.php";i:7;s:31:"wp-migrate-db/wp-migrate-db.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'capitalaudittheme', 'yes'),
(41, 'stylesheet', 'capitalaudittheme', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '37965', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:4:{s:27:"autoptimize/autoptimize.php";s:21:"autoptimize_uninstall";s:31:"cache-enabler/cache-enabler.php";a:2:{i:0;s:13:"Cache_Enabler";i:1;s:12:"on_uninstall";}s:37:"error-log-viewer/error-log-viewer.php";s:18:"rrrlgvwr_uninstall";s:19:"optimus/optimus.php";a:2:{i:0;s:7:"Optimus";i:1;s:21:"handle_uninstall_hook";}}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '37965', 'yes'),
(92, 'wp_capitalaudit_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:10:"copy_posts";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:35:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:10:"copy_posts";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'WPLANG', 'es_PE', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:17:"pre-header-banner";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes') ;
INSERT INTO `wp_capitalaudit_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(101, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'cron', 'a:6:{i:1479354189;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1479355066;a:1:{s:36:"check_plugin_updates-wp-media-folder";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1479397499;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1479398266;a:1:{s:15:"ao_cachechecker";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1479398686;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(121, 'can_compress_scripts', '1', 'no'),
(141, 'theme_mods_twentysixteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1479311414;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(142, 'current_theme', 'Capital Audit Theme', 'yes'),
(143, 'theme_mods_capitalaudittheme', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:9:"main-menu";i:3;}}', 'yes'),
(144, 'theme_switched', '', 'yes'),
(145, 'recently_activated', 'a:0:{}', 'yes'),
(146, 'autoptimize_version', '2.1.0', 'yes'),
(147, 'cache', 'a:0:{}', 'yes'),
(150, 'wpmf_use_taxonomy', '1', 'yes'),
(151, 'rrrlgvwr_options', 'a:15:{s:21:"plugin_option_version";N;s:21:"php_error_log_visible";i:0;s:11:"lines_count";s:2:"10";s:16:"confirm_filesize";i:0;s:14:"error_log_path";s:83:"C:/xampp/htdocs/capitalaudit/wp-content/plugins/error-log-viewer/log/php-errors.log";s:17:"count_visible_log";i:1;s:14:"frequency_send";i:1;s:8:"hour_day";i:3600;s:23:"display_settings_notice";i:1;s:22:"suggest_feature_banner";i:1;s:13:"first_install";i:1479312136;s:19:"go_settings_counter";i:1;s:9:"file_path";a:1:{i:1;s:83:"C:/xampp/htdocs/capitalaudit/wp-content/plugins/error-log-viewer/log/php-errors.log";}s:20:"0_php-errors_visible";i:1;s:10:"send_email";i:0;}', 'yes'),
(155, 'bstwbsftwppdtplgns_options', 'a:1:{s:8:"bws_menu";a:1:{s:7:"version";a:1:{s:37:"error-log-viewer/error-log-viewer.php";s:5:"1.9.0";}}}', 'yes'),
(156, 'duplicate_post_copytitle', '1', 'yes'),
(157, 'duplicate_post_copydate', '', 'yes'),
(158, 'duplicate_post_copystatus', '', 'yes'),
(159, 'duplicate_post_copyslug', '1', 'yes'),
(160, 'duplicate_post_copyexcerpt', '1', 'yes'),
(161, 'duplicate_post_copycontent', '1', 'yes'),
(162, 'duplicate_post_copypassword', '', 'yes'),
(163, 'duplicate_post_copyattachments', '', 'yes'),
(164, 'duplicate_post_copychildren', '', 'yes'),
(165, 'duplicate_post_copycomments', '', 'yes'),
(166, 'duplicate_post_taxonomies_blacklist', '', 'yes'),
(167, 'duplicate_post_blacklist', '', 'yes'),
(168, 'duplicate_post_types_enabled', 'a:6:{i:0;s:4:"post";i:1;s:4:"page";i:2;s:6:"banner";i:3;s:8:"servicio";i:4;s:19:"theme-image-gallery";i:5;s:19:"theme-video-gallery";}', 'yes'),
(169, 'duplicate_post_show_row', '1', 'yes'),
(170, 'duplicate_post_show_adminbar', '1', 'yes'),
(171, 'duplicate_post_show_submitbox', '1', 'yes'),
(173, 'wpmf_gallery_image_size_value', '["thumbnail","medium","large","full"]', 'yes'),
(174, 'wpmf_padding_masonry', '5', 'yes'),
(175, 'wpmf_padding_portfolio', '10', 'yes'),
(176, 'wpmf_usegellery', '1', 'yes'),
(177, 'wpmf_useorder', '1', 'yes'),
(178, 'wpmf_folder_option1', '0', 'yes'),
(179, 'wpmf_option_override', '0', 'yes'),
(180, 'wpmf_active_media', '0', 'yes'),
(181, 'wpmf_folder_option2', '1', 'yes'),
(182, 'wpmf_option_searchall', '0', 'yes'),
(183, 'wpmf_usegellery_lightbox', '1', 'yes'),
(184, 'wpmf_media_rename', '0', 'yes'),
(185, 'wpmf_patern_rename', '{sitename} - {foldername} - #', 'yes'),
(186, 'wpmf_rename_number', '0', 'yes'),
(187, 'wpmf_option_media_remove', '0', 'yes'),
(188, 'wpmf_default_dimension', '["400x300","640x480","800x600","1024x768","1600x1200"]', 'yes'),
(189, 'wpmf_selected_dimension', '["400x300","640x480","800x600","1024x768","1600x1200"]', 'yes'),
(190, 'wpmf_weight_default', '[["0-61440","kB"],["61440-122880","kB"],["122880-184320","kB"],["184320-245760","kB"],["245760-307200","kB"]]', 'yes'),
(191, 'wpmf_weight_selected', '[["0-61440","kB"],["61440-122880","kB"],["122880-184320","kB"],["184320-245760","kB"],["245760-307200","kB"]]', 'yes'),
(192, 'wpmf_color_singlefile', '{"bgdownloadlink":"#444444","hvdownloadlink":"#888888","fontdownloadlink":"#ffffff","hoverfontcolor":"#ffffff"}', 'yes'),
(193, 'wpmf_option_singlefile', '0', 'yes'),
(194, 'external_updates-wp-media-folder', 'O:8:"stdClass":3:{s:9:"lastCheck";i:1479311871;s:14:"checkedVersion";s:5:"3.3.3";s:6:"update";N;}', 'no'),
(196, '_wpmf_import_notice_flag', 'no', 'yes'),
(271, 'duplicate_post_title_prefix', '', 'yes'),
(272, 'duplicate_post_title_suffix', '', 'yes'),
(273, 'duplicate_post_increase_menu_order_by', '', 'yes'),
(274, 'duplicate_post_roles', 'a:2:{i:0;s:13:"administrator";i:1;s:6:"editor";}', 'yes'),
(351, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(473, 'theme_custom_settings', 'a:12:{s:14:"image_nosotros";s:104:"http://localhost/capitalaudit/wp-content/uploads/2016/11/inicio_nosotros_inventarios_capital_audit-1.jpg";s:15:"widget_nosotros";s:356:"Buscamos alcanzar un crecimiento permanente y rentable, aumentando \nnuestros liderazgo en el continente y en el mundo a través de una \ndiferenciación basada en nuestra calidad reconocida en el mercado.\n\nLa estrategia básica implica poseer medios para saber lo que el mercado\nvaloriza y reconoce, y contar con los recursos necesarios para \nimplementarla.";s:13:"red_social_fb";s:39:"https://www.facebook.com/Ingenioartweb/";s:18:"red_social_twitter";s:39:"https://www.facebook.com/Ingenioartweb/";s:16:"red_social_gmail";s:39:"https://www.facebook.com/Ingenioartweb/";s:16:"red_social_ytube";s:39:"https://www.facebook.com/Ingenioartweb/";s:11:"contact_cel";s:32:"+51 1 265 8450 , +51 983 553 024";s:11:"contact_tel";s:31:"+51 1 265 8450  +51 983 553 024";s:15:"contact_address";s:52:" Capital Audit C/Campodonico 688, San Isidro - Perú";s:13:"contact_email";s:28:"contacto@capitalaudit.com.pe";s:11:"text_mision";s:179:"Quisque purus dui, pharetra eget sodales ut, mattis quis lorem. Morbi quis sem id leo sollicitudin hendrerit. Suspendisse ut dui tincidunt sem ultricies fermentum at sit amet ex. ";s:11:"text_vision";s:179:"Quisque purus dui, pharetra eget sodales ut, mattis quis lorem. Morbi quis sem id leo sollicitudin hendrerit. Suspendisse ut dui tincidunt sem ultricies fermentum at sit amet ex. ";}', 'yes'),
(676, 'category_children', 'a:0:{}', 'yes'),
(708, 'wpmf-category_children', 'a:0:{}', 'yes'),
(869, 'duplicate_post_version', '3.0.3', 'no') ;

#
# End of data contents of table `wp_capitalaudit_options`
# --------------------------------------------------------



#
# Delete any existing table `wp_capitalaudit_postmeta`
#

DROP TABLE IF EXISTS `wp_capitalaudit_postmeta`;


#
# Table structure of table `wp_capitalaudit_postmeta`
#

CREATE TABLE `wp_capitalaudit_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_capitalaudit_postmeta`
#
INSERT INTO `wp_capitalaudit_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_edit_last', '1'),
(3, 4, '_edit_lock', '1479312243:1'),
(4, 5, '_wp_attached_file', '2016/11/slider_inventarios_capital_audit_1.jpg'),
(5, 5, 'wpmf_size', '186175'),
(6, 5, 'wpmf_filetype', 'jpg'),
(7, 5, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1920;s:6:"height";i:735;s:4:"file";s:46:"2016/11/slider_inventarios_capital_audit_1.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:46:"slider_inventarios_capital_audit_1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:46:"slider_inventarios_capital_audit_1-300x115.jpg";s:5:"width";i:300;s:6:"height";i:115;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:46:"slider_inventarios_capital_audit_1-768x294.jpg";s:5:"width";i:768;s:6:"height";i:294;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:47:"slider_inventarios_capital_audit_1-1024x392.jpg";s:5:"width";i:1024;s:6:"height";i:392;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:46:"slider_inventarios_capital_audit_1-210x210.jpg";s:5:"width";i:210;s:6:"height";i:210;s:9:"mime-type";s:10:"image/jpeg";}s:17:"custom-blog-image";a:4:{s:4:"file";s:46:"slider_inventarios_capital_audit_1-784x300.jpg";s:5:"width";i:784;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:7:"optimus";a:3:{s:6:"profit";s:1:"7";s:8:"quantity";d:86;s:4:"webp";i:0;}}'),
(8, 4, '_thumbnail_id', '5'),
(9, 6, '_thumbnail_id', '5'),
(10, 6, '_dp_original', '4'),
(11, 6, '_edit_last', '1'),
(12, 6, '_edit_lock', '1479312409:1'),
(13, 7, '_thumbnail_id', '5'),
(15, 7, '_dp_original', '6'),
(16, 7, '_edit_last', '1'),
(17, 7, '_edit_lock', '1479312419:1'),
(18, 8, '_wp_page_template', 'default'),
(19, 8, '_dp_original', '2'),
(20, 2, '_wp_trash_meta_status', 'publish'),
(21, 2, '_wp_trash_meta_time', '1479312931'),
(22, 2, '_wp_desired_post_slug', 'pagina-de-ejemplo'),
(23, 8, '_wp_trash_meta_status', 'draft'),
(24, 8, '_wp_trash_meta_time', '1479312935'),
(25, 8, '_wp_desired_post_slug', ''),
(26, 11, '_edit_last', '1'),
(27, 11, '_edit_lock', '1479312806:1'),
(28, 11, '_wp_page_template', 'default'),
(29, 14, '_edit_last', '1'),
(30, 14, '_wp_page_template', 'page-templates/page-nosotros.php'),
(31, 14, '_edit_lock', '1479322486:1'),
(32, 16, '_edit_last', '1'),
(33, 16, '_edit_lock', '1479322813:1'),
(34, 16, '_wp_page_template', 'page-templates/page-servicio.php'),
(35, 18, '_edit_last', '1'),
(36, 18, '_edit_lock', '1479322967:1'),
(37, 18, '_wp_page_template', 'page-templates/page-blog.php'),
(38, 20, '_edit_last', '1'),
(39, 20, '_wp_page_template', 'page-templates/page-images.php'),
(40, 20, '_edit_lock', '1479324422:1'),
(41, 22, '_edit_last', '1'),
(42, 22, '_wp_page_template', 'page-templates/page-contacto.php'),
(43, 22, '_edit_lock', '1479323016:1'),
(44, 24, '_menu_item_type', 'custom'),
(45, 24, '_menu_item_menu_item_parent', '0'),
(46, 24, '_menu_item_object_id', '24'),
(47, 24, '_menu_item_object', 'custom'),
(48, 24, '_menu_item_target', ''),
(49, 24, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(50, 24, '_menu_item_xfn', ''),
(51, 24, '_menu_item_url', 'http://localhost/capitalaudit/'),
(52, 24, '_menu_item_orphaned', '1479313051'),
(53, 25, '_menu_item_type', 'post_type'),
(54, 25, '_menu_item_menu_item_parent', '0'),
(55, 25, '_menu_item_object_id', '18'),
(56, 25, '_menu_item_object', 'page'),
(57, 25, '_menu_item_target', ''),
(58, 25, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(59, 25, '_menu_item_xfn', ''),
(60, 25, '_menu_item_url', ''),
(62, 26, '_menu_item_type', 'post_type'),
(63, 26, '_menu_item_menu_item_parent', '0'),
(64, 26, '_menu_item_object_id', '22'),
(65, 26, '_menu_item_object', 'page'),
(66, 26, '_menu_item_target', ''),
(67, 26, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(68, 26, '_menu_item_xfn', ''),
(69, 26, '_menu_item_url', ''),
(71, 27, '_menu_item_type', 'post_type'),
(72, 27, '_menu_item_menu_item_parent', '0'),
(73, 27, '_menu_item_object_id', '14'),
(74, 27, '_menu_item_object', 'page'),
(75, 27, '_menu_item_target', ''),
(76, 27, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(77, 27, '_menu_item_xfn', ''),
(78, 27, '_menu_item_url', ''),
(80, 28, '_menu_item_type', 'post_type'),
(81, 28, '_menu_item_menu_item_parent', '0'),
(82, 28, '_menu_item_object_id', '20'),
(83, 28, '_menu_item_object', 'page'),
(84, 28, '_menu_item_target', ''),
(85, 28, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(86, 28, '_menu_item_xfn', ''),
(87, 28, '_menu_item_url', ''),
(89, 29, '_menu_item_type', 'post_type'),
(90, 29, '_menu_item_menu_item_parent', '0'),
(91, 29, '_menu_item_object_id', '11'),
(92, 29, '_menu_item_object', 'page'),
(93, 29, '_menu_item_target', ''),
(94, 29, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(95, 29, '_menu_item_xfn', ''),
(96, 29, '_menu_item_url', ''),
(98, 30, '_menu_item_type', 'post_type'),
(99, 30, '_menu_item_menu_item_parent', '0'),
(100, 30, '_menu_item_object_id', '16'),
(101, 30, '_menu_item_object', 'page'),
(102, 30, '_menu_item_target', ''),
(103, 30, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(104, 30, '_menu_item_xfn', ''),
(105, 30, '_menu_item_url', ''),
(107, 31, '_edit_last', '1') ;
INSERT INTO `wp_capitalaudit_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(108, 31, '_edit_lock', '1479319486:1'),
(109, 32, '_wp_attached_file', '2016/11/inicio_nosotros_inventarios_capital_audit.jpg'),
(110, 32, 'wpmf_size', '43008'),
(111, 32, 'wpmf_filetype', 'jpg'),
(112, 32, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:540;s:6:"height";i:350;s:4:"file";s:53:"2016/11/inicio_nosotros_inventarios_capital_audit.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:53:"inicio_nosotros_inventarios_capital_audit-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:53:"inicio_nosotros_inventarios_capital_audit-300x194.jpg";s:5:"width";i:300;s:6:"height";i:194;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:53:"inicio_nosotros_inventarios_capital_audit-210x210.jpg";s:5:"width";i:210;s:6:"height";i:210;s:9:"mime-type";s:10:"image/jpeg";}s:17:"custom-blog-image";a:4:{s:4:"file";s:53:"inicio_nosotros_inventarios_capital_audit-540x350.jpg";s:5:"width";i:540;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:7:"optimus";a:3:{s:6:"profit";s:1:"7";s:8:"quantity";d:100;s:4:"webp";i:0;}}'),
(113, 31, '_thumbnail_id', '32'),
(114, 33, '_thumbnail_id', '32'),
(115, 33, '_dp_original', '31'),
(116, 33, '_edit_last', '1'),
(117, 33, '_edit_lock', '1479319650:1'),
(118, 34, '_thumbnail_id', '32'),
(120, 34, '_dp_original', '33'),
(121, 35, '_thumbnail_id', '32'),
(123, 35, '_dp_original', '34'),
(124, 36, '_wp_attached_file', '2016/11/inicio_nosotros_inventarios_capital_audit-1.jpg'),
(125, 36, 'wpmf_size', '43008'),
(126, 36, 'wpmf_filetype', 'jpg'),
(127, 36, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:540;s:6:"height";i:350;s:4:"file";s:55:"2016/11/inicio_nosotros_inventarios_capital_audit-1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:55:"inicio_nosotros_inventarios_capital_audit-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:55:"inicio_nosotros_inventarios_capital_audit-1-300x194.jpg";s:5:"width";i:300;s:6:"height";i:194;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:55:"inicio_nosotros_inventarios_capital_audit-1-210x210.jpg";s:5:"width";i:210;s:6:"height";i:210;s:9:"mime-type";s:10:"image/jpeg";}s:17:"custom-blog-image";a:4:{s:4:"file";s:55:"inicio_nosotros_inventarios_capital_audit-1-540x350.jpg";s:5:"width";i:540;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:7:"optimus";a:3:{s:6:"profit";s:1:"7";s:8:"quantity";d:100;s:4:"webp";i:0;}}'),
(128, 37, '_dp_original', '1'),
(129, 38, '_dp_original', '1'),
(136, 14, 'imageurls_14', ',36,-1,36'),
(137, 14, 'mb_image_gallery', ',36,36,36'),
(138, 16, 'mb_image_gallery', ''),
(139, 43, '_edit_last', '1'),
(140, 43, '_edit_lock', '1479324132:1'),
(141, 44, '_edit_last', '1'),
(142, 44, '_edit_lock', '1479324218:1'),
(143, 45, '_wp_attached_file', '2016/11/sample-imagen.jpg'),
(144, 45, 'wpmf_size', '32805'),
(145, 45, 'wpmf_filetype', 'jpg'),
(146, 45, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:846;s:6:"height";i:592;s:4:"file";s:25:"2016/11/sample-imagen.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"sample-imagen-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"sample-imagen-300x210.jpg";s:5:"width";i:300;s:6:"height";i:210;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:25:"sample-imagen-768x537.jpg";s:5:"width";i:768;s:6:"height";i:537;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:25:"sample-imagen-210x210.jpg";s:5:"width";i:210;s:6:"height";i:210;s:9:"mime-type";s:10:"image/jpeg";}s:17:"custom-blog-image";a:4:{s:4:"file";s:25:"sample-imagen-500x350.jpg";s:5:"width";i:500;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:7:"optimus";a:3:{s:6:"profit";s:2:"10";s:8:"quantity";d:100;s:4:"webp";i:0;}}'),
(147, 44, '_thumbnail_id', '45'),
(148, 44, 'mb_image_gallery', ''),
(149, 43, '_wp_trash_meta_status', 'draft'),
(150, 43, '_wp_trash_meta_time', '1479324367'),
(151, 43, '_wp_desired_post_slug', ''),
(152, 46, '_thumbnail_id', '45'),
(153, 46, 'mb_image_gallery', ''),
(154, 46, '_dp_original', '44'),
(155, 46, '_edit_last', '1'),
(156, 46, '_edit_lock', '1479324396:1'),
(157, 47, '_thumbnail_id', '45'),
(158, 47, 'mb_image_gallery', ''),
(160, 47, '_dp_original', '46'),
(161, 47, '_edit_last', '1'),
(162, 47, '_edit_lock', '1479324404:1'),
(163, 48, '_thumbnail_id', '45'),
(164, 48, 'mb_image_gallery', ''),
(166, 48, '_dp_original', '47'),
(167, 48, '_edit_last', '1'),
(168, 48, '_edit_lock', '1479324411:1'),
(169, 49, '_edit_last', '1'),
(170, 49, '_edit_lock', '1479327584:1'),
(171, 49, '_wp_page_template', 'page-templates/page-videos.php'),
(172, 49, 'mb_image_gallery', ''),
(173, 51, '_edit_last', '1'),
(174, 51, '_edit_lock', '1479327621:1'),
(175, 51, '_oembed_597901271710f962f02e2d4196bd790f', '<iframe width="500" height="281" src="https://www.youtube.com/embed/OPf0YbXqDm0?feature=oembed" frameborder="0" allowfullscreen></iframe>'),
(176, 51, '_oembed_time_597901271710f962f02e2d4196bd790f', '1479327739'),
(177, 51, 'mb_image_gallery', ''),
(178, 52, '_oembed_597901271710f962f02e2d4196bd790f', '<iframe width="500" height="281" src="https://www.youtube.com/embed/OPf0YbXqDm0?feature=oembed" frameborder="0" allowfullscreen></iframe>'),
(179, 52, '_oembed_time_597901271710f962f02e2d4196bd790f', '1479327739'),
(180, 52, 'mb_image_gallery', ''),
(181, 52, '_dp_original', '51'),
(182, 53, '_oembed_597901271710f962f02e2d4196bd790f', '<iframe width="500" height="281" src="https://www.youtube.com/embed/OPf0YbXqDm0?feature=oembed" frameborder="0" allowfullscreen></iframe>'),
(183, 53, '_oembed_time_597901271710f962f02e2d4196bd790f', '1479327739'),
(184, 53, 'mb_image_gallery', ''),
(186, 53, '_dp_original', '52'),
(187, 54, '_oembed_597901271710f962f02e2d4196bd790f', '<iframe width="500" height="281" src="https://www.youtube.com/embed/OPf0YbXqDm0?feature=oembed" frameborder="0" allowfullscreen></iframe>'),
(188, 54, '_oembed_time_597901271710f962f02e2d4196bd790f', '1479327739'),
(189, 54, 'mb_image_gallery', ''),
(191, 54, '_dp_original', '53'),
(192, 55, '_menu_item_type', 'post_type'),
(193, 55, '_menu_item_menu_item_parent', '28'),
(194, 55, '_menu_item_object_id', '49'),
(195, 55, '_menu_item_object', 'page'),
(196, 55, '_menu_item_target', ''),
(197, 55, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(198, 55, '_menu_item_xfn', ''),
(199, 55, '_menu_item_url', '') ;

#
# End of data contents of table `wp_capitalaudit_postmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_capitalaudit_posts`
#

DROP TABLE IF EXISTS `wp_capitalaudit_posts`;


#
# Table structure of table `wp_capitalaudit_posts`
#

CREATE TABLE `wp_capitalaudit_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_capitalaudit_posts`
#
INSERT INTO `wp_capitalaudit_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2016-11-16 15:43:08', '2016-11-16 15:43:08', 'Bienvenido a WordPress. Esta es su primera entrada. Edítela o bórrela, y ¡empiece a escribir!', '¡Hola mundo!', '', 'publish', 'open', 'open', '', 'hola-mundo', '', '', '2016-11-16 18:16:13', '2016-11-16 18:16:13', '', 0, 'http://localhost/capitalaudit/?p=1', 0, 'post', '', 1),
(2, 1, '2016-11-16 15:43:08', '2016-11-16 15:43:08', 'Esto es una página de ejemplo. Es diferente a una entrada del blog, ya que permanecerá fija en un lugar y se mostrará en la navegación de su sitio (en la mayoría de temas). La mayoría de personas empieza con una página Acerca de, que brinda información a los visitantes de su sitio. Se podría decir algo como esto:\n\n<blockquote>¡Hola! Durante el día soy un mensajero, un aspirante a actor por la noche, y este es mi blog. Vivo en Lima, tengo un enorme perro llamado Pocho, y me gusta el Pisco Sour. (Y caminar bajo la lluvia.)</blockquote>\n\n...o algo como esto:\n\n<blockquote>La compañía XYZ, se fundó en 1971, y ha estado desde entonces, proporcionando artilugios de calidad al público. Está situado en la ciudad de Lima, XYZ emplea a más de 2,000 personas y hace todo tipo de cosas sorprendentes para la comunidad limeña.</blockquote>\n\nComo nuevo usuario de WordPress, usted debe ir a <a href="http://localhost/capitalaudit/wp-admin/">su panel</a> para eliminar esta página y crear nuevas para su contenido. ¡Que se divierta!', 'Página de ejemplo', '', 'trash', 'closed', 'open', '', 'pagina-de-ejemplo__trashed', '', '', '2016-11-16 16:15:31', '2016-11-16 16:15:31', '', 0, 'http://localhost/capitalaudit/?page_id=2', 0, 'page', '', 0),
(3, 1, '2016-11-16 15:45:00', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-11-16 15:45:00', '0000-00-00 00:00:00', '', 0, 'http://localhost/capitalaudit/?p=3', 0, 'post', '', 0),
(4, 1, '2016-11-16 16:06:18', '2016-11-16 16:06:18', 'Experiencias , Profesionales de Excelencia,\r\n\r\nMetodología y Tecnología', 'Soluciones e Inventarios', '', 'publish', 'closed', 'closed', '', 'soluciones-e-inventarios', '', '', '2016-11-16 16:06:18', '2016-11-16 16:06:18', '', 0, 'http://localhost/capitalaudit/?post_type=banner&#038;p=4', 0, 'banner', '', 0),
(5, 1, '2016-11-16 16:05:52', '2016-11-16 16:05:52', '', 'slider_inventarios_capital_audit_1', '', 'inherit', 'open', 'closed', '', 'slider_inventarios_capital_audit_1', '', '', '2016-11-16 16:05:52', '2016-11-16 16:05:52', '', 4, 'http://localhost/capitalaudit/wp-content/uploads/2016/11/slider_inventarios_capital_audit_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(6, 1, '2016-11-16 16:06:43', '2016-11-16 16:06:43', 'Experiencias , Profesionales de Excelencia,\r\n\r\nMetodología y Tecnología', 'Soluciones e Inventarios', '', 'publish', 'closed', 'closed', '', 'soluciones-e-inventarios-2', '', '', '2016-11-16 16:06:49', '2016-11-16 16:06:49', '', 0, 'http://localhost/capitalaudit/?post_type=banner&#038;p=6', 0, 'banner', '', 0),
(7, 1, '2016-11-16 16:06:52', '2016-11-16 16:06:52', 'Experiencias , Profesionales de Excelencia,\r\n\r\nMetodología y Tecnología', 'Soluciones e Inventarios 3', '', 'publish', 'closed', 'closed', '', 'soluciones-e-inventarios-3', '', '', '2016-11-16 16:06:59', '2016-11-16 16:06:59', '', 0, 'http://localhost/capitalaudit/?post_type=banner&#038;p=7', 0, 'banner', '', 0),
(8, 1, '2016-11-16 16:15:29', '2016-11-16 16:15:29', 'Esto es una página de ejemplo. Es diferente a una entrada del blog, ya que permanecerá fija en un lugar y se mostrará en la navegación de su sitio (en la mayoría de temas). La mayoría de personas empieza con una página Acerca de, que brinda información a los visitantes de su sitio. Se podría decir algo como esto:\n\n<blockquote>¡Hola! Durante el día soy un mensajero, un aspirante a actor por la noche, y este es mi blog. Vivo en Lima, tengo un enorme perro llamado Pocho, y me gusta el Pisco Sour. (Y caminar bajo la lluvia.)</blockquote>\n\n...o algo como esto:\n\n<blockquote>La compañía XYZ, se fundó en 1971, y ha estado desde entonces, proporcionando artilugios de calidad al público. Está situado en la ciudad de Lima, XYZ emplea a más de 2,000 personas y hace todo tipo de cosas sorprendentes para la comunidad limeña.</blockquote>\n\nComo nuevo usuario de WordPress, usted debe ir a <a href="http://localhost/capitalaudit/wp-admin/">su panel</a> para eliminar esta página y crear nuevas para su contenido. ¡Que se divierta!', 'Página de ejemplo', '', 'trash', 'closed', 'open', '', '__trashed', '', '', '2016-11-16 16:15:35', '2016-11-16 16:15:35', '', 0, 'http://localhost/capitalaudit/?page_id=8', 0, 'page', '', 0),
(9, 1, '2016-11-16 16:15:31', '2016-11-16 16:15:31', 'Esto es una página de ejemplo. Es diferente a una entrada del blog, ya que permanecerá fija en un lugar y se mostrará en la navegación de su sitio (en la mayoría de temas). La mayoría de personas empieza con una página Acerca de, que brinda información a los visitantes de su sitio. Se podría decir algo como esto:\n\n<blockquote>¡Hola! Durante el día soy un mensajero, un aspirante a actor por la noche, y este es mi blog. Vivo en Lima, tengo un enorme perro llamado Pocho, y me gusta el Pisco Sour. (Y caminar bajo la lluvia.)</blockquote>\n\n...o algo como esto:\n\n<blockquote>La compañía XYZ, se fundó en 1971, y ha estado desde entonces, proporcionando artilugios de calidad al público. Está situado en la ciudad de Lima, XYZ emplea a más de 2,000 personas y hace todo tipo de cosas sorprendentes para la comunidad limeña.</blockquote>\n\nComo nuevo usuario de WordPress, usted debe ir a <a href="http://localhost/capitalaudit/wp-admin/">su panel</a> para eliminar esta página y crear nuevas para su contenido. ¡Que se divierta!', 'Página de ejemplo', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2016-11-16 16:15:31', '2016-11-16 16:15:31', '', 2, 'http://localhost/capitalaudit/2016/11/16/2-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2016-11-16 16:15:35', '2016-11-16 16:15:35', 'Esto es una página de ejemplo. Es diferente a una entrada del blog, ya que permanecerá fija en un lugar y se mostrará en la navegación de su sitio (en la mayoría de temas). La mayoría de personas empieza con una página Acerca de, que brinda información a los visitantes de su sitio. Se podría decir algo como esto:\n\n<blockquote>¡Hola! Durante el día soy un mensajero, un aspirante a actor por la noche, y este es mi blog. Vivo en Lima, tengo un enorme perro llamado Pocho, y me gusta el Pisco Sour. (Y caminar bajo la lluvia.)</blockquote>\n\n...o algo como esto:\n\n<blockquote>La compañía XYZ, se fundó en 1971, y ha estado desde entonces, proporcionando artilugios de calidad al público. Está situado en la ciudad de Lima, XYZ emplea a más de 2,000 personas y hace todo tipo de cosas sorprendentes para la comunidad limeña.</blockquote>\n\nComo nuevo usuario de WordPress, usted debe ir a <a href="http://localhost/capitalaudit/wp-admin/">su panel</a> para eliminar esta página y crear nuevas para su contenido. ¡Que se divierta!', 'Página de ejemplo', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2016-11-16 16:15:35', '2016-11-16 16:15:35', '', 8, 'http://localhost/capitalaudit/2016/11/16/8-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2016-11-16 16:15:46', '2016-11-16 16:15:46', '', 'Inicio', '', 'publish', 'closed', 'closed', '', 'inicio', '', '', '2016-11-16 16:15:46', '2016-11-16 16:15:46', '', 0, 'http://localhost/capitalaudit/?page_id=11', 0, 'page', '', 0),
(12, 1, '2016-11-16 16:15:46', '2016-11-16 16:15:46', '', 'Inicio', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2016-11-16 16:15:46', '2016-11-16 16:15:46', '', 11, 'http://localhost/capitalaudit/2016/11/16/11-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2016-11-16 16:15:50', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-11-16 16:15:50', '0000-00-00 00:00:00', '', 0, 'http://localhost/capitalaudit/?page_id=13', 0, 'page', '', 0),
(14, 1, '2016-11-16 16:15:56', '2016-11-16 16:15:56', 'Morbi nec nisl orci. Morbi mattis lobortis massa, eget commodo nulla lacinia quis. Integer posuere lacus sit amet nisi egestas hendrerit. Curabitur egestas neque gravida massa convallis, et rhoncus magna ullamcorper. Maecenas libero tellus, bibendum in mauris at, gravida ullamcorper urna. Fusce eu libero in nisi scelerisque mattis.\r\n\r\nQuisque purus dui, pharetra eget sodales ut, mattis quis lorem. Morbi quis sem id leo sollicitudin hendrerit. Suspendisse ut dui tincidunt sem ultricies fermentum at sit amet ex. Nam a metus a dui placerat consequat ac fringilla arcu. Pellentesque efficitur rutrum nibh sed fermentum. .', 'Empresa', '', 'publish', 'closed', 'closed', '', 'empresa', '', '', '2016-11-16 18:53:45', '2016-11-16 18:53:45', '', 0, 'http://localhost/capitalaudit/?page_id=14', 0, 'page', '', 0),
(15, 1, '2016-11-16 16:15:56', '2016-11-16 16:15:56', '', 'Empresa', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2016-11-16 16:15:56', '2016-11-16 16:15:56', '', 14, 'http://localhost/capitalaudit/2016/11/16/14-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2016-11-16 16:16:22', '2016-11-16 16:16:22', '', 'Servicios', '', 'publish', 'closed', 'closed', '', 'servicios', '', '', '2016-11-16 18:58:54', '2016-11-16 18:58:54', '', 0, 'http://localhost/capitalaudit/?page_id=16', 0, 'page', '', 0),
(17, 1, '2016-11-16 16:16:22', '2016-11-16 16:16:22', '', 'Servicios', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2016-11-16 16:16:22', '2016-11-16 16:16:22', '', 16, 'http://localhost/capitalaudit/2016/11/16/16-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2016-11-16 16:16:37', '2016-11-16 16:16:37', '', 'Artículos', '', 'publish', 'closed', 'closed', '', 'articulos', '', '', '2016-11-16 19:02:47', '2016-11-16 19:02:47', '', 0, 'http://localhost/capitalaudit/?page_id=18', 0, 'page', '', 0),
(19, 1, '2016-11-16 16:16:37', '2016-11-16 16:16:37', '', 'Artículos', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2016-11-16 16:16:37', '2016-11-16 16:16:37', '', 18, 'http://localhost/capitalaudit/2016/11/16/18-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2016-11-16 16:17:06', '2016-11-16 16:17:06', '', 'Galería', '', 'publish', 'closed', 'closed', '', 'galeria', '', '', '2016-11-16 19:27:02', '2016-11-16 19:27:02', '', 0, 'http://localhost/capitalaudit/?page_id=20', 0, 'page', '', 0),
(21, 1, '2016-11-16 16:17:06', '2016-11-16 16:17:06', '', 'Galería', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2016-11-16 16:17:06', '2016-11-16 16:17:06', '', 20, 'http://localhost/capitalaudit/2016/11/16/20-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2016-11-16 16:17:19', '2016-11-16 16:17:19', '', 'Contacto', '', 'publish', 'closed', 'closed', '', 'contacto', '', '', '2016-11-16 19:03:36', '2016-11-16 19:03:36', '', 0, 'http://localhost/capitalaudit/?page_id=22', 0, 'page', '', 0),
(23, 1, '2016-11-16 16:17:19', '2016-11-16 16:17:19', '', 'Contacto', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2016-11-16 16:17:19', '2016-11-16 16:17:19', '', 22, 'http://localhost/capitalaudit/2016/11/16/22-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2016-11-16 16:17:31', '0000-00-00 00:00:00', '', 'Inicio', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-11-16 16:17:31', '0000-00-00 00:00:00', '', 0, 'http://localhost/capitalaudit/?p=24', 1, 'nav_menu_item', '', 0),
(25, 1, '2016-11-16 16:17:56', '2016-11-16 16:17:56', ' ', '', '', 'publish', 'closed', 'closed', '', '25', '', '', '2016-11-16 20:23:23', '2016-11-16 20:23:23', '', 0, 'http://localhost/capitalaudit/?p=25', 4, 'nav_menu_item', '', 0),
(26, 1, '2016-11-16 16:17:56', '2016-11-16 16:17:56', ' ', '', '', 'publish', 'closed', 'closed', '', '26', '', '', '2016-11-16 20:23:23', '2016-11-16 20:23:23', '', 0, 'http://localhost/capitalaudit/?p=26', 7, 'nav_menu_item', '', 0),
(27, 1, '2016-11-16 16:17:56', '2016-11-16 16:17:56', ' ', '', '', 'publish', 'closed', 'closed', '', '27', '', '', '2016-11-16 20:23:23', '2016-11-16 20:23:23', '', 0, 'http://localhost/capitalaudit/?p=27', 2, 'nav_menu_item', '', 0),
(28, 1, '2016-11-16 16:17:56', '2016-11-16 16:17:56', ' ', '', '', 'publish', 'closed', 'closed', '', '28', '', '', '2016-11-16 20:23:23', '2016-11-16 20:23:23', '', 0, 'http://localhost/capitalaudit/?p=28', 5, 'nav_menu_item', '', 0),
(29, 1, '2016-11-16 16:17:56', '2016-11-16 16:17:56', ' ', '', '', 'publish', 'closed', 'closed', '', '29', '', '', '2016-11-16 20:23:23', '2016-11-16 20:23:23', '', 0, 'http://localhost/capitalaudit/?p=29', 1, 'nav_menu_item', '', 0),
(30, 1, '2016-11-16 16:17:56', '2016-11-16 16:17:56', ' ', '', '', 'publish', 'closed', 'closed', '', '30', '', '', '2016-11-16 20:23:23', '2016-11-16 20:23:23', '', 0, 'http://localhost/capitalaudit/?p=30', 3, 'nav_menu_item', '', 0),
(31, 1, '2016-11-16 18:07:06', '2016-11-16 18:07:06', '', 'Toma de Inventarios', '', 'publish', 'closed', 'closed', '', 'toma-de-inventarios', '', '', '2016-11-16 18:07:45', '2016-11-16 18:07:45', '', 0, 'http://localhost/capitalaudit/?post_type=servicio&#038;p=31', 0, 'servicio', '', 0),
(32, 1, '2016-11-16 18:06:46', '2016-11-16 18:06:46', '', 'inicio_nosotros_inventarios_capital_audit', '', 'inherit', 'open', 'closed', '', 'inicio_nosotros_inventarios_capital_audit', '', '', '2016-11-16 18:06:46', '2016-11-16 18:06:46', '', 31, 'http://localhost/capitalaudit/wp-content/uploads/2016/11/inicio_nosotros_inventarios_capital_audit.jpg', 0, 'attachment', 'image/jpeg', 0),
(33, 1, '2016-11-16 18:07:24', '2016-11-16 18:07:24', '', 'Toma de Inventarios', '', 'publish', 'closed', 'closed', '', 'toma-de-inventarios-4', '', '', '2016-11-16 18:07:45', '2016-11-16 18:07:45', '', 0, 'http://localhost/capitalaudit/?post_type=servicio&#038;p=33', 0, 'servicio', '', 0),
(34, 1, '2016-11-16 18:07:45', '2016-11-16 18:07:45', '', 'Toma de Inventarios', '', 'publish', 'closed', 'closed', '', 'toma-de-inventarios-3', '', '', '2016-11-16 18:07:45', '2016-11-16 18:07:45', '', 0, 'http://localhost/capitalaudit/?post_type=servicio&#038;p=34', 0, 'servicio', '', 0),
(35, 1, '2016-11-16 18:07:45', '2016-11-16 18:07:45', '', 'Toma de Inventarios', '', 'publish', 'closed', 'closed', '', 'toma-de-inventarios-2', '', '', '2016-11-16 18:07:45', '2016-11-16 18:07:45', '', 0, 'http://localhost/capitalaudit/?post_type=servicio&#038;p=35', 0, 'servicio', '', 0),
(36, 1, '2016-11-16 18:13:03', '2016-11-16 18:13:03', '', 'inicio_nosotros_inventarios_capital_audit', '', 'inherit', 'open', 'closed', '', 'inicio_nosotros_inventarios_capital_audit-2', '', '', '2016-11-16 18:13:03', '2016-11-16 18:13:03', '', 0, 'http://localhost/capitalaudit/wp-content/uploads/2016/11/inicio_nosotros_inventarios_capital_audit-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(37, 1, '2016-11-16 18:16:13', '2016-11-16 18:16:13', 'Bienvenido a WordPress. Esta es su primera entrada. Edítela o bórrela, y ¡empiece a escribir!', '¡Hola mundo!', '', 'publish', 'open', 'open', '', 'hola-mundo-3', '', '', '2016-11-16 18:16:13', '2016-11-16 18:16:13', '', 0, 'http://localhost/capitalaudit/?p=37', 0, 'post', '', 0),
(38, 1, '2016-11-16 18:16:13', '2016-11-16 18:16:13', 'Bienvenido a WordPress. Esta es su primera entrada. Edítela o bórrela, y ¡empiece a escribir!', '¡Hola mundo!', '', 'publish', 'open', 'open', '', 'hola-mundo-2', '', '', '2016-11-16 18:16:13', '2016-11-16 18:16:13', '', 0, 'http://localhost/capitalaudit/?p=38', 0, 'post', '', 0),
(39, 1, '2016-11-16 18:16:13', '2016-11-16 18:16:13', 'Bienvenido a WordPress. Esta es su primera entrada. Edítela o bórrela, y ¡empiece a escribir!', '¡Hola mundo!', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2016-11-16 18:16:13', '2016-11-16 18:16:13', '', 38, 'http://localhost/capitalaudit/2016/11/16/38-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2016-11-16 18:16:13', '2016-11-16 18:16:13', 'Bienvenido a WordPress. Esta es su primera entrada. Edítela o bórrela, y ¡empiece a escribir!', '¡Hola mundo!', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2016-11-16 18:16:13', '2016-11-16 18:16:13', '', 37, 'http://localhost/capitalaudit/2016/11/16/37-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2016-11-16 18:16:13', '2016-11-16 18:16:13', 'Bienvenido a WordPress. Esta es su primera entrada. Edítela o bórrela, y ¡empiece a escribir!', '¡Hola mundo!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2016-11-16 18:16:13', '2016-11-16 18:16:13', '', 1, 'http://localhost/capitalaudit/2016/11/16/1-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2016-11-16 18:53:45', '2016-11-16 18:53:45', 'Morbi nec nisl orci. Morbi mattis lobortis massa, eget commodo nulla lacinia quis. Integer posuere lacus sit amet nisi egestas hendrerit. Curabitur egestas neque gravida massa convallis, et rhoncus magna ullamcorper. Maecenas libero tellus, bibendum in mauris at, gravida ullamcorper urna. Fusce eu libero in nisi scelerisque mattis.\r\n\r\nQuisque purus dui, pharetra eget sodales ut, mattis quis lorem. Morbi quis sem id leo sollicitudin hendrerit. Suspendisse ut dui tincidunt sem ultricies fermentum at sit amet ex. Nam a metus a dui placerat consequat ac fringilla arcu. Pellentesque efficitur rutrum nibh sed fermentum. .', 'Empresa', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2016-11-16 18:53:45', '2016-11-16 18:53:45', '', 14, 'http://localhost/capitalaudit/2016/11/16/14-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2016-11-16 19:22:12', '2016-11-16 19:22:12', '', 'Imágen 1', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2016-11-16 19:26:07', '2016-11-16 19:26:07', '', 0, 'http://localhost/capitalaudit/?post_type=theme-image-gallery&#038;p=43', 0, 'theme-image-gallery', '', 0),
(44, 1, '2016-11-16 19:25:59', '2016-11-16 19:25:59', '', 'Imágen 1', '', 'publish', 'closed', 'closed', '', 'imagen-1', '', '', '2016-11-16 19:25:59', '2016-11-16 19:25:59', '', 0, 'http://localhost/capitalaudit/?post_type=theme-image-gallery&#038;p=44', 0, 'theme-image-gallery', '', 0),
(45, 1, '2016-11-16 19:25:38', '2016-11-16 19:25:38', '', 'sample-imagen', '', 'inherit', 'open', 'closed', '', 'sample-imagen', '', '', '2016-11-16 19:25:38', '2016-11-16 19:25:38', '', 44, 'http://localhost/capitalaudit/wp-content/uploads/2016/11/sample-imagen.jpg', 0, 'attachment', 'image/jpeg', 0),
(46, 1, '2016-11-16 19:26:31', '2016-11-16 19:26:31', '', 'Imágen 1', '', 'publish', 'closed', 'closed', '', 'imagen-1-2', '', '', '2016-11-16 19:26:36', '2016-11-16 19:26:36', '', 0, 'http://localhost/capitalaudit/?post_type=theme-image-gallery&#038;p=46', 0, 'theme-image-gallery', '', 0),
(47, 1, '2016-11-16 19:26:38', '2016-11-16 19:26:38', '', 'Imágen 1', '', 'publish', 'closed', 'closed', '', 'imagen-1-3', '', '', '2016-11-16 19:26:44', '2016-11-16 19:26:44', '', 0, 'http://localhost/capitalaudit/?post_type=theme-image-gallery&#038;p=47', 0, 'theme-image-gallery', '', 0),
(48, 1, '2016-11-16 19:26:46', '2016-11-16 19:26:46', '', 'Imágen 1', '', 'publish', 'closed', 'closed', '', 'imagen-1-4', '', '', '2016-11-16 19:26:51', '2016-11-16 19:26:51', '', 0, 'http://localhost/capitalaudit/?post_type=theme-image-gallery&#038;p=48', 0, 'theme-image-gallery', '', 0),
(49, 1, '2016-11-16 20:21:07', '2016-11-16 20:21:07', '', 'Videos', '', 'publish', 'closed', 'closed', '', 'videos', '', '', '2016-11-16 20:21:07', '2016-11-16 20:21:07', '', 0, 'http://localhost/capitalaudit/?page_id=49', 0, 'page', '', 0),
(50, 1, '2016-11-16 20:21:07', '2016-11-16 20:21:07', '', 'Videos', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2016-11-16 20:21:07', '2016-11-16 20:21:07', '', 49, 'http://localhost/capitalaudit/2016/11/16/49-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2016-11-16 20:22:21', '2016-11-16 20:22:21', 'https://www.youtube.com/watch?v=OPf0YbXqDm0', 'Video 1', '', 'publish', 'closed', 'closed', '', 'video-1', '', '', '2016-11-16 20:23:07', '2016-11-16 20:23:07', '', 0, 'http://localhost/capitalaudit/?post_type=theme-video-gallery&#038;p=51', 0, 'theme-video-gallery', '', 0),
(52, 1, '2016-11-16 20:23:07', '2016-11-16 20:23:07', 'https://www.youtube.com/watch?v=OPf0YbXqDm0', 'Video 1', '', 'publish', 'closed', 'closed', '', 'video-1-4', '', '', '2016-11-16 20:23:07', '2016-11-16 20:23:07', '', 0, 'http://localhost/capitalaudit/?post_type=theme-video-gallery&#038;p=52', 0, 'theme-video-gallery', '', 0),
(53, 1, '2016-11-16 20:23:07', '2016-11-16 20:23:07', 'https://www.youtube.com/watch?v=OPf0YbXqDm0', 'Video 1', '', 'publish', 'closed', 'closed', '', 'video-1-3', '', '', '2016-11-16 20:23:07', '2016-11-16 20:23:07', '', 0, 'http://localhost/capitalaudit/?post_type=theme-video-gallery&#038;p=53', 0, 'theme-video-gallery', '', 0),
(54, 1, '2016-11-16 20:23:07', '2016-11-16 20:23:07', 'https://www.youtube.com/watch?v=OPf0YbXqDm0', 'Video 1', '', 'publish', 'closed', 'closed', '', 'video-1-2', '', '', '2016-11-16 20:23:07', '2016-11-16 20:23:07', '', 0, 'http://localhost/capitalaudit/?post_type=theme-video-gallery&#038;p=54', 0, 'theme-video-gallery', '', 0),
(55, 1, '2016-11-16 20:23:23', '2016-11-16 20:23:23', ' ', '', '', 'publish', 'closed', 'closed', '', '55', '', '', '2016-11-16 20:23:23', '2016-11-16 20:23:23', '', 0, 'http://localhost/capitalaudit/?p=55', 6, 'nav_menu_item', '', 0) ;

#
# End of data contents of table `wp_capitalaudit_posts`
# --------------------------------------------------------



#
# Delete any existing table `wp_capitalaudit_term_relationships`
#

DROP TABLE IF EXISTS `wp_capitalaudit_term_relationships`;


#
# Table structure of table `wp_capitalaudit_term_relationships`
#

CREATE TABLE `wp_capitalaudit_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_capitalaudit_term_relationships`
#
INSERT INTO `wp_capitalaudit_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(5, 2, 0),
(25, 3, 0),
(26, 3, 0),
(27, 3, 0),
(28, 3, 0),
(29, 3, 0),
(30, 3, 0),
(32, 4, 0),
(36, 5, 0),
(37, 1, 0),
(38, 1, 0),
(45, 6, 0),
(55, 3, 0) ;

#
# End of data contents of table `wp_capitalaudit_term_relationships`
# --------------------------------------------------------



#
# Delete any existing table `wp_capitalaudit_term_taxonomy`
#

DROP TABLE IF EXISTS `wp_capitalaudit_term_taxonomy`;


#
# Table structure of table `wp_capitalaudit_term_taxonomy`
#

CREATE TABLE `wp_capitalaudit_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_capitalaudit_term_taxonomy`
#
INSERT INTO `wp_capitalaudit_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 3),
(2, 2, 'wpmf-category', '', 0, 0),
(3, 3, 'nav_menu', '', 0, 7),
(4, 4, 'wpmf-category', '', 0, 0),
(5, 5, 'wpmf-category', '', 0, 0),
(6, 6, 'wpmf-category', '', 0, 0) ;

#
# End of data contents of table `wp_capitalaudit_term_taxonomy`
# --------------------------------------------------------



#
# Delete any existing table `wp_capitalaudit_termmeta`
#

DROP TABLE IF EXISTS `wp_capitalaudit_termmeta`;


#
# Table structure of table `wp_capitalaudit_termmeta`
#

CREATE TABLE `wp_capitalaudit_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_capitalaudit_termmeta`
#

#
# End of data contents of table `wp_capitalaudit_termmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_capitalaudit_terms`
#

DROP TABLE IF EXISTS `wp_capitalaudit_terms`;


#
# Table structure of table `wp_capitalaudit_terms`
#

CREATE TABLE `wp_capitalaudit_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_capitalaudit_terms`
#
INSERT INTO `wp_capitalaudit_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sin categoría', 'sin-categoria', 0),
(2, 'SLIDERS HOME', 'sliders-home', 1),
(3, 'Menú Principal', 'menu-principal', 0),
(4, 'SERVICIOS', 'servicioas', 1),
(5, 'NOSOTROS', 'nosotros', 1),
(6, 'GALERÍA IMÁGENES', 'galeria-imagenes', 1) ;

#
# End of data contents of table `wp_capitalaudit_terms`
# --------------------------------------------------------



#
# Delete any existing table `wp_capitalaudit_usermeta`
#

DROP TABLE IF EXISTS `wp_capitalaudit_usermeta`;


#
# Table structure of table `wp_capitalaudit_usermeta`
#

CREATE TABLE `wp_capitalaudit_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_capitalaudit_usermeta`
#
INSERT INTO `wp_capitalaudit_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'captital_audit'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capitalaudit_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_capitalaudit_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', ''),
(13, 1, 'show_welcome_panel', '1'),
(15, 1, 'wp_capitalaudit_dashboard_quick_press_last_post_id', '3'),
(16, 1, 'session_tokens', 'a:5:{s:64:"358380687a8ffa284f0667689aaca41ec1404d9c3cab85be635a7b6fab435f91";a:4:{s:10:"expiration";i:1479484621;s:2:"ip";s:3:"::1";s:2:"ua";s:101:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36";s:5:"login";i:1479311821;}s:64:"9c6137ce9f451754baec900e54bc8ca18e31c23f0dd96cd8ad1d4aec79e188f2";a:4:{s:10:"expiration";i:1479484629;s:2:"ip";s:3:"::1";s:2:"ua";s:101:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36";s:5:"login";i:1479311829;}s:64:"82cc4c86c9dfd1232a3be2f7f99e3b198cc6cc97eab55e4ed19d00cd09747f5d";a:4:{s:10:"expiration";i:1479484644;s:2:"ip";s:3:"::1";s:2:"ua";s:101:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36";s:5:"login";i:1479311844;}s:64:"2570af10d62f148d673bbea75fa65a0cc29836365106e3d4732a086a9e7a00e1";a:4:{s:10:"expiration";i:1479500452;s:2:"ip";s:3:"::1";s:2:"ua";s:101:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36";s:5:"login";i:1479327652;}s:64:"0b2d1521ba24981d1b6343a74bae564dc38ed7081c3fd3eb50c5b882deb55f87";a:4:{s:10:"expiration";i:1479505383;s:2:"ip";s:3:"::1";s:2:"ua";s:101:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36";s:5:"login";i:1479332583;}}'),
(17, 1, 'meta-box-order_banner', 'a:3:{s:4:"side";s:55:"submitdiv,postimagediv,banner_categorydiv,pageparentdiv";s:6:"normal";s:30:"postexcerpt,postcustom,slugdiv";s:8:"advanced";s:0:"";}'),
(18, 1, 'screen_layout_banner', '2'),
(19, 1, 'wp_capitalaudit_user-settings', 'libraryContent=browse'),
(20, 1, 'wp_capitalaudit_user-settings-time', '1479312374'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:5:{i:0;s:20:"add-post-type-banner";i:1;s:22:"add-post-type-servicio";i:2;s:12:"add-post_tag";i:3;s:15:"add-post_format";i:4;s:19:"add-banner_category";}'),
(23, 1, '_clear_post_cache_on_update', '0'),
(24, 1, 'nav_menu_recently_edited', '3') ;

#
# End of data contents of table `wp_capitalaudit_usermeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_capitalaudit_users`
#

DROP TABLE IF EXISTS `wp_capitalaudit_users`;


#
# Table structure of table `wp_capitalaudit_users`
#

CREATE TABLE `wp_capitalaudit_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_capitalaudit_users`
#
INSERT INTO `wp_capitalaudit_users` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$B/mKTmHL/Jjtj7/sTDoA2BXpOe6Chm.', 'admin', 'jgomez@ingenioart.com', '', '2016-11-16 15:43:07', '', 0, 'admin') ;

#
# End of data contents of table `wp_capitalaudit_users`
# --------------------------------------------------------

#
# Add constraints back in and apply any alter data queries.
#

