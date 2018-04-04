-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 04, 2018 at 05:36 PM
-- Server version: 5.7.21-0ubuntu0.16.04.1
-- PHP Version: 7.0.28-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `countries3`
--

-- --------------------------------------------------------

--
-- Table structure for table `continents`
--

CREATE TABLE `continents` (
  `code` char(2) NOT NULL COMMENT 'Continent code',
  `name_en` varchar(255) DEFAULT NULL,
  `name_ar` varchar(255) NOT NULL,
  `name_fr` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `continents`
--

INSERT INTO `continents` (`code`, `name_en`, `name_ar`, `name_fr`) VALUES
('AF', 'Africa', 'أفريقيا', 'Afrique'),
('AN', 'Antarctica', 'القارة القطبية', 'Antarctique'),
('AS', 'Asia', 'آسيا', 'Asie'),
('EU', 'Europe', 'أوروبا', 'L\'Europe'),
('NA', 'North America', 'أمريكا الشمالية', 'Amérique du Nord'),
('OC', 'Oceania', 'أستراليا', 'Océanie'),
('SA', 'South America', 'أمريكا الجنوبية', 'Amérique du sud');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `name_en` varchar(64) NOT NULL COMMENT 'English country name',
  `name_ar` varchar(255) DEFAULT NULL,
  `name_fr` varchar(255) DEFAULT NULL,
  `code` char(2) NOT NULL COMMENT 'Two-letter country code (ISO 3166-1 alpha-2)',
  `iso3` char(3) NOT NULL COMMENT 'Three-letter country code (ISO 3166-1 alpha-3)',
  `continent_code` char(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name_en`, `name_ar`, `name_fr`, `code`, `iso3`, `continent_code`) VALUES
(1, 'Andorra', 'أندورا', 'Andorre', 'AD', 'AND', 'EU'),
(2, 'United Arab Emirates', 'المتحدة العربية الإمارات ', 'Émirats arabes unis', 'AE', 'ARE', 'AS'),
(3, 'Afghanistan', 'أفغانستان', 'Afghanistan', 'AF', 'AFG', 'AS'),
(4, 'Antigua and Barbuda', 'أنتيغوا وبربودا ', 'Antigua-et-Barbuda', 'AG', 'ATG', 'NA'),
(5, 'Anguilla', 'أنغويلا', 'Anguilla', 'AI', 'AIA', 'NA'),
(6, 'Albania', 'ألبانيا', 'Albanie', 'AL', 'ALB', 'EU'),
(7, 'Armenia', 'أرمينيا', 'Arménie', 'AM', 'ARM', 'AS'),
(8, 'Netherlands Antilles', 'جزر الأنتيل الهولندية', 'Antilles néerlandaises', 'AN', 'ANT', 'NA'),
(9, 'Angola', 'أنغولا', 'Angola', 'AO', 'AGO', 'AF'),
(10, 'Antarctica', 'القارة القطبية الجنوبية', 'Antarctique', 'AQ', 'ATA', 'AN'),
(11, 'Argentina', 'الأرجنتين', 'Argentine', 'AR', 'ARG', 'SA'),
(12, 'American Samoa', 'ساموا الأمريكية', 'Samoa américaines', 'AS', 'ASM', 'OC'),
(13, 'Austria', 'النمسا', 'Autriche', 'AT', 'AUT', 'EU'),
(14, 'Australia', 'أستراليا', 'Australie', 'AU', 'AUS', 'OC'),
(15, 'Aruba', 'أروبا', 'Aruba', 'AW', 'ABW', 'NA'),
(16, 'Åland', 'جزر أولاند', 'Îles Åland', 'AX', 'ALA', 'EU'),
(17, 'Azerbaijan', 'أذربيجان', 'Azerbaïdjan', 'AZ', 'AZE', 'AS'),
(18, 'Bosnia and Herzegovina', 'والهرسك البوسنة ', 'Bosnie-Herzégovine', 'BA', 'BIH', 'EU'),
(19, 'Barbados', 'بربادوس', 'Barbade', 'BB', 'BRB', 'NA'),
(20, 'Bangladesh', 'بنغلاديش', 'Bangladesh', 'BD', 'BGD', 'AS'),
(21, 'Belgium', 'بلجيكا', 'Belgique', 'BE', 'BEL', 'EU'),
(22, 'Burkina Faso', 'بوركينا فاسو ', 'Burkina Faso', 'BF', 'BFA', 'AF'),
(23, 'Bulgaria', 'بلغاريا', 'Bulgarie', 'BG', 'BGR', 'EU'),
(24, 'Bahrain', 'البحرين', 'Bahreïn', 'BH', 'BHR', 'AS'),
(25, 'Burundi', 'بوروندي', 'Burundi', 'BI', 'BDI', 'AF'),
(26, 'Benin', 'بنن', 'Bénin', 'BJ', 'BEN', 'AF'),
(27, 'Saint Barthélemy', 'سان بارتيلمي', 'Saint-Barthélemy', 'BL', 'BLM', 'NA'),
(28, 'Bermuda', 'برمودا', 'Bermudes', 'BM', 'BMU', 'NA'),
(29, 'Brunei Darussalam', 'السلام دار برونى ', 'Brunéi Darussalam', 'BN', 'BRN', 'AS'),
(30, 'Bolivia', 'بوليفيا - دولة - المتعددة القوميات ', 'Bolivie (État plurinational de)', 'BO', 'BOL', 'SA'),
(31, 'Brazil', 'البرازيل', 'Brésil', 'BR', 'BRA', 'SA'),
(32, 'Bahamas', 'البهاما جزر ', 'Bahamas', 'BS', 'BHS', 'NA'),
(33, 'Bhutan', 'بوتان', 'Bhoutan', 'BT', 'BTN', 'AS'),
(34, 'Bouvet Island', 'جزيرة بوفيه', 'Île Bouvet', 'BV', 'BVT', 'AN'),
(35, 'Botswana', 'بوتسوانا', 'Botswana', 'BW', 'BWA', 'AF'),
(36, 'Belarus', 'بيلاروس', 'Bélarus', 'BY', 'BLR', 'EU'),
(37, 'Belize', 'بليز', 'Belize', 'BZ', 'BLZ', 'NA'),
(38, 'Canada', 'كندا', 'Canada', 'CA', 'CAN', 'NA'),
(39, 'Cocos (Keeling) Islands', 'جزر كوكوس', 'Îles Cocos', 'CC', 'CCK', 'AS'),
(40, 'Congo (Kinshasa)', 'الديمقراطية الكونغو جمهورية ', 'République démocratique du Congo', 'CD', 'COD', 'AF'),
(41, 'Central African Republic', 'الوسطى أفريقيا جمهورية ', 'République centrafricaine', 'CF', 'CAF', 'AF'),
(42, 'Congo (Brazzaville)', 'الكونغو', 'Congo', 'CG', 'COG', 'AF'),
(43, 'Switzerland', 'سويسرا', 'Suisse', 'CH', 'CHE', 'EU'),
(44, 'Côte d\'Ivoire', 'ديفوار كوت ', 'Côte d\'Ivoire', 'CI', 'CIV', 'AF'),
(45, 'Cook Islands', 'كوك جزر ', 'Îles Cook', 'CK', 'COK', 'OC'),
(46, 'Chile', 'شيلى', 'Chili', 'CL', 'CHL', 'SA'),
(47, 'Cameroon', 'الكاميرون', 'Cameroun', 'CM', 'CMR', 'AF'),
(48, 'China', 'الصين', 'Chine', 'CN', 'CHN', 'AS'),
(49, 'Colombia', 'كولومبيا', 'Colombie', 'CO', 'COL', 'SA'),
(50, 'Costa Rica', 'كوستاريكا', 'Costa Rica', 'CR', 'CRI', 'NA'),
(51, 'Cuba', 'كوبا', 'Cuba', 'CU', 'CUB', 'NA'),
(52, 'Cape Verde', 'كابو فيردي ', 'Cabo Verde', 'CV', 'CPV', 'AF'),
(53, 'Christmas Island', 'جزيرة عيد الميلاد', 'Île Christmas', 'CX', 'CXR', 'AS'),
(54, 'Cyprus', 'قبرص', 'Chypre', 'CY', 'CYP', 'AS'),
(55, 'Czech Republic', 'التشيكية الجمهورية ', 'République tchèque', 'CZ', 'CZE', 'EU'),
(56, 'Germany', 'ألمانيا', 'Allemagne', 'DE', 'DEU', 'EU'),
(57, 'Djibouti', 'جيبوتي', 'Djibouti', 'DJ', 'DJI', 'AF'),
(58, 'Denmark', 'الدانمرك', 'Danemark', 'DK', 'DNK', 'EU'),
(59, 'Dominica', 'دومينيكا', 'Dominique', 'DM', 'DMA', 'NA'),
(60, 'Dominican Republic', 'الجمهورية الدومينيكية ', 'République dominicaine', 'DO', 'DOM', 'NA'),
(61, 'Algeria', 'الجزائر', 'Algérie', 'DZ', 'DZA', 'AF'),
(62, 'Ecuador', 'إكوادور', 'Équateur', 'EC', 'ECU', 'SA'),
(63, 'Estonia', 'إستونيا', 'Estonie', 'EE', 'EST', 'EU'),
(64, 'Egypt', 'مصر', 'Égypte', 'EG', 'EGY', 'AF'),
(65, 'Western Sahara', 'الصحراء الغربية', 'République arabe sahraouie démocratique', 'EH', 'ESH', 'AF'),
(66, 'Eritrea', 'إريتريا', 'Érythrée', 'ER', 'ERI', 'AF'),
(67, 'Spain', 'إسبانيا', 'Espagne', 'ES', 'ESP', 'EU'),
(68, 'Ethiopia', 'إثيوبيا', 'Éthiopie', 'ET', 'ETH', 'AF'),
(69, 'Finland', 'فنلندا', 'Finlande', 'FI', 'FIN', 'EU'),
(70, 'Fiji', 'فيجي', 'Fidji', 'FJ', 'FJI', 'OC'),
(71, 'Falkland Islands', 'جزر فوكلاند', 'Malouines', 'FK', 'FLK', 'SA'),
(72, 'Micronesia', 'ميكرونيزيا', 'Micronésie (États fédérés de)', 'FM', 'FSM', 'OC'),
(73, 'Faroe Islands', 'جزر فيرويه ', 'Îles Féroé (Membre associé)', 'FO', 'FRO', 'EU'),
(74, 'France', 'فرنسا', 'France', 'FR', 'FRA', 'EU'),
(75, 'Gabon', 'غابون', 'Gabon', 'GA', 'GAB', 'AF'),
(76, 'United Kingdom', 'المملكة المتحدة ', 'Royaume-Uni', 'GB', 'GBR', 'EU'),
(77, 'Grenada', 'غرينادا', 'Grenade', 'GD', 'GRD', 'NA'),
(78, 'Georgia', 'جورجيا', 'Géorgie', 'GE', 'GEO', 'AS'),
(79, 'French Guiana', 'غويانا الفرنسية', 'Guyane', 'GF', 'GUF', 'SA'),
(80, 'Guernsey', 'غيرنزي', 'Guernesey', 'GG', 'GGY', 'EU'),
(81, 'Ghana', 'غانا', 'Ghana', 'GH', 'GHA', 'AF'),
(82, 'Gibraltar', 'جبل طارق', 'Gibraltar', 'GI', 'GIB', 'EU'),
(83, 'Greenland', 'جرينلاند', 'Groenland', 'GL', 'GRL', 'NA'),
(84, 'Gambia', 'غامبيا', 'Gambie', 'GM', 'GMB', 'AF'),
(85, 'Guinea', 'غينيا', 'Guinée', 'GN', 'GIN', 'AF'),
(86, 'Guadeloupe', 'غوادلوب', 'Guadeloupe', 'GP', 'GLP', 'NA'),
(87, 'Equatorial Guinea', 'الاستوائية غينيا ', 'Guinée équatoriale', 'GQ', 'GNQ', 'AF'),
(88, 'Greece', 'اليونان', 'Grèce', 'GR', 'GRC', 'EU'),
(89, 'South Georgia and South Sandwich Islands', 'جورجيا الجنوبية وجزر ساندويتش الجنوبية', 'Géorgie du Sud-et-les Îles Sandwich du Sud', 'GS', 'SGS', 'AN'),
(90, 'Guatemala', 'غواتيمالا', 'Guatemala', 'GT', 'GTM', 'NA'),
(91, 'Guam', 'غوام', 'Guam', 'GU', 'GUM', 'OC'),
(92, 'Guinea-Bissau', 'غينيا - بيساو ', 'Guinée-Bissau', 'GW', 'GNB', 'AF'),
(93, 'Guyana', 'غيانا', 'Guyana', 'GY', 'GUY', 'SA'),
(94, 'Hong Kong', 'هونغ كونغ', 'Hong Kong', 'HK', 'HKG', 'AS'),
(95, 'Heard and McDonald Islands', 'جزيرة هيرد وجزر ماكدونالد', 'Îles Heard-et-MacDonald', 'HM', 'HMD', 'AN'),
(96, 'Honduras', 'هندوراس', 'Honduras', 'HN', 'HND', 'NA'),
(97, 'Croatia', 'كرواتيا', 'Croatie', 'HR', 'HRV', 'EU'),
(98, 'Haiti', 'هايتي', 'Haïti', 'HT', 'HTI', 'NA'),
(99, 'Hungary', 'هنغاريا', 'Hongrie', 'HU', 'HUN', 'EU'),
(100, 'Indonesia', 'إندونيسيا', 'Indonésie', 'ID', 'IDN', 'AS'),
(101, 'Ireland', 'آيرلندا', 'Irlande', 'IE', 'IRL', 'EU'),
(102, 'Israel', 'إسرائيل', 'Israël', 'IL', 'ISR', 'AS'),
(103, 'Isle of Man', 'جزيرة مان', 'Île de Man', 'IM', 'IMN', 'EU'),
(104, 'India', 'الهند', 'Inde', 'IN', 'IND', 'AS'),
(105, 'British Indian Ocean Territory', 'إقليم المحيط الهندي البريطاني', 'Territoire britannique de l\'océan Indien', 'IO', 'IOT', 'AS'),
(106, 'Iraq', 'العراق', 'Iraq', 'IQ', 'IRQ', 'AS'),
(107, 'Iran', 'الإسلامية - جمهورية - إيران ', 'Iran', 'IR', 'IRN', 'AS'),
(108, 'Iceland', 'آيسلندا', 'Islande', 'IS', 'ISL', 'EU'),
(109, 'Italy', 'إيطاليا', 'Italie', 'IT', 'ITA', 'EU'),
(110, 'Jersey', 'جيرزي', 'Jersey', 'JE', 'JEY', 'EU'),
(111, 'Jamaica', 'جامايكا', 'Jamaïque', 'JM', 'JAM', 'NA'),
(112, 'Jordan', 'الأردن', 'Jordanie', 'JO', 'JOR', 'AS'),
(113, 'Japan', 'اليابان', 'Japon', 'JP', 'JPN', 'AS'),
(114, 'Kenya', 'كينيا', 'Kenya', 'KE', 'KEN', 'AF'),
(115, 'Kyrgyzstan', 'قيرغيزستان', 'Kirghizistan', 'KG', 'KGZ', 'AS'),
(116, 'Cambodia', 'كمبوديا', 'Cambodge', 'KH', 'KHM', 'AS'),
(117, 'Kiribati', 'كيريباس', 'Kiribati', 'KI', 'KIR', 'OC'),
(118, 'Comoros', 'جزر القمر ', 'Comores', 'KM', 'COM', 'AF'),
(119, 'Saint Kitts and Nevis', 'ونيفيس كيتس سانت ', 'Saint-Kitts-et-Nevis', 'KN', 'KNA', 'NA'),
(120, 'Korea, North', 'الديمقراطية الشعبية كوريا جمهورية ', 'République populaire démocratique de Corée', 'KP', 'PRK', 'AS'),
(121, 'Korea, South', 'جمهورية كوريا ', 'République de Corée', 'KR', 'KOR', 'AS'),
(122, 'Kuwait', 'الكويت', 'Koweït', 'KW', 'KWT', 'AS'),
(123, 'Cayman Islands', 'جزر كايمان', 'Îles Caïmans', 'KY', 'CYM', 'NA'),
(124, 'Kazakhstan', 'كازاخستان', 'Kazakhstan', 'KZ', 'KAZ', 'AS'),
(125, 'Laos', 'الشعبية الديمقراطية لاو جمهورية ', 'République démocratique populaire lao', 'LA', 'LAO', 'AS'),
(126, 'Lebanon', 'لبنان', 'Liban', 'LB', 'LBN', 'AS'),
(127, 'Saint Lucia', 'لوسيا سانت ', 'Sainte-Lucie', 'LC', 'LCA', 'NA'),
(128, 'Liechtenstein', 'لختنشتاين', 'Liechtenstein', 'LI', 'LIE', 'EU'),
(129, 'Sri Lanka', 'سري لانكا ', 'Sri Lanka', 'LK', 'LKA', 'AS'),
(130, 'Liberia', 'ليبريا', 'Libéria', 'LR', 'LBR', 'AF'),
(131, 'Lesotho', 'ليسوتو', 'Lesotho', 'LS', 'LSO', 'AF'),
(132, 'Lithuania', 'ليتوانيا', 'Lituanie', 'LT', 'LTU', 'EU'),
(133, 'Luxembourg', 'لكسمبرغ', 'Luxembourg', 'LU', 'LUX', 'EU'),
(134, 'Latvia', 'لاتفيا', 'Lettonie', 'LV', 'LVA', 'EU'),
(135, 'Libya', 'ليبيا', 'Libye', 'LY', 'LBY', 'AF'),
(136, 'Morocco', 'المغرب', 'Maroc', 'MA', 'MAR', 'AF'),
(137, 'Monaco', 'موناكو', 'Monaco', 'MC', 'MCO', 'EU'),
(138, 'Moldova', 'جمهورية مولدوفا ', 'République de Moldova', 'MD', 'MDA', 'EU'),
(139, 'Montenegro', 'الأسود الجبل ', 'Monténégro', 'ME', 'MNE', 'EU'),
(140, 'Saint Martin (French part)', 'تجمع سان مارتين', 'Saint-Martin', 'MF', 'MAF', 'NA'),
(141, 'Madagascar', 'مدغشقر', 'Madagascar', 'MG', 'MDG', 'AF'),
(142, 'Marshall Islands', 'جزر مارشال ', 'Îles Marshall', 'MH', 'MHL', 'OC'),
(143, 'Macedonia', 'جمهورية مقدونيا اليوغوسلافية السابقة ', 'ex-République yougoslave de Macédoine', 'MK', 'MKD', 'EU'),
(144, 'Mali', 'مالي', 'Mali', 'ML', 'MLI', 'AF'),
(145, 'Myanmar', 'ميانمار', 'Myanmar', 'MM', 'MMR', 'AS'),
(146, 'Mongolia', 'منغوليا', 'Mongolie', 'MN', 'MNG', 'AS'),
(147, 'Macau', 'ماكاو', 'Macao', 'MO', 'MAC', 'AS'),
(148, 'Northern Mariana Islands', 'جزر ماريانا الشمالية', 'Îles Mariannes du Nord', 'MP', 'MNP', 'OC'),
(149, 'Martinique', 'مارتينيك', 'Martinique', 'MQ', 'MTQ', 'NA'),
(150, 'Mauritania', 'موريتانيا', 'Mauritanie', 'MR', 'MRT', 'AF'),
(151, 'Montserrat', 'مونتسرات', 'Montserrat', 'MS', 'MSR', 'NA'),
(152, 'Malta', 'مالطة', 'Malte', 'MT', 'MLT', 'EU'),
(153, 'Mauritius', 'موريشيوس', 'Maurice', 'MU', 'MUS', 'AF'),
(154, 'Maldives', 'ملديف', 'Maldives', 'MV', 'MDV', 'AS'),
(155, 'Malawi', 'ملاوي', 'Malawi', 'MW', 'MWI', 'AF'),
(156, 'Mexico', 'المكسيك', 'Mexique', 'MX', 'MEX', 'NA'),
(157, 'Malaysia', 'ماليزيا', 'Malaisie', 'MY', 'MYS', 'AS'),
(158, 'Mozambique', 'موزامبيق', 'Mozambique', 'MZ', 'MOZ', 'AF'),
(159, 'Namibia', 'ناميبيا', 'Namibie', 'NA', 'NAM', 'AF'),
(160, 'New Caledonia', 'كاليدونيا الجديدة', 'Nouvelle-Calédonie', 'NC', 'NCL', 'OC'),
(161, 'Niger', 'النيجر', 'Niger', 'NE', 'NER', 'AF'),
(162, 'Norfolk Island', 'جزيرة نورفولك', 'Île Norfolk', 'NF', 'NFK', 'OC'),
(163, 'Nigeria', 'نيجيريا', 'Nigéria', 'NG', 'NGA', 'AF'),
(164, 'Nicaragua', 'نيكاراغوا', 'Nicaragua', 'NI', 'NIC', 'NA'),
(165, 'Netherlands', 'هولندا', 'Pays-Bas', 'NL', 'NLD', 'EU'),
(166, 'Norway', 'النرويج', 'Norvège', 'NO', 'NOR', 'EU'),
(167, 'Nepal', 'نيبال', 'Népal', 'NP', 'NPL', 'AS'),
(168, 'Nauru', 'ناورو', 'Nauru', 'NR', 'NRU', 'OC'),
(169, 'Niue', 'نيوى', 'Nioué', 'NU', 'NIU', 'OC'),
(170, 'New Zealand', 'نيوزيلندا', 'Nouvelle-Zélande', 'NZ', 'NZL', 'OC'),
(171, 'Oman', 'عمان', 'Oman', 'OM', 'OMN', 'AS'),
(172, 'Panama', 'بنما', 'Panama', 'PA', 'PAN', 'NA'),
(173, 'Peru', 'بيرو', 'Pérou', 'PE', 'PER', 'SA'),
(174, 'French Polynesia', 'بولينزيا الفرنسية', 'Polynésie française', 'PF', 'PYF', 'OC'),
(175, 'Papua New Guinea', 'الجديدة غينيا بابوا ', 'Papouasie-Nouvelle-Guinée', 'PG', 'PNG', 'OC'),
(176, 'Philippines', 'الفلبين', 'Philippines', 'PH', 'PHL', 'AS'),
(177, 'Pakistan', 'باكستان', 'Pakistan', 'PK', 'PAK', 'AS'),
(178, 'Poland', 'بولندا', 'Pologne', 'PL', 'POL', 'EU'),
(179, 'Saint Pierre and Miquelon', 'سان بيير وميكلون', 'Saint-Pierre-et-Miquelon', 'PM', 'SPM', 'NA'),
(180, 'Pitcairn', 'جزر بيتكيرن', 'Îles Pitcairn', 'PN', 'PCN', 'OC'),
(181, 'Puerto Rico', 'بورتوريكو', 'Porto Rico', 'PR', 'PRI', 'NA'),
(182, 'Palestine', 'فلسطين', 'Palestine', 'PS', 'PSE', 'AS'),
(183, 'Portugal', 'البرتغال', 'Portugal', 'PT', 'PRT', 'EU'),
(184, 'Palau', 'بالاو', 'Palaos', 'PW', 'PLW', 'OC'),
(185, 'Paraguay', 'باراغواي', 'Paraguay', 'PY', 'PRY', 'SA'),
(186, 'Qatar', 'قطر', 'Qatar', 'QA', 'QAT', 'AS'),
(187, 'Reunion', 'لا ريونيون', 'La Réunion', 'RE', 'REU', 'AF'),
(188, 'Romania', 'رومانيا', 'Roumanie', 'RO', 'ROU', 'EU'),
(189, 'Serbia', 'صربيا', 'Serbie', 'RS', 'SRB', 'EU'),
(190, 'Russian Federation', 'الاتحاد الروسي ', 'Fédération de Russie', 'RU', 'RUS', 'EU'),
(191, 'Rwanda', 'رواندا', 'Rwanda', 'RW', 'RWA', 'AF'),
(192, 'Saudi Arabia', 'السعودية العربية المملكة ', 'Arabie saoudite', 'SA', 'SAU', 'AS'),
(193, 'Solomon Islands', 'جزر سليمان ', 'Îles Salomon', 'SB', 'SLB', 'OC'),
(194, 'Seychelles', 'سيشيل', 'Seychelles', 'SC', 'SYC', 'AF'),
(195, 'Sudan', 'السودان', 'Soudan', 'SD', 'SDN', 'AF'),
(196, 'Sweden', 'السويد', 'Suède', 'SE', 'SWE', 'EU'),
(197, 'Singapore', 'سنغافورة', 'Singapour', 'SG', 'SGP', 'AS'),
(198, 'Saint Helena', 'سانت هيلانة وأسينشين وتريستان دا كونا', 'Sainte-Hélène, Ascension et Tristan da Cunha', 'SH', 'SHN', 'AF'),
(199, 'Slovenia', 'سلوفينيا', 'Slovénie', 'SI', 'SVN', 'EU'),
(200, 'Svalbard and Jan Mayen Islands', 'سفالبارد ويان ماين', 'Svalbard et ile Jan Mayen', 'SJ', 'SJM', 'EU'),
(201, 'Slovakia', 'سلوفاكيا', 'Slovaquie', 'SK', 'SVK', 'EU'),
(202, 'Sierra Leone', 'سيراليون', 'Sierra Leone', 'SL', 'SLE', 'AF'),
(203, 'San Marino', 'مارينو سان ', 'Saint-Marin', 'SM', 'SMR', 'EU'),
(204, 'Senegal', 'السنغال', 'Sénégal', 'SN', 'SEN', 'AF'),
(205, 'Somalia', 'الصومال', 'Somalie', 'SO', 'SOM', 'AF'),
(206, 'Suriname', 'سورينام', 'Suriname', 'SR', 'SUR', 'SA'),
(207, 'Sao Tome and Principe', 'وبرنسيبي تومي سان ', 'Sao Tomé-et-Principe', 'ST', 'STP', 'AF'),
(208, 'El Salvador', 'السلفادور', 'El Salvador', 'SV', 'SLV', 'NA'),
(209, 'Syria', 'الجمهورية العربية السورية ', 'République arabe syrienne', 'SY', 'SYR', 'AS'),
(210, 'Swaziland', 'سوازيلند', 'Swaziland', 'SZ', 'SWZ', 'AF'),
(211, 'Turks and Caicos Islands', 'جزر توركس وكايكوس', 'Îles Turques-et-Caïques', 'TC', 'TCA', 'NA'),
(212, 'Chad', 'تشاد', 'Tchad', 'TD', 'TCD', 'AF'),
(213, 'French Southern Lands', 'أراض فرنسية جنوبية وأنتارتيكية', 'Terres australes et antarctiques françaises', 'TF', 'ATF', 'AN'),
(214, 'Togo', 'توغو', 'Togo', 'TG', 'TGO', 'AF'),
(215, 'Thailand', 'تايلند', 'Thaïlande', 'TH', 'THA', 'AS'),
(216, 'Tajikistan', 'طاجيكستان', 'Tadjikistan', 'TJ', 'TJK', 'AS'),
(217, 'Tokelau', 'منتسب عضو - توكيلاو ', 'Tokélaou (Membre associé)', 'TK', 'TKL', 'OC'),
(218, 'Timor-Leste', 'ليشتى تيمور- ', 'Timor-Leste', 'TL', 'TLS', 'AS'),
(219, 'Turkmenistan', 'تركمانستان', 'Turkménistan', 'TM', 'TKM', 'AS'),
(220, 'Tunisia', 'تونس', 'Tunisie', 'TN', 'TUN', 'AF'),
(221, 'Tonga', 'تونغا', 'Tonga', 'TO', 'TON', 'OC'),
(222, 'Turkey', 'تركيا', 'Turquie', 'TR', 'TUR', 'AS'),
(223, 'Trinidad and Tobago', 'وتوباغو ترينيداد ', 'Trinité-et-Tobago', 'TT', 'TTO', 'NA'),
(224, 'Tuvalu', 'توفالو', 'Tuvalu', 'TV', 'TUV', 'OC'),
(225, 'Taiwan', 'تايوان', 'Taïwan / (République de Chine (Taïwan))', 'TW', 'TWN', 'AS'),
(226, 'Tanzania', 'جمهورية تنزانيا المتحدة ', 'République-Unie de Tanzanie', 'TZ', 'TZA', 'AF'),
(227, 'Ukraine', 'أوكرانيا', 'Ukraine', 'UA', 'UKR', 'EU'),
(228, 'Uganda', 'أوغندا', 'Ouganda', 'UG', 'UGA', 'AF'),
(229, 'United States Minor Outlying Islands', 'جزر الولايات المتحدة الصغيرة النائية', 'Îles mineures éloignées des États-Unis', 'UM', 'UMI', 'OC'),
(230, 'United States of America', 'الأمريكية المتحدة الولايات ', 'États-Unis d\'Amérique', 'US', 'USA', 'NA'),
(231, 'Uruguay', 'أوروغواي', 'Uruguay', 'UY', 'URY', 'SA'),
(232, 'Uzbekistan', 'أوزبكستان', 'Ouzbékistan', 'UZ', 'UZB', 'AS'),
(233, 'Vatican City', 'الكرسي الرسولي ', 'Saint-Siège', 'VA', 'VAT', 'EU'),
(234, 'Saint Vincent and the Grenadines', 'سانت فنسنت وجزر غرينادين ', 'Saint-Vincent-et-les Grenadines', 'VC', 'VCT', 'NA'),
(235, 'Venezuela', 'البوليفارية - جمهورية - فنزويلا ', 'Venezuela (République bolivarienne du)', 'VE', 'VEN', 'SA'),
(236, 'Virgin Islands, British', 'جزر العذراء البريطانية', 'Îles Vierges britanniques', 'VG', 'VGB', 'NA'),
(237, 'Virgin Islands, U.S.', 'جزر العذراء الأمريكية', 'Îles Vierges des États-Unis', 'VI', 'VIR', 'NA'),
(238, 'Vietnam', 'فييت نام ', 'Viet Nam', 'VN', 'VNM', 'AS'),
(239, 'Vanuatu', 'فانواتو', 'Vanuatu', 'VU', 'VUT', 'OC'),
(240, 'Wallis and Futuna Islands', 'والس وفوتونا', 'Wallis-et-Futuna', 'WF', 'WLF', 'OC'),
(241, 'Samoa', 'ساموا', 'Samoa', 'WS', 'WSM', 'OC'),
(242, 'Yemen', 'اليمن', 'Yémen', 'YE', 'YEM', 'AS'),
(243, 'Mayotte', 'مايوت', 'Mayotte', 'YT', 'MYT', 'AF'),
(244, 'South Africa', 'أفريقيا جنوب ', 'Afrique du Sud', 'ZA', 'ZAF', 'AF'),
(245, 'Zambia', 'زامبيا', 'Zambie', 'ZM', 'ZMB', 'AF'),
(246, 'Zimbabwe', 'زمبابوي', 'Zimbabwe', 'ZW', 'ZWE', 'AF');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `continents`
--
ALTER TABLE `continents`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_code` (`code`) USING BTREE,
  ADD KEY `idx_continent_code` (`continent_code`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `countries`
--
ALTER TABLE `countries`
  ADD CONSTRAINT `countries_ibfk_1` FOREIGN KEY (`continent_code`) REFERENCES `continents` (`code`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
