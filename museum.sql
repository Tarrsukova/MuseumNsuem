-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Ноя 30 2016 г., 09:06
-- Версия сервера: 5.5.25
-- Версия PHP: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `museum`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Автор комментария', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2016-11-30 10:42:23', '2016-11-30 07:42:23', 'Привет! Это комментарий.\nЧтобы начать модерировать, редактировать и удалять комментарии, перейдите на экран «Комментарии» в консоли.\nАватары авторов комментариев загружаются с сервиса <a href="https://ru.gravatar.com">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=170 ;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://test1.ru', 'yes'),
(2, 'home', 'http://test1.ru', 'yes'),
(3, 'blogname', 'MuseumNSUEM', 'yes'),
(4, 'blogdescription', 'Ещё один сайт на WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'university18@yandex.ru', 'yes'),
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
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:88:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'twentyfourteen', 'yes'),
(41, 'stylesheet', 'twentyfourteen', 'yes'),
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
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
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
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'WPLANG', 'ru_RU', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'cron', 'a:4:{i:1480534948;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1480578351;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1480579599;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(109, 'auto_updater.lock', '1480491769', 'no'),
(114, '_site_transient_timeout_browser_0f1c79818040d6247bc7af177e1dabb8', '1481096753', 'no'),
(115, '_site_transient_browser_0f1c79818040d6247bc7af177e1dabb8', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"54.0.2840.99";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'no'),
(116, 'can_compress_scripts', '1', 'no'),
(117, '_site_transient_timeout_popular_importers_79150e4638a61ce0bf34457fa0c791db', '1480664815', 'no'),
(118, '_site_transient_popular_importers_79150e4638a61ce0bf34457fa0c791db', 'a:2:{s:9:"importers";a:8:{s:7:"blogger";a:4:{s:4:"name";s:7:"Blogger";s:11:"description";s:54:"Import posts, comments, and users from a Blogger blog.";s:11:"plugin-slug";s:16:"blogger-importer";s:11:"importer-id";s:7:"blogger";}s:9:"wpcat2tag";a:4:{s:4:"name";s:29:"Categories and Tags Converter";s:11:"description";s:71:"Convert existing categories to tags or tags to categories, selectively.";s:11:"plugin-slug";s:18:"wpcat2tag-importer";s:11:"importer-id";s:10:"wp-cat2tag";}s:11:"livejournal";a:4:{s:4:"name";s:11:"LiveJournal";s:11:"description";s:46:"Import posts from LiveJournal using their API.";s:11:"plugin-slug";s:20:"livejournal-importer";s:11:"importer-id";s:11:"livejournal";}s:11:"movabletype";a:4:{s:4:"name";s:24:"Movable Type and TypePad";s:11:"description";s:62:"Import posts and comments from a Movable Type or TypePad blog.";s:11:"plugin-slug";s:20:"movabletype-importer";s:11:"importer-id";s:2:"mt";}s:4:"opml";a:4:{s:4:"name";s:8:"Blogroll";s:11:"description";s:28:"Import links in OPML format.";s:11:"plugin-slug";s:13:"opml-importer";s:11:"importer-id";s:4:"opml";}s:3:"rss";a:4:{s:4:"name";s:3:"RSS";s:11:"description";s:30:"Import posts from an RSS feed.";s:11:"plugin-slug";s:12:"rss-importer";s:11:"importer-id";s:3:"rss";}s:6:"tumblr";a:4:{s:4:"name";s:6:"Tumblr";s:11:"description";s:53:"Import posts &amp; media from Tumblr using their API.";s:11:"plugin-slug";s:15:"tumblr-importer";s:11:"importer-id";s:6:"tumblr";}s:9:"wordpress";a:4:{s:4:"name";s:9:"WordPress";s:11:"description";s:96:"Import posts, pages, comments, custom fields, categories, and tags from a WordPress export file.";s:11:"plugin-slug";s:18:"wordpress-importer";s:11:"importer-id";s:9:"wordpress";}}s:10:"translated";b:0;}', 'no'),
(120, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:65:"https://downloads.wordpress.org/release/ru_RU/wordpress-4.6.1.zip";s:6:"locale";s:5:"ru_RU";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:65:"https://downloads.wordpress.org/release/ru_RU/wordpress-4.6.1.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.6.1";s:7:"version";s:5:"4.6.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1480492117;s:15:"version_checked";s:5:"4.6.1";s:12:"translations";a:0:{}}', 'no'),
(122, '_site_transient_update_themes', 'O:8:"stdClass":1:{s:12:"last_checked";i:1480492124;}', 'no'),
(125, '_site_transient_update_plugins', 'O:8:"stdClass":1:{s:12:"last_checked";i:1480493193;}', 'no'),
(131, 'widget_widget_twentyfourteen_ephemera', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(135, 'theme_mods_twentysixteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1480493320;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(136, 'current_theme', 'Twenty Fourteen', 'yes'),
(137, 'theme_mods_twentyfourteen', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:2;}}', 'yes'),
(138, 'theme_switched', '', 'yes'),
(139, 'theme_switched_via_customizer', '', 'yes'),
(140, 'nav_menu_options', 'a:1:{s:8:"auto_add";a:0:{}}', 'yes'),
(164, '_site_transient_timeout_theme_roots', '1480497978', 'no'),
(165, '_site_transient_theme_roots', 'a:3:{s:13:"twentyfifteen";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no'),
(168, '_transient_featured_content_ids', 'a:0:{}', 'yes'),
(169, '_transient_is_multi_author', '0', 'yes');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=288 ;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_edit_last', '1'),
(3, 4, '_edit_lock', '1480493229:1'),
(4, 8, '_edit_last', '1'),
(5, 8, '_edit_lock', '1480493256:1'),
(6, 11, '_edit_last', '1'),
(7, 11, '_edit_lock', '1480493290:1'),
(8, 14, '_edit_last', '1'),
(9, 14, '_edit_lock', '1480493314:1'),
(10, 17, '_edit_last', '1'),
(11, 17, '_wp_page_template', 'default'),
(12, 17, '_edit_lock', '1480493343:1'),
(13, 20, '_edit_last', '1'),
(14, 20, '_wp_page_template', 'default'),
(15, 20, '_edit_lock', '1480493367:1'),
(16, 23, '_edit_last', '1'),
(17, 23, '_edit_lock', '1480493498:1'),
(18, 23, '_wp_page_template', 'default'),
(19, 26, '_menu_item_type', 'post_type'),
(20, 26, '_menu_item_menu_item_parent', '0'),
(21, 26, '_menu_item_object_id', '8'),
(22, 26, '_menu_item_object', 'page'),
(23, 26, '_menu_item_target', ''),
(24, 26, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(25, 26, '_menu_item_xfn', ''),
(26, 26, '_menu_item_url', ''),
(27, 27, '_menu_item_type', 'post_type'),
(28, 27, '_menu_item_menu_item_parent', '26'),
(29, 27, '_menu_item_object_id', '20'),
(30, 27, '_menu_item_object', 'page'),
(31, 27, '_menu_item_target', ''),
(32, 27, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(33, 27, '_menu_item_xfn', ''),
(34, 27, '_menu_item_url', ''),
(35, 28, '_menu_item_type', 'post_type'),
(36, 28, '_menu_item_menu_item_parent', '0'),
(37, 28, '_menu_item_object_id', '17'),
(38, 28, '_menu_item_object', 'page'),
(39, 28, '_menu_item_target', ''),
(40, 28, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(41, 28, '_menu_item_xfn', ''),
(42, 28, '_menu_item_url', ''),
(43, 29, '_menu_item_type', 'post_type'),
(44, 29, '_menu_item_menu_item_parent', '0'),
(45, 29, '_menu_item_object_id', '14'),
(46, 29, '_menu_item_object', 'page'),
(47, 29, '_menu_item_target', ''),
(48, 29, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(49, 29, '_menu_item_xfn', ''),
(50, 29, '_menu_item_url', ''),
(51, 30, '_menu_item_type', 'post_type'),
(52, 30, '_menu_item_menu_item_parent', '0'),
(53, 30, '_menu_item_object_id', '11'),
(54, 30, '_menu_item_object', 'page'),
(55, 30, '_menu_item_target', ''),
(56, 30, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(57, 30, '_menu_item_xfn', ''),
(58, 30, '_menu_item_url', ''),
(59, 31, '_menu_item_type', 'post_type'),
(60, 31, '_menu_item_menu_item_parent', '0'),
(61, 31, '_menu_item_object_id', '4'),
(62, 31, '_menu_item_object', 'page'),
(63, 31, '_menu_item_target', ''),
(64, 31, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(65, 31, '_menu_item_xfn', ''),
(66, 31, '_menu_item_url', ''),
(67, 32, '_edit_last', '1'),
(68, 32, '_wp_page_template', 'default'),
(69, 32, '_edit_lock', '1480493535:1'),
(70, 35, '_edit_last', '1'),
(71, 35, '_edit_lock', '1480493565:1'),
(72, 35, '_wp_page_template', 'default'),
(73, 38, '_edit_last', '1'),
(74, 38, '_wp_page_template', 'default'),
(75, 38, '_edit_lock', '1480493590:1'),
(76, 41, '_edit_last', '1'),
(77, 41, '_wp_page_template', 'default'),
(78, 41, '_edit_lock', '1480493631:1'),
(79, 44, '_menu_item_type', 'post_type'),
(80, 44, '_menu_item_menu_item_parent', '30'),
(81, 44, '_menu_item_object_id', '41'),
(82, 44, '_menu_item_object', 'page'),
(83, 44, '_menu_item_target', ''),
(84, 44, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(85, 44, '_menu_item_xfn', ''),
(86, 44, '_menu_item_url', ''),
(87, 45, '_menu_item_type', 'post_type'),
(88, 45, '_menu_item_menu_item_parent', '30'),
(89, 45, '_menu_item_object_id', '38'),
(90, 45, '_menu_item_object', 'page'),
(91, 45, '_menu_item_target', ''),
(92, 45, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(93, 45, '_menu_item_xfn', ''),
(94, 45, '_menu_item_url', ''),
(95, 46, '_menu_item_type', 'post_type'),
(96, 46, '_menu_item_menu_item_parent', '30'),
(97, 46, '_menu_item_object_id', '35'),
(98, 46, '_menu_item_object', 'page'),
(99, 46, '_menu_item_target', ''),
(100, 46, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(101, 46, '_menu_item_xfn', ''),
(102, 46, '_menu_item_url', ''),
(103, 47, '_menu_item_type', 'post_type'),
(104, 47, '_menu_item_menu_item_parent', '26'),
(105, 47, '_menu_item_object_id', '32'),
(106, 47, '_menu_item_object', 'page'),
(107, 47, '_menu_item_target', ''),
(108, 47, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(109, 47, '_menu_item_xfn', ''),
(110, 47, '_menu_item_url', ''),
(111, 48, '_menu_item_type', 'post_type'),
(112, 48, '_menu_item_menu_item_parent', '26'),
(113, 48, '_menu_item_object_id', '23'),
(114, 48, '_menu_item_object', 'page'),
(115, 48, '_menu_item_target', ''),
(116, 48, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(117, 48, '_menu_item_xfn', ''),
(118, 48, '_menu_item_url', ''),
(119, 49, '_edit_last', '1'),
(120, 49, '_wp_page_template', 'default'),
(121, 49, '_edit_lock', '1480493838:1'),
(122, 52, '_edit_last', '1'),
(123, 52, '_wp_page_template', 'default'),
(124, 52, '_edit_lock', '1480493863:1'),
(125, 55, '_edit_last', '1'),
(126, 55, '_wp_page_template', 'default'),
(127, 55, '_edit_lock', '1480493890:1'),
(128, 61, '_edit_last', '1'),
(129, 61, '_wp_page_template', 'default'),
(130, 61, '_edit_lock', '1480493962:1'),
(131, 64, '_edit_last', '1'),
(132, 64, '_wp_page_template', 'default'),
(133, 64, '_edit_lock', '1480494013:1'),
(134, 67, '_menu_item_type', 'post_type'),
(135, 67, '_menu_item_menu_item_parent', '29'),
(136, 67, '_menu_item_object_id', '64'),
(137, 67, '_menu_item_object', 'page'),
(138, 67, '_menu_item_target', ''),
(139, 67, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(140, 67, '_menu_item_xfn', ''),
(141, 67, '_menu_item_url', ''),
(142, 68, '_menu_item_type', 'post_type'),
(143, 68, '_menu_item_menu_item_parent', '29'),
(144, 68, '_menu_item_object_id', '61'),
(145, 68, '_menu_item_object', 'page'),
(146, 68, '_menu_item_target', ''),
(147, 68, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(148, 68, '_menu_item_xfn', ''),
(149, 68, '_menu_item_url', ''),
(150, 69, '_menu_item_type', 'post_type'),
(151, 69, '_menu_item_menu_item_parent', '29'),
(152, 69, '_menu_item_object_id', '55'),
(153, 69, '_menu_item_object', 'page'),
(154, 69, '_menu_item_target', ''),
(155, 69, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(156, 69, '_menu_item_xfn', ''),
(157, 69, '_menu_item_url', ''),
(158, 70, '_menu_item_type', 'post_type'),
(159, 70, '_menu_item_menu_item_parent', '29'),
(160, 70, '_menu_item_object_id', '52'),
(161, 70, '_menu_item_object', 'page'),
(162, 70, '_menu_item_target', ''),
(163, 70, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(164, 70, '_menu_item_xfn', ''),
(165, 70, '_menu_item_url', ''),
(166, 71, '_menu_item_type', 'post_type'),
(167, 71, '_menu_item_menu_item_parent', '29'),
(168, 71, '_menu_item_object_id', '49'),
(169, 71, '_menu_item_object', 'page'),
(170, 71, '_menu_item_target', ''),
(171, 71, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(172, 71, '_menu_item_xfn', ''),
(173, 71, '_menu_item_url', ''),
(174, 1, '_wp_trash_meta_status', 'publish'),
(175, 1, '_wp_trash_meta_time', '1480494127'),
(176, 1, '_wp_desired_post_slug', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80'),
(177, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:"1";}'),
(178, 73, '_edit_last', '1'),
(179, 73, '_wp_page_template', 'default'),
(180, 73, '_edit_lock', '1480494163:1'),
(181, 76, '_edit_last', '1'),
(182, 76, '_wp_page_template', 'default'),
(183, 76, '_edit_lock', '1480494193:1'),
(184, 79, '_edit_last', '1'),
(185, 79, '_wp_page_template', 'default'),
(186, 79, '_edit_lock', '1480494220:1'),
(187, 83, '_edit_last', '1'),
(188, 83, '_wp_page_template', 'default'),
(189, 83, '_edit_lock', '1480494243:1'),
(190, 86, '_edit_last', '1'),
(191, 86, '_wp_page_template', 'default'),
(192, 86, '_edit_lock', '1480495749:1'),
(193, 89, '_menu_item_type', 'post_type'),
(194, 89, '_menu_item_menu_item_parent', '70'),
(195, 89, '_menu_item_object_id', '86'),
(196, 89, '_menu_item_object', 'page'),
(197, 89, '_menu_item_target', ''),
(198, 89, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(199, 89, '_menu_item_xfn', ''),
(200, 89, '_menu_item_url', ''),
(201, 90, '_menu_item_type', 'post_type'),
(202, 90, '_menu_item_menu_item_parent', '70'),
(203, 90, '_menu_item_object_id', '83'),
(204, 90, '_menu_item_object', 'page'),
(205, 90, '_menu_item_target', ''),
(206, 90, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(207, 90, '_menu_item_xfn', ''),
(208, 90, '_menu_item_url', ''),
(209, 91, '_menu_item_type', 'post_type'),
(210, 91, '_menu_item_menu_item_parent', '70'),
(211, 91, '_menu_item_object_id', '79'),
(212, 91, '_menu_item_object', 'page'),
(213, 91, '_menu_item_target', ''),
(214, 91, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(215, 91, '_menu_item_xfn', ''),
(216, 91, '_menu_item_url', ''),
(217, 92, '_menu_item_type', 'post_type'),
(218, 92, '_menu_item_menu_item_parent', '70'),
(219, 92, '_menu_item_object_id', '76'),
(220, 92, '_menu_item_object', 'page'),
(221, 92, '_menu_item_target', ''),
(222, 92, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(223, 92, '_menu_item_xfn', ''),
(224, 92, '_menu_item_url', ''),
(225, 93, '_menu_item_type', 'post_type'),
(226, 93, '_menu_item_menu_item_parent', '70'),
(227, 93, '_menu_item_object_id', '73'),
(228, 93, '_menu_item_object', 'page'),
(229, 93, '_menu_item_target', ''),
(230, 93, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(231, 93, '_menu_item_xfn', ''),
(232, 93, '_menu_item_url', ''),
(233, 94, '_edit_last', '1'),
(234, 94, '_wp_page_template', 'default'),
(235, 94, '_edit_lock', '1480495788:1'),
(236, 96, '_edit_last', '1'),
(237, 96, '_wp_page_template', 'default'),
(238, 96, '_edit_lock', '1480495831:1'),
(239, 98, '_edit_last', '1'),
(240, 98, '_wp_page_template', 'default'),
(241, 98, '_edit_lock', '1480495898:1'),
(242, 100, '_edit_last', '1'),
(243, 100, '_edit_lock', '1480495984:1'),
(244, 100, '_wp_page_template', 'default'),
(245, 102, '_edit_last', '1'),
(246, 102, '_wp_page_template', 'default'),
(247, 102, '_edit_lock', '1480496147:1'),
(248, 104, '_menu_item_type', 'post_type'),
(249, 104, '_menu_item_menu_item_parent', '89'),
(250, 104, '_menu_item_object_id', '102'),
(251, 104, '_menu_item_object', 'page'),
(252, 104, '_menu_item_target', ''),
(253, 104, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(254, 104, '_menu_item_xfn', ''),
(255, 104, '_menu_item_url', ''),
(256, 105, '_menu_item_type', 'post_type'),
(257, 105, '_menu_item_menu_item_parent', '89'),
(258, 105, '_menu_item_object_id', '100'),
(259, 105, '_menu_item_object', 'page'),
(260, 105, '_menu_item_target', ''),
(261, 105, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(262, 105, '_menu_item_xfn', ''),
(263, 105, '_menu_item_url', ''),
(264, 106, '_menu_item_type', 'post_type'),
(265, 106, '_menu_item_menu_item_parent', '89'),
(266, 106, '_menu_item_object_id', '98'),
(267, 106, '_menu_item_object', 'page'),
(268, 106, '_menu_item_target', ''),
(269, 106, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(270, 106, '_menu_item_xfn', ''),
(271, 106, '_menu_item_url', ''),
(272, 107, '_menu_item_type', 'post_type'),
(273, 107, '_menu_item_menu_item_parent', '89'),
(274, 107, '_menu_item_object_id', '96'),
(275, 107, '_menu_item_object', 'page'),
(276, 107, '_menu_item_target', ''),
(277, 107, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(278, 107, '_menu_item_xfn', ''),
(279, 107, '_menu_item_url', ''),
(280, 108, '_menu_item_type', 'post_type'),
(281, 108, '_menu_item_menu_item_parent', '89'),
(282, 108, '_menu_item_object_id', '94'),
(283, 108, '_menu_item_object', 'page'),
(284, 108, '_menu_item_target', ''),
(285, 108, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(286, 108, '_menu_item_xfn', ''),
(287, 108, '_menu_item_url', '');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=109 ;

--
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2016-11-30 10:42:23', '2016-11-30 07:42:23', 'Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите её, затем пишите!', 'Привет, мир!', '', 'trash', 'open', 'open', '', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80__trashed', '', '', '2016-11-30 11:22:07', '2016-11-30 08:22:07', '', 0, 'http://test1.ru/?p=1', 0, 'post', '', 1),
(2, 1, '2016-11-30 10:42:23', '2016-11-30 07:42:23', 'Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:\n\n<blockquote>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</blockquote>\n\n...или так:\n\n<blockquote>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</blockquote>\n\nПерейдите <a href="http://test1.ru/wp-admin/">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!', 'Пример страницы', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2016-11-30 10:42:23', '2016-11-30 07:42:23', '', 0, 'http://test1.ru/?page_id=2', 0, 'page', '', 0),
(3, 1, '2016-11-30 10:45:54', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-11-30 10:45:54', '0000-00-00 00:00:00', '', 0, 'http://test1.ru/?p=3', 0, 'post', '', 0),
(4, 1, '2016-11-30 11:07:02', '2016-11-30 08:07:02', '', 'О музее', '', 'publish', 'closed', 'closed', '', '%d0%be-%d0%bc%d1%83%d0%b7%d0%b5%d0%b5', '', '', '2016-11-30 11:07:02', '2016-11-30 08:07:02', '', 0, 'http://test1.ru/?page_id=4', 0, 'page', '', 0),
(5, 1, '2016-11-30 11:06:49', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-11-30 11:06:49', '0000-00-00 00:00:00', '', 0, 'http://test1.ru/?page_id=5', 0, 'page', '', 0),
(6, 1, '2016-11-30 11:07:02', '2016-11-30 08:07:02', '', 'О музее', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2016-11-30 11:07:02', '2016-11-30 08:07:02', '', 4, 'http://test1.ru/2016/11/30/4-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2016-11-30 11:07:11', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-11-30 11:07:11', '0000-00-00 00:00:00', '', 0, 'http://test1.ru/?page_id=7', 0, 'page', '', 0),
(8, 1, '2016-11-30 11:07:28', '2016-11-30 08:07:28', '', 'История', '', 'publish', 'closed', 'closed', '', '%d0%b8%d1%81%d1%82%d0%be%d1%80%d0%b8%d1%8f', '', '', '2016-11-30 11:07:28', '2016-11-30 08:07:28', '', 0, 'http://test1.ru/?page_id=8', 0, 'page', '', 0),
(9, 1, '2016-11-30 11:07:20', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-11-30 11:07:20', '0000-00-00 00:00:00', '', 0, 'http://test1.ru/?page_id=9', 0, 'page', '', 0),
(10, 1, '2016-11-30 11:07:28', '2016-11-30 08:07:28', '', 'История', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2016-11-30 11:07:28', '2016-11-30 08:07:28', '', 8, 'http://test1.ru/2016/11/30/8-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2016-11-30 11:08:00', '2016-11-30 08:08:00', '', 'Экспозиция', '', 'publish', 'closed', 'closed', '', '%d1%8d%d0%ba%d1%81%d0%bf%d0%be%d0%b7%d0%b8%d1%86%d0%b8%d1%8f', '', '', '2016-11-30 11:08:00', '2016-11-30 08:08:00', '', 0, 'http://test1.ru/?page_id=11', 0, 'page', '', 0),
(12, 1, '2016-11-30 11:07:48', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-11-30 11:07:48', '0000-00-00 00:00:00', '', 0, 'http://test1.ru/?page_id=12', 0, 'page', '', 0),
(13, 1, '2016-11-30 11:08:00', '2016-11-30 08:08:00', '', 'Экспозиция', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2016-11-30 11:08:00', '2016-11-30 08:08:00', '', 11, 'http://test1.ru/2016/11/30/11-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2016-11-30 11:08:25', '2016-11-30 08:08:25', '', 'Персоналии', '', 'publish', 'closed', 'closed', '', '%d0%bf%d0%b5%d1%80%d1%81%d0%be%d0%bd%d0%b0%d0%bb%d0%b8%d0%b8', '', '', '2016-11-30 11:08:25', '2016-11-30 08:08:25', '', 0, 'http://test1.ru/?page_id=14', 0, 'page', '', 0),
(15, 1, '2016-11-30 11:08:21', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-11-30 11:08:21', '0000-00-00 00:00:00', '', 0, 'http://test1.ru/?page_id=15', 0, 'page', '', 0),
(16, 1, '2016-11-30 11:08:25', '2016-11-30 08:08:25', '', 'Персоналии', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2016-11-30 11:08:25', '2016-11-30 08:08:25', '', 14, 'http://test1.ru/2016/11/30/14-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2016-11-30 11:08:55', '2016-11-30 08:08:55', '', 'Карта сайта', '', 'publish', 'closed', 'closed', '', '%d0%ba%d0%b0%d1%80%d1%82%d0%b0-%d1%81%d0%b0%d0%b9%d1%82%d0%b0', '', '', '2016-11-30 11:08:55', '2016-11-30 08:08:55', '', 0, 'http://test1.ru/?page_id=17', 0, 'page', '', 0),
(18, 1, '2016-11-30 11:08:51', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-11-30 11:08:51', '0000-00-00 00:00:00', '', 0, 'http://test1.ru/?page_id=18', 0, 'page', '', 0),
(19, 1, '2016-11-30 11:08:55', '2016-11-30 08:08:55', '', 'Карта сайта', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2016-11-30 11:08:55', '2016-11-30 08:08:55', '', 17, 'http://test1.ru/2016/11/30/17-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2016-11-30 11:09:20', '2016-11-30 08:09:20', '', 'История университета', '', 'publish', 'closed', 'closed', '', '%d0%b8%d1%81%d1%82%d0%be%d1%80%d0%b8%d1%8f-%d1%83%d0%bd%d0%b8%d0%b2%d0%b5%d1%80%d1%81%d0%b8%d1%82%d0%b5%d1%82%d0%b0', '', '', '2016-11-30 11:09:20', '2016-11-30 08:09:20', '', 0, 'http://test1.ru/?page_id=20', 0, 'page', '', 0),
(21, 1, '2016-11-30 11:09:10', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-11-30 11:09:10', '0000-00-00 00:00:00', '', 0, 'http://test1.ru/?page_id=21', 0, 'page', '', 0),
(22, 1, '2016-11-30 11:09:20', '2016-11-30 08:09:20', '', 'История университета', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2016-11-30 11:09:20', '2016-11-30 08:09:20', '', 20, 'http://test1.ru/2016/11/30/20-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2016-11-30 11:11:30', '2016-11-30 08:11:30', '', 'История факультетов', '', 'publish', 'closed', 'closed', '', '%d0%b8%d1%81%d1%82%d0%be%d1%80%d0%b8%d1%8f-%d1%84%d0%b0%d0%ba%d1%83%d0%bb%d1%8c%d1%82%d0%b5%d1%82%d0%be%d0%b2', '', '', '2016-11-30 11:11:30', '2016-11-30 08:11:30', '', 0, 'http://test1.ru/?page_id=23', 0, 'page', '', 0),
(24, 1, '2016-11-30 11:09:35', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-11-30 11:09:35', '0000-00-00 00:00:00', '', 0, 'http://test1.ru/?page_id=24', 0, 'page', '', 0),
(25, 1, '2016-11-30 11:11:30', '2016-11-30 08:11:30', '', 'История факультетов', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2016-11-30 11:11:30', '2016-11-30 08:11:30', '', 23, 'http://test1.ru/2016/11/30/23-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2016-11-30 11:11:46', '2016-11-30 08:11:46', ' ', '', '', 'publish', 'closed', 'closed', '', '26', '', '', '2016-11-30 11:11:46', '2016-11-30 08:11:46', '', 0, 'http://test1.ru/2016/11/30/26/', 2, 'nav_menu_item', '', 0),
(27, 1, '2016-11-30 11:11:47', '2016-11-30 08:11:47', ' ', '', '', 'publish', 'closed', 'closed', '', '27', '', '', '2016-11-30 11:11:47', '2016-11-30 08:11:47', '', 0, 'http://test1.ru/2016/11/30/27/', 3, 'nav_menu_item', '', 0),
(28, 1, '2016-11-30 11:11:47', '2016-11-30 08:11:47', ' ', '', '', 'publish', 'closed', 'closed', '', '28', '', '', '2016-11-30 11:57:48', '2016-11-30 08:57:48', '', 0, 'http://test1.ru/2016/11/30/28/', 26, 'nav_menu_item', '', 0),
(29, 1, '2016-11-30 11:11:48', '2016-11-30 08:11:48', ' ', '', '', 'publish', 'closed', 'closed', '', '29', '', '', '2016-11-30 11:15:37', '2016-11-30 08:15:37', '', 0, 'http://test1.ru/2016/11/30/29/', 10, 'nav_menu_item', '', 0),
(30, 1, '2016-11-30 11:11:49', '2016-11-30 08:11:49', ' ', '', '', 'publish', 'closed', 'closed', '', '30', '', '', '2016-11-30 11:15:37', '2016-11-30 08:15:37', '', 0, 'http://test1.ru/2016/11/30/30/', 6, 'nav_menu_item', '', 0),
(31, 1, '2016-11-30 11:11:49', '2016-11-30 08:11:49', ' ', '', '', 'publish', 'closed', 'closed', '', '31', '', '', '2016-11-30 11:11:49', '2016-11-30 08:11:49', '', 0, 'http://test1.ru/2016/11/30/31/', 1, 'nav_menu_item', '', 0),
(32, 1, '2016-11-30 11:12:07', '2016-11-30 08:12:07', '', 'История кафедр', '', 'publish', 'closed', 'closed', '', '%d0%b8%d1%81%d1%82%d0%be%d1%80%d0%b8%d1%8f-%d0%ba%d0%b0%d1%84%d0%b5%d0%b4%d1%80', '', '', '2016-11-30 11:12:07', '2016-11-30 08:12:07', '', 0, 'http://test1.ru/?page_id=32', 0, 'page', '', 0),
(33, 1, '2016-11-30 11:11:59', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-11-30 11:11:59', '0000-00-00 00:00:00', '', 0, 'http://test1.ru/?page_id=33', 0, 'page', '', 0),
(34, 1, '2016-11-30 11:12:07', '2016-11-30 08:12:07', '', 'История кафедр', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2016-11-30 11:12:07', '2016-11-30 08:12:07', '', 32, 'http://test1.ru/2016/11/30/32-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2016-11-30 11:12:38', '2016-11-30 08:12:38', '', 'Газета', '', 'publish', 'closed', 'closed', '', '%d0%b3%d0%b0%d0%b7%d0%b5%d1%82%d0%b0', '', '', '2016-11-30 11:12:38', '2016-11-30 08:12:38', '', 0, 'http://test1.ru/?page_id=35', 0, 'page', '', 0),
(36, 1, '2016-11-30 11:12:22', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-11-30 11:12:22', '0000-00-00 00:00:00', '', 0, 'http://test1.ru/?page_id=36', 0, 'page', '', 0),
(37, 1, '2016-11-30 11:12:38', '2016-11-30 08:12:38', '', 'Газета', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2016-11-30 11:12:38', '2016-11-30 08:12:38', '', 35, 'http://test1.ru/2016/11/30/35-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2016-11-30 11:13:03', '2016-11-30 08:13:03', '', 'Выставки', '', 'publish', 'closed', 'closed', '', '%d0%b2%d1%8b%d1%81%d1%82%d0%b0%d0%b2%d0%ba%d0%b8', '', '', '2016-11-30 11:13:03', '2016-11-30 08:13:03', '', 0, 'http://test1.ru/?page_id=38', 0, 'page', '', 0),
(39, 1, '2016-11-30 11:12:55', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-11-30 11:12:55', '0000-00-00 00:00:00', '', 0, 'http://test1.ru/?page_id=39', 0, 'page', '', 0),
(40, 1, '2016-11-30 11:13:03', '2016-11-30 08:13:03', '', 'Выставки', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2016-11-30 11:13:03', '2016-11-30 08:13:03', '', 38, 'http://test1.ru/2016/11/30/38-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2016-11-30 11:13:43', '2016-11-30 08:13:43', '', 'Календарь событий', '', 'publish', 'closed', 'closed', '', '%d0%ba%d0%b0%d0%bb%d0%b5%d0%bd%d0%b4%d0%b0%d1%80%d1%8c-%d1%81%d0%be%d0%b1%d1%8b%d1%82%d0%b8%d0%b9', '', '', '2016-11-30 11:13:43', '2016-11-30 08:13:43', '', 0, 'http://test1.ru/?page_id=41', 0, 'page', '', 0),
(42, 1, '2016-11-30 11:13:36', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-11-30 11:13:36', '0000-00-00 00:00:00', '', 0, 'http://test1.ru/?page_id=42', 0, 'page', '', 0),
(43, 1, '2016-11-30 11:13:43', '2016-11-30 08:13:43', '', 'Календарь событий', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2016-11-30 11:13:43', '2016-11-30 08:13:43', '', 41, 'http://test1.ru/2016/11/30/41-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2016-11-30 11:15:37', '2016-11-30 08:15:37', ' ', '', '', 'publish', 'closed', 'closed', '', '44', '', '', '2016-11-30 11:15:37', '2016-11-30 08:15:37', '', 0, 'http://test1.ru/2016/11/30/44/', 9, 'nav_menu_item', '', 0),
(45, 1, '2016-11-30 11:15:38', '2016-11-30 08:15:38', ' ', '', '', 'publish', 'closed', 'closed', '', '45', '', '', '2016-11-30 11:15:38', '2016-11-30 08:15:38', '', 0, 'http://test1.ru/2016/11/30/45/', 8, 'nav_menu_item', '', 0),
(46, 1, '2016-11-30 11:15:38', '2016-11-30 08:15:38', ' ', '', '', 'publish', 'closed', 'closed', '', '46', '', '', '2016-11-30 11:15:38', '2016-11-30 08:15:38', '', 0, 'http://test1.ru/2016/11/30/46/', 7, 'nav_menu_item', '', 0),
(47, 1, '2016-11-30 11:15:39', '2016-11-30 08:15:39', ' ', '', '', 'publish', 'closed', 'closed', '', '47', '', '', '2016-11-30 11:15:39', '2016-11-30 08:15:39', '', 0, 'http://test1.ru/2016/11/30/47/', 5, 'nav_menu_item', '', 0),
(48, 1, '2016-11-30 11:15:40', '2016-11-30 08:15:40', ' ', '', '', 'publish', 'closed', 'closed', '', '48', '', '', '2016-11-30 11:15:40', '2016-11-30 08:15:40', '', 0, 'http://test1.ru/2016/11/30/48/', 4, 'nav_menu_item', '', 0),
(49, 1, '2016-11-30 11:16:52', '2016-11-30 08:16:52', '', 'Ректоры', '', 'publish', 'closed', 'closed', '', '%d1%80%d0%b5%d0%ba%d1%82%d0%be%d1%80%d1%8b', '', '', '2016-11-30 11:17:10', '2016-11-30 08:17:10', '', 0, 'http://test1.ru/?page_id=49', 0, 'page', '', 0),
(50, 1, '2016-11-30 11:16:48', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-11-30 11:16:48', '0000-00-00 00:00:00', '', 0, 'http://test1.ru/?page_id=50', 0, 'page', '', 0),
(51, 1, '2016-11-30 11:16:52', '2016-11-30 08:16:52', '', 'Ректоры', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2016-11-30 11:16:52', '2016-11-30 08:16:52', '', 49, 'http://test1.ru/2016/11/30/49-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2016-11-30 11:17:36', '2016-11-30 08:17:36', '', 'Галерея преподавателей', '', 'publish', 'closed', 'closed', '', '%d0%b3%d0%b0%d0%bb%d0%b5%d1%80%d0%b5%d1%8f-%d0%bf%d1%80%d0%b5%d0%bf%d0%be%d0%b4%d0%b0%d0%b2%d0%b0%d1%82%d0%b5%d0%bb%d0%b5%d0%b9', '', '', '2016-11-30 11:17:36', '2016-11-30 08:17:36', '', 0, 'http://test1.ru/?page_id=52', 0, 'page', '', 0),
(53, 1, '2016-11-30 11:17:28', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-11-30 11:17:28', '0000-00-00 00:00:00', '', 0, 'http://test1.ru/?page_id=53', 0, 'page', '', 0),
(54, 1, '2016-11-30 11:17:36', '2016-11-30 08:17:36', '', 'Галерея преподавателей', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2016-11-30 11:17:36', '2016-11-30 08:17:36', '', 52, 'http://test1.ru/2016/11/30/52-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2016-11-30 11:18:01', '2016-11-30 08:18:01', '', 'Выпускники', '', 'publish', 'closed', 'closed', '', '%d0%b2%d1%8b%d0%bf%d1%83%d1%81%d0%ba%d0%bd%d0%b8%d0%ba%d0%b8', '', '', '2016-11-30 11:18:01', '2016-11-30 08:18:01', '', 0, 'http://test1.ru/?page_id=55', 0, 'page', '', 0),
(56, 1, '2016-11-30 11:17:53', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-11-30 11:17:53', '0000-00-00 00:00:00', '', 0, 'http://test1.ru/?page_id=56', 0, 'page', '', 0),
(57, 1, '2016-11-30 11:18:01', '2016-11-30 08:18:01', '', 'Выпускники', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2016-11-30 11:18:01', '2016-11-30 08:18:01', '', 55, 'http://test1.ru/2016/11/30/55-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2016-11-30 11:18:20', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-11-30 11:18:20', '0000-00-00 00:00:00', '', 0, 'http://test1.ru/?page_id=58', 0, 'page', '', 0),
(59, 1, '2016-11-30 11:18:21', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-11-30 11:18:21', '0000-00-00 00:00:00', '', 0, 'http://test1.ru/?page_id=59', 0, 'page', '', 0),
(60, 1, '2016-11-30 11:18:30', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-11-30 11:18:30', '0000-00-00 00:00:00', '', 0, 'http://test1.ru/?page_id=60', 0, 'page', '', 0),
(61, 1, '2016-11-30 11:19:15', '2016-11-30 08:19:15', '', 'Участники военных действий', '', 'publish', 'closed', 'closed', '', '%d1%83%d1%87%d0%b0%d1%81%d1%82%d0%bd%d0%b8%d0%ba%d0%b8-%d0%b2%d0%be%d0%b5%d0%bd%d0%bd%d1%8b%d1%85-%d0%b4%d0%b5%d0%b9%d1%81%d1%82%d0%b2%d0%b8%d0%b9', '', '', '2016-11-30 11:19:15', '2016-11-30 08:19:15', '', 0, 'http://test1.ru/?page_id=61', 0, 'page', '', 0),
(62, 1, '2016-11-30 11:19:06', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-11-30 11:19:06', '0000-00-00 00:00:00', '', 0, 'http://test1.ru/?page_id=62', 0, 'page', '', 0),
(63, 1, '2016-11-30 11:19:15', '2016-11-30 08:19:15', '', 'Участники военных действий', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2016-11-30 11:19:15', '2016-11-30 08:19:15', '', 61, 'http://test1.ru/2016/11/30/61-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2016-11-30 11:20:05', '2016-11-30 08:20:05', '', 'Студенты, ставшие преподавателями', '', 'publish', 'closed', 'closed', '', '%d1%81%d1%82%d1%83%d0%b4%d0%b5%d0%bd%d1%82%d1%8b-%d1%81%d1%82%d0%b0%d0%b2%d1%88%d0%b8%d0%b5-%d0%bf%d1%80%d0%b5%d0%bf%d0%be%d0%b4%d0%b0%d0%b2%d0%b0%d1%82%d0%b5%d0%bb%d1%8f%d0%bc%d0%b8', '', '', '2016-11-30 11:20:05', '2016-11-30 08:20:05', '', 0, 'http://test1.ru/?page_id=64', 0, 'page', '', 0),
(65, 1, '2016-11-30 11:19:53', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-11-30 11:19:53', '0000-00-00 00:00:00', '', 0, 'http://test1.ru/?page_id=65', 0, 'page', '', 0),
(66, 1, '2016-11-30 11:20:05', '2016-11-30 08:20:05', '', 'Студенты, ставшие преподавателями', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2016-11-30 11:20:05', '2016-11-30 08:20:05', '', 64, 'http://test1.ru/2016/11/30/64-revision-v1/', 0, 'revision', '', 0),
(67, 1, '2016-11-30 11:21:21', '2016-11-30 08:21:21', ' ', '', '', 'publish', 'closed', 'closed', '', '67', '', '', '2016-11-30 11:57:48', '2016-11-30 08:57:48', '', 0, 'http://test1.ru/2016/11/30/67/', 25, 'nav_menu_item', '', 0),
(68, 1, '2016-11-30 11:21:21', '2016-11-30 08:21:21', ' ', '', '', 'publish', 'closed', 'closed', '', '68', '', '', '2016-11-30 11:57:48', '2016-11-30 08:57:48', '', 0, 'http://test1.ru/2016/11/30/68/', 24, 'nav_menu_item', '', 0),
(69, 1, '2016-11-30 11:21:22', '2016-11-30 08:21:22', ' ', '', '', 'publish', 'closed', 'closed', '', '69', '', '', '2016-11-30 11:57:48', '2016-11-30 08:57:48', '', 0, 'http://test1.ru/2016/11/30/69/', 23, 'nav_menu_item', '', 0),
(70, 1, '2016-11-30 11:21:23', '2016-11-30 08:21:23', ' ', '', '', 'publish', 'closed', 'closed', '', '70', '', '', '2016-11-30 11:21:23', '2016-11-30 08:21:23', '', 0, 'http://test1.ru/2016/11/30/70/', 12, 'nav_menu_item', '', 0),
(71, 1, '2016-11-30 11:21:23', '2016-11-30 08:21:23', ' ', '', '', 'publish', 'closed', 'closed', '', '71', '', '', '2016-11-30 11:21:23', '2016-11-30 08:21:23', '', 0, 'http://test1.ru/2016/11/30/71/', 11, 'nav_menu_item', '', 0),
(72, 1, '2016-11-30 11:22:07', '2016-11-30 08:22:07', 'Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите её, затем пишите!', 'Привет, мир!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2016-11-30 11:22:07', '2016-11-30 08:22:07', '', 1, 'http://test1.ru/2016/11/30/1-revision-v1/', 0, 'revision', '', 0),
(73, 1, '2016-11-30 11:22:36', '2016-11-30 08:22:36', '', 'ФГС', '', 'publish', 'closed', 'closed', '', '%d1%84%d0%b3%d1%81', '', '', '2016-11-30 11:22:36', '2016-11-30 08:22:36', '', 0, 'http://test1.ru/?page_id=73', 0, 'page', '', 0),
(74, 1, '2016-11-30 11:22:32', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-11-30 11:22:32', '0000-00-00 00:00:00', '', 0, 'http://test1.ru/?page_id=74', 0, 'page', '', 0),
(75, 1, '2016-11-30 11:22:36', '2016-11-30 08:22:36', '', 'ФГС', '', 'inherit', 'closed', 'closed', '', '73-revision-v1', '', '', '2016-11-30 11:22:36', '2016-11-30 08:22:36', '', 73, 'http://test1.ru/2016/11/30/73-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2016-11-30 11:23:05', '2016-11-30 08:23:05', '', 'ФКЭП', '', 'publish', 'closed', 'closed', '', '%d1%84%d0%ba%d1%8d%d0%bf', '', '', '2016-11-30 11:23:05', '2016-11-30 08:23:05', '', 0, 'http://test1.ru/?page_id=76', 0, 'page', '', 0),
(77, 1, '2016-11-30 11:23:00', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-11-30 11:23:00', '0000-00-00 00:00:00', '', 0, 'http://test1.ru/?page_id=77', 0, 'page', '', 0),
(78, 1, '2016-11-30 11:23:05', '2016-11-30 08:23:05', '', 'ФКЭП', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2016-11-30 11:23:05', '2016-11-30 08:23:05', '', 76, 'http://test1.ru/2016/11/30/76-revision-v1/', 0, 'revision', '', 0),
(79, 1, '2016-11-30 11:23:32', '2016-11-30 08:23:32', '', 'ЮФ', '', 'publish', 'closed', 'closed', '', '%d1%8e%d1%84', '', '', '2016-11-30 11:23:32', '2016-11-30 08:23:32', '', 0, 'http://test1.ru/?page_id=79', 0, 'page', '', 0),
(80, 1, '2016-11-30 11:23:28', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-11-30 11:23:28', '0000-00-00 00:00:00', '', 0, 'http://test1.ru/?page_id=80', 0, 'page', '', 0),
(81, 1, '2016-11-30 11:23:32', '2016-11-30 08:23:32', '', 'ЮФ', '', 'inherit', 'closed', 'closed', '', '79-revision-v1', '', '', '2016-11-30 11:23:32', '2016-11-30 08:23:32', '', 79, 'http://test1.ru/2016/11/30/79-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2016-11-30 11:23:41', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-11-30 11:23:41', '0000-00-00 00:00:00', '', 0, 'http://test1.ru/?page_id=82', 0, 'page', '', 0),
(83, 1, '2016-11-30 11:23:56', '2016-11-30 08:23:56', '', 'ФБП', '', 'publish', 'closed', 'closed', '', '%d1%84%d0%b1%d0%bf', '', '', '2016-11-30 11:23:56', '2016-11-30 08:23:56', '', 0, 'http://test1.ru/?page_id=83', 0, 'page', '', 0),
(84, 1, '2016-11-30 11:23:49', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-11-30 11:23:49', '0000-00-00 00:00:00', '', 0, 'http://test1.ru/?page_id=84', 0, 'page', '', 0),
(85, 1, '2016-11-30 11:23:56', '2016-11-30 08:23:56', '', 'ФБП', '', 'inherit', 'closed', 'closed', '', '83-revision-v1', '', '', '2016-11-30 11:23:56', '2016-11-30 08:23:56', '', 83, 'http://test1.ru/2016/11/30/83-revision-v1/', 0, 'revision', '', 0),
(86, 1, '2016-11-30 11:24:31', '2016-11-30 08:24:31', '', 'ИТФ', '', 'publish', 'closed', 'closed', '', '%d0%b8%d1%82%d1%84', '', '', '2016-11-30 11:24:31', '2016-11-30 08:24:31', '', 0, 'http://test1.ru/?page_id=86', 0, 'page', '', 0),
(87, 1, '2016-11-30 11:24:28', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-11-30 11:24:28', '0000-00-00 00:00:00', '', 0, 'http://test1.ru/?page_id=87', 0, 'page', '', 0),
(88, 1, '2016-11-30 11:24:31', '2016-11-30 08:24:31', '', 'ИТФ', '', 'inherit', 'closed', 'closed', '', '86-revision-v1', '', '', '2016-11-30 11:24:31', '2016-11-30 08:24:31', '', 86, 'http://test1.ru/2016/11/30/86-revision-v1/', 0, 'revision', '', 0),
(89, 1, '2016-11-30 11:25:39', '2016-11-30 08:25:39', ' ', '', '', 'publish', 'closed', 'closed', '', '89', '', '', '2016-11-30 11:25:39', '2016-11-30 08:25:39', '', 0, 'http://test1.ru/2016/11/30/89/', 17, 'nav_menu_item', '', 0),
(90, 1, '2016-11-30 11:25:40', '2016-11-30 08:25:40', ' ', '', '', 'publish', 'closed', 'closed', '', '90', '', '', '2016-11-30 11:25:40', '2016-11-30 08:25:40', '', 0, 'http://test1.ru/2016/11/30/90/', 13, 'nav_menu_item', '', 0),
(91, 1, '2016-11-30 11:25:41', '2016-11-30 08:25:41', ' ', '', '', 'publish', 'closed', 'closed', '', '91', '', '', '2016-11-30 11:25:41', '2016-11-30 08:25:41', '', 0, 'http://test1.ru/2016/11/30/91/', 16, 'nav_menu_item', '', 0),
(92, 1, '2016-11-30 11:25:42', '2016-11-30 08:25:42', ' ', '', '', 'publish', 'closed', 'closed', '', '92', '', '', '2016-11-30 11:25:42', '2016-11-30 08:25:42', '', 0, 'http://test1.ru/2016/11/30/92/', 14, 'nav_menu_item', '', 0),
(93, 1, '2016-11-30 11:25:42', '2016-11-30 08:25:42', ' ', '', '', 'publish', 'closed', 'closed', '', '93', '', '', '2016-11-30 11:25:42', '2016-11-30 08:25:42', '', 0, 'http://test1.ru/2016/11/30/93/', 15, 'nav_menu_item', '', 0),
(94, 1, '2016-11-30 11:52:02', '2016-11-30 08:52:02', '', 'Кафедра информационных технологий', '', 'publish', 'closed', 'closed', '', '%d0%ba%d0%b0%d1%84%d0%b5%d0%b4%d1%80%d0%b0-%d0%b8%d0%bd%d1%84%d0%be%d1%80%d0%bc%d0%b0%d1%86%d0%b8%d0%be%d0%bd%d0%bd%d1%8b%d1%85-%d1%82%d0%b5%d1%85%d0%bd%d0%be%d0%bb%d0%be%d0%b3%d0%b8%d0%b9', '', '', '2016-11-30 11:52:02', '2016-11-30 08:52:02', '', 0, 'http://test1.ru/?page_id=94', 0, 'page', '', 0),
(95, 1, '2016-11-30 11:52:02', '2016-11-30 08:52:02', '', 'Кафедра информационных технологий', '', 'inherit', 'closed', 'closed', '', '94-revision-v1', '', '', '2016-11-30 11:52:02', '2016-11-30 08:52:02', '', 94, 'http://test1.ru/2016/11/30/94-revision-v1/', 0, 'revision', '', 0),
(96, 1, '2016-11-30 11:52:44', '2016-11-30 08:52:44', '', 'Кафедра корпоративных информационных технологий (базовая)', '', 'publish', 'closed', 'closed', '', '%d0%ba%d0%b0%d1%84%d0%b5%d0%b4%d1%80%d0%b0-%d0%ba%d0%be%d1%80%d0%bf%d0%be%d1%80%d0%b0%d1%82%d0%b8%d0%b2%d0%bd%d1%8b%d1%85-%d0%b8%d0%bd%d1%84%d0%be%d1%80%d0%bc%d0%b0%d1%86%d0%b8%d0%be%d0%bd%d0%bd%d1%8b', '', '', '2016-11-30 11:52:44', '2016-11-30 08:52:44', '', 0, 'http://test1.ru/?page_id=96', 0, 'page', '', 0),
(97, 1, '2016-11-30 11:52:44', '2016-11-30 08:52:44', '', 'Кафедра корпоративных информационных технологий (базовая)', '', 'inherit', 'closed', 'closed', '', '96-revision-v1', '', '', '2016-11-30 11:52:44', '2016-11-30 08:52:44', '', 96, 'http://test1.ru/2016/11/30/96-revision-v1/', 0, 'revision', '', 0),
(98, 1, '2016-11-30 11:53:27', '2016-11-30 08:53:27', '', 'Кафедра информационных технологий (базовая)', '', 'publish', 'closed', 'closed', '', '%d0%ba%d0%b0%d1%84%d0%b5%d0%b4%d1%80%d0%b0-%d0%b8%d0%bd%d1%84%d0%be%d1%80%d0%bc%d0%b0%d1%86%d0%b8%d0%be%d0%bd%d0%bd%d1%8b%d1%85-%d1%82%d0%b5%d1%85%d0%bd%d0%be%d0%bb%d0%be%d0%b3%d0%b8%d0%b9-%d0%b1', '', '', '2016-11-30 11:53:27', '2016-11-30 08:53:27', '', 0, 'http://test1.ru/?page_id=98', 0, 'page', '', 0),
(99, 1, '2016-11-30 11:53:27', '2016-11-30 08:53:27', '', 'Кафедра информационных технологий (базовая)', '', 'inherit', 'closed', 'closed', '', '98-revision-v1', '', '', '2016-11-30 11:53:27', '2016-11-30 08:53:27', '', 98, 'http://test1.ru/2016/11/30/98-revision-v1/', 0, 'revision', '', 0),
(100, 1, '2016-11-30 11:55:14', '2016-11-30 08:55:14', '', 'Кафедра информационной безопасности', '', 'publish', 'closed', 'closed', '', '%d0%ba%d0%b0%d1%84%d0%b5%d0%b4%d1%80%d0%b0-%d0%b8%d0%bd%d1%84%d0%be%d1%80%d0%bc%d0%b0%d1%86%d0%b8%d0%be%d0%bd%d0%bd%d0%be%d0%b9-%d0%b1%d0%b5%d0%b7%d0%be%d0%bf%d0%b0%d1%81%d0%bd%d0%be%d1%81%d1%82%d0%b8', '', '', '2016-11-30 11:55:14', '2016-11-30 08:55:14', '', 0, 'http://test1.ru/?page_id=100', 0, 'page', '', 0),
(101, 1, '2016-11-30 11:55:14', '2016-11-30 08:55:14', '', 'Кафедра информационной безопасности', '', 'inherit', 'closed', 'closed', '', '100-revision-v1', '', '', '2016-11-30 11:55:14', '2016-11-30 08:55:14', '', 100, 'http://test1.ru/2016/11/30/100-revision-v1/', 0, 'revision', '', 0),
(102, 1, '2016-11-30 11:55:44', '2016-11-30 08:55:44', '', 'Кафедра бизнес-информатики', '', 'publish', 'closed', 'closed', '', '%d0%ba%d0%b0%d1%84%d0%b5%d0%b4%d1%80%d0%b0-%d0%b1%d0%b8%d0%b7%d0%bd%d0%b5%d1%81-%d0%b8%d0%bd%d1%84%d0%be%d1%80%d0%bc%d0%b0%d1%82%d0%b8%d0%ba%d0%b8', '', '', '2016-11-30 11:55:44', '2016-11-30 08:55:44', '', 0, 'http://test1.ru/?page_id=102', 0, 'page', '', 0),
(103, 1, '2016-11-30 11:55:44', '2016-11-30 08:55:44', '', 'Кафедра бизнес-информатики', '', 'inherit', 'closed', 'closed', '', '102-revision-v1', '', '', '2016-11-30 11:55:44', '2016-11-30 08:55:44', '', 102, 'http://test1.ru/2016/11/30/102-revision-v1/', 0, 'revision', '', 0),
(104, 1, '2016-11-30 11:57:48', '2016-11-30 08:57:48', ' ', '', '', 'publish', 'closed', 'closed', '', '104', '', '', '2016-11-30 11:57:48', '2016-11-30 08:57:48', '', 0, 'http://test1.ru/2016/11/30/104/', 22, 'nav_menu_item', '', 0),
(105, 1, '2016-11-30 11:57:49', '2016-11-30 08:57:49', ' ', '', '', 'publish', 'closed', 'closed', '', '105', '', '', '2016-11-30 11:57:49', '2016-11-30 08:57:49', '', 0, 'http://test1.ru/2016/11/30/105/', 21, 'nav_menu_item', '', 0),
(106, 1, '2016-11-30 11:57:50', '2016-11-30 08:57:50', ' ', '', '', 'publish', 'closed', 'closed', '', '106', '', '', '2016-11-30 11:57:50', '2016-11-30 08:57:50', '', 0, 'http://test1.ru/2016/11/30/106/', 19, 'nav_menu_item', '', 0),
(107, 1, '2016-11-30 11:57:51', '2016-11-30 08:57:51', ' ', '', '', 'publish', 'closed', 'closed', '', '107', '', '', '2016-11-30 11:57:51', '2016-11-30 08:57:51', '', 0, 'http://test1.ru/2016/11/30/107/', 20, 'nav_menu_item', '', 0),
(108, 1, '2016-11-30 11:57:51', '2016-11-30 08:57:51', ' ', '', '', 'publish', 'closed', 'closed', '', '108', '', '', '2016-11-30 11:57:51', '2016-11-30 08:57:51', '', 0, 'http://test1.ru/2016/11/30/108/', 18, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', '%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', 0),
(2, 'Основное', '%d0%be%d1%81%d0%bd%d0%be%d0%b2%d0%bd%d0%be%d0%b5', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(26, 2, 0),
(27, 2, 0),
(28, 2, 0),
(29, 2, 0),
(30, 2, 0),
(31, 2, 0),
(44, 2, 0),
(45, 2, 0),
(46, 2, 0),
(47, 2, 0),
(48, 2, 0),
(67, 2, 0),
(68, 2, 0),
(69, 2, 0),
(70, 2, 0),
(71, 2, 0),
(89, 2, 0),
(90, 2, 0),
(91, 2, 0),
(92, 2, 0),
(93, 2, 0),
(104, 2, 0),
(105, 2, 0),
(106, 2, 0),
(107, 2, 0),
(108, 2, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 26);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Дамп данных таблицы `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'root'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', ''),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'session_tokens', 'a:1:{s:64:"d15c172a31dc23aab2ae63022743aefdfc5defb31a908eeb22d83ddf8635f739";a:4:{s:10:"expiration";i:1480664748;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:108:"Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36";s:5:"login";i:1480491948;}}'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '3');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'root', '$P$BY24qXIHZ0YVrAmF/Dwqkqboo5MnzI/', 'root', 'university18@yandex.ru', '', '2016-11-30 07:42:21', '', 0, 'root');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
