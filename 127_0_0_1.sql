-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2014 at 03:38 PM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bookshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE IF NOT EXISTS `tbl_cart` (
`ct_id` int(10) unsigned NOT NULL,
  `pd_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ct_qty` mediumint(8) unsigned NOT NULL DEFAULT '1',
  `ct_session_id` char(32) NOT NULL DEFAULT '',
  `ct_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=87 ;

--
-- Dumping data for table `tbl_cart`
--

INSERT INTO `tbl_cart` (`ct_id`, `pd_id`, `ct_qty`, `ct_session_id`, `ct_date`) VALUES
(83, 64, 1, '2026e683519dbadc72171f755de8f6bc', '2010-06-26 23:52:39'),
(86, 23, 8, '1fbaf76ba0e50fb914d3a489bc09bb0f', '2010-06-27 10:32:03');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE IF NOT EXISTS `tbl_category` (
`cat_id` int(10) unsigned NOT NULL,
  `cat_parent_id` int(11) NOT NULL DEFAULT '0',
  `cat_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `cat_description` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `cat_image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`cat_id`, `cat_parent_id`, `cat_name`, `cat_description`, `cat_image`) VALUES
(17, 13, 'Cakes', 'Cake is a form of food, typically a sweet, baked dessert. Cakes normally contain a combination of flour, sugar, eggs, and butter  or oil, with some varieties also requiring liquid (typically milk or w', '0991520d7cc4857da073d0a7de95e5e1.jpg'),
(12, 0, 'Business', 'A business (company, enterprise or firm) is a legally recognized organization designed to provide goods or services, or both, to consumers, businesses and governmental entities', '4f6ef895c9ab5525357b8d5b511f9a4a.jpg'),
(13, 0, 'Cooking and Diets', 'Cooking and Diets eBooks. Las tentaciones de Eva ArguiÃ±ano: Postre Caseros. Las tentaciones de Eva ArguiÃ±ano: Postre Caseros Publisher:Bainet | Spanish', '935ff7afe4b5a6aa3904b8c735a84a45.jpg'),
(14, 12, 'Economics', 'Economics is the social science that is concerned with the production, distribution, and consumption of goods and services', 'ab5c91eefb848ce33d110bff6b5cb82a.jpg'),
(15, 12, 'Accounting', 'Accountancy is the art of communicating financial information about a business entity to users such as shareholders and managers.', '46e4b8973d72cf53962d98f705758c07.jpg'),
(16, 13, 'Food', 'Food is any substance or material eaten to provide nutritional support for the body. It usually consists of plant or animal origin, that contains essential', 'a573000ddd095e226f606b9dea58cb71.jpg'),
(19, 0, 'Cultures', 'Culture (from the Latin cultura stemming from colere, meaning "to cultivate")[1]  is a term that has different meanings. For example, in 1952, Alfred Kroeber and Clyde Kluckhohn compiled a list of 164', '14339788018bd41a7366b1f5517321b6.jpg'),
(20, 19, 'Live', 'Love is... is a comic strip created by New Zealand artist Kim Grove in the late\r\n1960s, later to be produced by Stefano Casali. The strip is syndicated', 'f81c9f7cdf91519766801063427e5d48.jpg'),
(21, 19, 'Language', 'A language is a system of signs (indices, icons, symbols) for encoding and decoding information. Since language and languages became an object of study (logos) by the ancient grammarians, the term has', '7708d76a32c5ba86b10b3c8e26b3564c.jpg'),
(22, 12, 'Finance', 'Finance is the science of funds management.[1]  The general areas of finance are business finance, personal finance, and public finance', 'fa43658407e7e6e2cd6d10a9d9952418.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_currency`
--

CREATE TABLE IF NOT EXISTS `tbl_currency` (
`cy_id` int(10) unsigned NOT NULL,
  `cy_code` char(3) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `cy_symbol` varchar(8) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tbl_currency`
--

INSERT INTO `tbl_currency` (`cy_id`, `cy_code`, `cy_symbol`) VALUES
(1, 'EUR', '&#8364;'),
(2, 'GBP', '&pound;'),
(3, 'JPY', '&yen;'),
(4, 'USD', '$');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE IF NOT EXISTS `tbl_order` (
`od_id` int(10) unsigned NOT NULL,
  `od_date` datetime DEFAULT NULL,
  `od_last_update` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `od_status` enum('New','Paid','Shipped','Completed','Cancelled') NOT NULL DEFAULT 'New',
  `od_memo` varchar(255) NOT NULL DEFAULT '',
  `od_shipping_first_name` varchar(50) NOT NULL DEFAULT '',
  `od_shipping_last_name` varchar(50) NOT NULL DEFAULT '',
  `od_shipping_address1` varchar(100) NOT NULL DEFAULT '',
  `od_shipping_address2` varchar(100) NOT NULL DEFAULT '',
  `od_shipping_phone` varchar(32) NOT NULL DEFAULT '',
  `od_shipping_city` varchar(100) NOT NULL DEFAULT '',
  `od_shipping_state` varchar(32) NOT NULL DEFAULT '',
  `od_shipping_postal_code` varchar(10) NOT NULL DEFAULT '',
  `od_shipping_cost` decimal(5,2) DEFAULT '0.00',
  `od_payment_first_name` varchar(50) NOT NULL DEFAULT '',
  `od_payment_last_name` varchar(50) NOT NULL DEFAULT '',
  `od_payment_address1` varchar(100) NOT NULL DEFAULT '',
  `od_payment_address2` varchar(100) NOT NULL DEFAULT '',
  `od_payment_phone` varchar(32) NOT NULL DEFAULT '',
  `od_payment_city` varchar(100) NOT NULL DEFAULT '',
  `od_payment_state` varchar(32) NOT NULL DEFAULT '',
  `od_payment_postal_code` varchar(10) NOT NULL DEFAULT ''
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1007 ;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`od_id`, `od_date`, `od_last_update`, `od_status`, `od_memo`, `od_shipping_first_name`, `od_shipping_last_name`, `od_shipping_address1`, `od_shipping_address2`, `od_shipping_phone`, `od_shipping_city`, `od_shipping_state`, `od_shipping_postal_code`, `od_shipping_cost`, `od_payment_first_name`, `od_payment_last_name`, `od_payment_address1`, `od_payment_address2`, `od_payment_phone`, `od_payment_city`, `od_payment_state`, `od_payment_postal_code`) VALUES
(1001, '2010-05-12 01:00:11', '2010-05-12 01:00:11', 'New', '', 'Tien', 'Chu Anh', 'HN', 'Lo Duc', '09865488', 'HCM', 'California', '10000', '5.00', 'Tien', 'Chu Anh', 'HN', 'Lo Duc', '09865488', 'HCM', 'California', '10000'),
(1002, '2010-05-12 07:48:55', '2010-05-12 07:48:55', 'New', '', 'Tien', 'Chu Anh', 'HN', 'LD', '098765432', 'HN', '098377', '10000', '5.00', 'Tien', 'Chu Anh', 'HN', 'LD', '098765432', 'HN', '098377', '10000'),
(1003, '2010-05-12 10:34:14', '2010-05-12 10:34:14', 'New', '', 'Phuc', 'Hong', 'HN', 'HD', '098653', 'HN', '215367', '100000', '5.00', 'Phuc', 'Hong', 'HN', 'HD', '098653', 'HN', '215367', '100000'),
(1004, '2010-06-23 10:52:10', '2010-06-23 11:15:50', 'Completed', '', 'Thuyet', 'Hoang Minh', 'Lo Duc', 'Ha Noi', '098765432', 'Ha Noi', 'California', '10000', '5.00', 'Thuyet', 'Hoang Minh', 'Lo Duc', 'Ha Noi', '098765432', 'Ha Noi', 'California', '10000'),
(1005, '2010-06-23 12:12:34', '2010-06-23 12:16:49', 'Paid', '', 'Binh', 'Nguyen Trong', 'Nhuyen Phong sac', 'Hoang Quoc Viet', '098765432', 'HN', 'Ba Ding', '100000', '5.00', 'Binh', 'Nguyen Trong', 'Nhuyen Phong sac', 'Hoang Quoc Viet', '098765432', 'HN', 'Ba Ding', '100000'),
(1006, '2010-06-27 09:26:17', '2010-06-27 09:26:17', 'New', '', 'Aaaaaaa', 'Dddddd', 'ffffffff', 'gggggggg', '11111111', 'Gshgas', 'hthh', '65784', '5.00', 'Aaaaaaa', 'Dddddd', 'ffffffff', 'gggggggg', '11111111', 'Gshgas', 'hthh', '65784');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_item`
--

CREATE TABLE IF NOT EXISTS `tbl_order_item` (
  `od_id` int(10) unsigned NOT NULL DEFAULT '0',
  `pd_id` int(10) unsigned NOT NULL DEFAULT '0',
  `od_qty` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_order_item`
--

INSERT INTO `tbl_order_item` (`od_id`, `pd_id`, `od_qty`) VALUES
(1001, 23, 1),
(1001, 22, 1),
(1002, 28, 5),
(1002, 24, 1),
(1003, 28, 5),
(1003, 22, 1),
(1006, 23, 1),
(1006, 22, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE IF NOT EXISTS `tbl_product` (
`pd_id` int(10) unsigned NOT NULL,
  `cat_id` int(10) unsigned NOT NULL DEFAULT '0',
  `pd_name` varchar(100) NOT NULL DEFAULT '',
  `pd_description` text NOT NULL,
  `pd_price` decimal(9,2) NOT NULL DEFAULT '0.00',
  `pd_qty` smallint(5) unsigned NOT NULL DEFAULT '0',
  `pd_image` varchar(200) DEFAULT NULL,
  `pd_thumbnail` varchar(200) DEFAULT NULL,
  `pd_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `pd_last_update` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=93 ;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`pd_id`, `cat_id`, `pd_name`, `pd_description`, `pd_price`, `pd_qty`, `pd_image`, `pd_thumbnail`, `pd_date`, `pd_last_update`) VALUES
(22, 15, 'How You Will Change the World with Social Networking', 'Social networks can be so much more than a way to find your high school friends or learn what your favorite celebrity had for breakfast. They can be powerful tools for changing the world. With Share This! both regular folks of a progressive bent and committed activists can learn how to go beyond swapping movie reviews and vacation photos (not that there''s anything wrong with that).\r\n\r\nAt the moment the same kinds of people who dominate the dialog off-line are dominating it online, and things will never change if that doesn''t change. Progressives need to get on social networks and share their stories, join conversations, connect with others--and not just others exactly like themselves. It''s vital to reach out across all those ethnic/gender/preference/class/age lines that exist even within the progressive camp. As Deanna Zandt puts it, "creating a just society is sort of like the evolution of the species--if you have a bunch of the same DNA mixing together the species mutates poorly and eventually dies off."\r\n\r\nBut there are definitely dos and don''ts. Zandt delves into exactly what people are and are not looking for in online exchanges. How to be a good guest. What to share. Why authenticity is more important than just about anything, including traditional notions of expertise or authority. She addresses some common fears, like worrying about giving too much about yourself away, blurring the lines between your professional and personal life, or getting buried under a steaming heap of information overload. And she offers detailed, nuts-and bolts "how to get started" advice for both individuals and organizations.\r\n\r\nThe Internet is upending hierarchies and freeing the flow of information in a way that makes the invention of the printing press seem like an historical footnote. Share This! shows how to take advantage of this unprecedented opportunity to make marginalized voices heard and support real, fundamental change--and, incidentally, have some fun doing it. ', '100.00', 97, '2f4d10ed1b8a4005d2af226feb168d73.jpg', '1f52ad1bcea6fc0599885d932a09921b.jpg', '2010-05-11 23:27:25', '0000-00-00 00:00:00'),
(23, 15, 'An Agenda for Corporate Social Innovation', 'Companies can make a major contribution to their community by doing the thing they do best - innovating. Instead of treating corporate responsibility (CSR) as a bolt-on reputation management issue, companies should direct human resources from their core business to developing innovative solutions to social problems.\r\n\r\nThe public sector should not see corporate social innovation (CSI) as a form of back-door privatisation. It is precisely where companies are not core service providers that they have the space to develop new approaches to intractable social problems, as the case studies examined in this report show. By placing the emphasis on corporate social innovation, companies can initiate community projects without fear of ending up as a public service provider if the project succeeds. They should focus on experimentation, not provision.\r\n\r\n''The more superficial arguments for using business expertise in government and public service delivery have run into the sand. Public-private partnerships do not automatically create a more efficient use of resources. But the Government does need a stream of ideas and corporate social innovation could be a major supplier of new thinking''\r\n\r\nAfter conducting an in-depth analysis of successful CSI projects, Rachel Jupp produces a set of key recommendations aimed at developing an innovative approach to social programmes. They include:\r\nCreating structured opportunities for key employees to become involved in CSI projects;\r\nEstablishing sabbatical and exchange programmes to allow employees to learn about social innovation;\r\nFocusing project assessment on the social benefits rather than impact on corporate reputation;\r\nCreating a business social innovation tax credit for investors in social innovation', '500.00', 38, '9ed8b60ad01fb59e2a6a9f8842f0159d.jpg', '17766a295cab3fbfc620d70747669ecf.jpg', '2010-05-12 00:57:07', '0000-00-00 00:00:00'),
(24, 15, 'Insurance Companies & Endowments', 'Invaluable information regarding one of the biggest worldwide growth areas in investing-infrastructure assets\r\n\r\nInfrastructure investing is about to explode on the worldwide scene. The fact is that real money will need to be spent on real projects-which will present real opportunities for stable, long-term returns. But infrastructure assets have unique characteristics and the investments and funds that will likely rise up must be suitably structured to serve investor needs.\r\n\r\nAuthor Rajeev Sawant has been analyzing infrastructure investments, funds, and project financing programs for nearly five years, and with this book, he presents information that will be invaluable to lenders, pension funds, insurance companies, investment funds, rating agencies, and even governments.\r\n\r\n* Presents comprehensive data analysis on infrastructure cases worldwide\r\n* Analyzes the opportunities as well as the pitfalls of infrastructure investing\r\n* Focuses on the needs of pensions, insurance companies, and endowments interested in infrastructure investing\r\n\r\nFor the next decade, worldwide economic growth and increased employment-as well as investment returns-will come from infrastructure projects. This book will help you understand today''s dynamic infrastructure asset class and quickly get you up to speed on the unique risks and rewards associated with it. ', '200.00', 9, '9508bb44704612d12d14cf92eeb9df07.jpg', '80ec40ca5442ed5582977c6576edaf88.jpg', '2010-05-12 07:15:08', '0000-00-00 00:00:00'),
(27, 15, 'High-Frequency Trading', 'A well thought out, practical guide covering all aspects of high-frequency trading and of systematic trading in general. I recommend this book highly. --Igor Tulchinsky, CEO, WorldQuant, LLC\r\n\r\nFor traditional fundamental and technical analysts, Irene Aldridge''s book has the effect a first read of quantum physics would have had on traditional Newtonian physicists: eye-opening, challenging, and enlightening. --Neal M. Epstein, CFA, Managing Director, Research & Product Management, Proctor Investment Managers LLC\r\n\r\nFor practitioners, this book covers many of the topics people should be thinking about if they want to get into high frequency trading. It presents many of the results across the vast literature at an easy manner and pace, distilling many of the essential ideas and formulas. Besides the convenience of having all these results in one place, there are plenty of hints for future directions in researching high frequency alpha. --Addison D. Tsai, Managing Partner, SDS Capital Group\r\n\r\nIrene''s new book delivers exactly what it sets out to achieve. It opens the arena of High-Frequency Trading to traders and investors looking to understand why trading is becoming automated and how traders operate in this environment. This books makes academic research useful by explaining how to create trading strategies.\r\n\r\nThis is the only book that shows a trader how to build a trading operation from the ground up. It explains the topics I need to understand in the High-Frequency space from trading strategies to risk management. This is also the only material that defines what is meant by High Frequency\r\nTrading based on an actual survey of Hedge Fund managers from FinAlternatives (rather than rely solely on academics).\r\nThe overview of statistical and econometric techniques is immensely helpful to walk through the details of how to measure performance in a High Frequency environment. The implications of not holding positions overnight on the Sharpe ratio and on risk management are important for\r\ntraders to understand. ', '30.00', 20, 'ff1e094a9102c714930117c731e8e625.jpg', '72fff1188a093b04c818d9e064266dd8.jpg', '2010-05-12 07:19:31', '0000-00-00 00:00:00'),
(28, 15, 'The Tipping Point', 'Want it delivered Monday, June 28?\r\nOrder it in the next 19 hours and 18 minutes, and choose One-Day Shipping at checkout. ', '9.35', 40, '05e6bf8367f4ef8eaa985066cd2e6037.jpg', 'f41442136d690102cad7f1d08f8b34d6.jpg', '2010-05-12 07:20:23', '0000-00-00 00:00:00'),
(29, 15, 'Bank 2.0', 'The financial crisis is just beginning for retail institutions. Ninety to ninety-five per cent of bank transactions are executed electronically today. The Internet\r\n, ATMs, call centres and smartphones have become mainstream for customers. But banks still classify these as alternative channels and maintain an organisation structure where Branch dominates thinking. Continued technology innovations, Web 2.0, social networking, app phones and mobility are also stretching traditional banking\r\nmodels to the limit. BANK 2.0 reveals why customer behaviour is so rapidly changing, how branches will evolve, why cheques are disappearing, and why your mobile phone will replace your wallet all within the next 10 years.', '40.00', 50, '5cbbdb0c4bdbfbfafc53fc064c5f5ed6.jpg', 'c059ce2aef20ee48160a3fa972c52daa.jpg', '2010-05-12 07:22:06', '0000-00-00 00:00:00'),
(30, 15, 'Improving Performance through Reward, Third Edition', 'This book, the definitive guide to understanding, developing, and implementing effective reward, is aimed at both HR practitioners involved in employee compensation and students who need to understand performance incentives and how they can be successfully applied across organizations. The book is supported by online resources for both lecturers and students.\r\n\r\nThis new edition contains new research conducted by E-Reward, as well as new case studies of international companies who are effectively using reward to improve performance. It includes practical guidance on designing reward for all levels of employee as well as for teams and the organization.\r\n', '50.00', 90, '8aa5ca59f05bd6174cdbc80f50b72f02.jpg', '3c4855a7bd645cfc530dd67a013db614.jpg', '2010-05-12 07:24:31', '0000-00-00 00:00:00'),
(31, 15, 'Wander Woman', 'After years of coaching high-achieving women, master coach and personal development expert Marcia Reynolds started noticing something troubling: many of the clients with whom she worked were plagued by anxiety over their own restless responses to the world. These women were jumping jobs regularly, defining and redefining their relationship with the marketplace, constantly questioning their roles as wives and mothers and sisters.\r\n\r\nDubbing her subjects â€œwander women,â€ Reynolds found that the mentoring and personal development resources currently available donâ€™t address this audienceâ€™s needs. They donâ€™t want to balance their lives; they want to find peace of mind in the chaos. They donâ€™t necessarily want to learn how to gain a seat in the boardroom; they want projects they can run with or businesses they can run on their own. The problem isnâ€™t their level of stress; itâ€™s about knowing who they are and what they want to accomplish in this one lifetime.\r\n\r\nWander Woman explores how generational shifts and changing expectations of working women have fostered a new kind of restlessness among many. Through real-life stories she reveals the hopes and dreams, disappointments and challenges this group of high-achieving women are facing. And, most importantly, she provides exercises and development strategies for readers as they make their journey to peace and finally come to rest with a strong sense of identity and purpose.', '20.00', 10, 'def3987baca43e34a5b86dd25b0fa068.jpg', '402bc6fe655a20b0349311f4ffd8a73c.jpg', '2010-06-23 11:07:01', '0000-00-00 00:00:00'),
(32, 15, 'Resumes for College Students', 'Offers strong, impressive resumes that lead to the right job\r\n\r\nTo stand out among the hundreds of job seekers applying for any position, it''s vital to have a resume that hits the target every time. Each book in this series offers:\r\n\r\n# Nearly 100 sample resumes and 20 cover letters for each field\r\n# A variety of eye-catching resume formats\r\n# Tips on highlighting strengths and using active vocabulary\r\n# Work sheets for gathering personal information\r\n# And much more ', '66.00', 20, 'dac83c6670ca956a40e74d5afc84a362.jpg', 'a162b0e045447f208c5f147c8e2eafc3.jpg', '2010-06-26 01:00:12', '0000-00-00 00:00:00'),
(33, 14, 'The Beginner''s Guide To The World Economy', 'In 75 clear and engaging entries, Epping explains the concepts readers hear discussed on every evening''s news and that have an intimate bearing on their lives and livelihoods. From quotas to subsidies to the WTO, from tax havens to currency options, this timely book offers a fountainhead of vital information, presented simply but never simplistically--and without a single graph.', '57.00', 33, '435322aab44c7239473a469882eb798b.jpg', 'a45a81159fb7d6039c7059cbebf6788b.jpg', '2010-06-26 01:01:47', '0000-00-00 00:00:00'),
(34, 14, 'Making the Transition from LPN to RN', 'This title uses an informal, conversational writing style to engage and encourage students. It presents a balance of theory, clinical application of knowledge, and clinical decision making. It builds on their knowledge of basic nursing skills to address the practice issues that differentiate LPN from RN practice. It provides context-based learning through nursing process, safety, critical thinking, nursing theory, and evidence based practice to RN practice. ', '88.00', 11, 'd59bd4e4d56e22c3bdbba34ce9c313f3.jpg', 'dac573e83eb108656fd73e693029d7e0.jpg', '2010-06-26 01:04:54', '0000-00-00 00:00:00'),
(35, 14, 'Anticorruption in Transition 2', 'Controlling corruption is an essential part of good governance and poverty reduction, and it poses an enormous challenge for governments all around the world. Anticorruption in Transition 2 analyzes patterns and trends in corruption in business-government interactions in the transition economies of Central and Eastern Europe and the former Soviet Union. It points to some encouraging signs that the magnitude and negative impact that corruption exerts on businesses may be declining in many countries in the region. It also shows how some types of firmsâ€”most notably small private onesâ€”encounter more corruption than others, and it underscores the importance of policy and institutional reforms in achieving long-term success in the fight against corruption. The longer-term sustainability of recent improvements is not certain, however, and the challenges ahead remain formidable.', '67.00', 33, 'f12ef0356c06127525465a74bfd9f425.jpg', 'fa18aaebbabdb63979748abc134ef0f5.jpg', '2010-06-26 17:21:42', '0000-00-00 00:00:00'),
(36, 14, 'Fifty Key Figures in Management', 'Management is dynamic, constantly changing and evolving. Fifty Key Figures in Management is a reference guide to the lives and work of the fifty most important figures in the development of the management of businesses and other large organizations, including well known and controversial figures such as Bill Gates, J.P. Morgan and Jack Welch. In addition to providing details of each individual and their contributions, the book as a whole gives readers an idea of how management has developed into its present form. Each entry includes a bibliography and cross-references to other entries, as well as a brief biography presenting the details of the figure''s contributions and an analysis of the significance of their contribution to modern management', '88.00', 22, '5763f2e22763d58889e1d683c396b1d2.jpg', 'd27b71a7bd6aaab6831e168c0c91cbae.jpg', '2010-06-26 17:30:09', '0000-00-00 00:00:00'),
(37, 14, 'The Global Manufacturing Revolution', 'The concrete tools manufacturing enterprises need to thrive in today''s global environment\r\n\r\nFor a manufacturing enterprise to succeed in this current volatile economic environment, a revolution is needed in restructuring its three main components: product design, manufacturing, and business model. The Global Manufacturing Revolution is the first book to focus on these issues. Based on the author''s long-standing course work at the University of Michigan, this unique volume proposes new technologies and new business strategies that can increase an enterprise''s speed of responsiveness to volatile markets, as well as enhance the integration of its own engineering and business.\r\n\r\nIntroduced here are innovations to the entire manufacturing culture:\r\n\r\nâ€¢An original approach to the analysis of manufacturing paradigms\r\n\r\nâ€¢Suggested methods for developing creativity in product design\r\n\r\nâ€¢A quantitative analysis of manufacturing system configurations\r\n\r\nâ€¢A new manufacturing "reconfigurable" paradigm, in which the speed of responsiveness is the prime business goal\r\n\r\nâ€¢An original approach to using information technology for workforce empowerment\r\n\r\nThe book also offers analysis and original models of previous manufacturing paradigms'' technical and business dimensionsâ€”including mass production and mass customizationâ€”in order to fully explain the current revolution in global manufacturing enterprises. In addition, 200 original illustrations and pictures help to clarify the topics.\r\n\r\nGlobalization is creating both opportunities and challenges for companies that manufacture durable goods. The tools, theories, and case studies in this volume will be invaluable to engineers pursuing leadership careers in the manufacturing industry, as well as to leaders of global enterprises and business students who are motivated to lead manufacturing enterprises and ensure their growth. ', '77.00', 7, 'ffcf72866cbe1f80956a50333dae990e.jpg', '679bbae00fbe9a95b8a5fabbe0912be3.jpg', '2010-06-26 17:34:34', '0000-00-00 00:00:00'),
(38, 14, 'What had the Kyoto Protocol Wrought', 'This volume investigates a central issue of climate policy architecture: the structure and potential performance of the Kyoto Protocol''s international trading mechanisms in the presence of diverse types of domestic greenhouse policy instruments. The authors focus on that issue because the protocol explicitly and prominently provides for domestic sovereignty regarding instrument choice and because previous policy experience suggests that many or most countries may not choose tradable permits as their sole or even primary domestic vehicles.\r\n\r\nHahn and Stavins find that although the Kyoto Protocol can provide for an internally consistent international tradable permit program, a fully cost-effective international emissions trading program is not compatible with the notion of full domestic sovereignty regarding the choice of instrument. The authors conclude that individual nations'' choices of domestic policy instruments to meet the Kyoto Protocol''s targets can substantially limit the cost-saving potential of an international trading program. Because international permit trading remains an attractive approach to achieving global greenhouse targets, policymakers need to analyze the likely cost savings from feasible, as opposed to idealized, approaches to reducing international greenhouse gas emissions. ', '99.00', 9, '6a925b2b8220b085aff36abcf8261502.jpg', '99a60ee9ccdadc5f7e526fe9e879baeb.jpg', '2010-06-26 18:08:08', '0000-00-00 00:00:00'),
(39, 14, 'Markenmanagement im Call Center', 'Verena KÃ¶nig zeigt, welchen Beitrag das innengerichtete, identitÃ¤tsbasierte Markenmanagement in Call Centern fÃ¼r einen langfristigen Markenerfolg leisten kann. Im Rahmen einer empirischen Untersuchung, die in Kooperation mit einem groÃŸen deutschen Medienunternehmen durchgefÃ¼hrt wurde, klÃ¤rt sie, mit welchen MaÃŸnahmen das Brand Commitment beeinflusst werden kann und welche Wirkungsunterschiede zwischen internen und externen Call Center Agents bestehen.Trotz Boom leidet die Call Center-Branche unter erheblichen QualitÃ¤tsproblemen. Daher stellt der Aufbau von Brand Commitment (psychologische Markenverbundenheit) von Call Center Agents eine Herausforderung fÃ¼r Unternehmen dar. Verena KÃ¶nig zeigt, welchen Beitrag das innengerichtete, identitÃ¤tsbasierte Markenmanagement in Call Centern fÃ¼r einen langfristigen Markenerfolg leisten kann. Im Rahmen einer empirischen Untersuchung, die in Kooperation mit einem groÃŸen deutschen Medienunternehmen durchgefÃ¼hrt wurde, klÃ¤rt sie, mit welchen MaÃŸnahmen das Brand Commitment beeinflusst werden kann und welche Wirkungsunterschiede zwischen internen und externen Call Center Agents bestehen.', '66.00', 4, 'b26668fa8563085c3f745dd011cda5eb.jpg', 'a884674cd6f6de1488ac52d473d02595.jpg', '2010-06-26 18:11:59', '0000-00-00 00:00:00'),
(40, 14, 'Nachhaltige Logistik', 'Logistik und Supply Chain Management werden sich schon in absehbarer Zukunft an vollkommen neue Randbedingungen und Anforderungen anpassen mÃ¼ssen. Ausgehend von sehr ehrgeizigen Zielvorgaben zur Reduzierung von Schadstoffemissionen, wird die Politik Ã¼ber verschiedene Instrumente wie MautgebÃ¼hren, Verbrauchssteuern und einen Handel mit knapp gehaltenen Emissionszertifikaten zu einer deutlichen Verteuerung von Transporten beitragen. In dieselbe Richtung wirken Ã–lpreissteigerungen sowie zunehmende ProduktivitÃ¤tseinbuÃŸen im GÃ¼terverkehr, der mit einer immer stÃ¤rker Ã¼berlasteten Verkehrsinfrastruktur zu kÃ¤mpfen haben wird. Vor diesem Hintergrund wird die Logistik einen starken eigenen Beitrag zur Erhaltung der MobilitÃ¤t und der Umwelt leisten und sich dabei in Teilen selbst neu erfinden mÃ¼ssen. Ausgehend von einer Beschreibung der zukÃ¼nftigen Randbedingungen werden in diesem Buch Anpassungsstrategien entwickelt, die einen weniger schadstoffintensiven Warenaustausch ermÃ¶glichen und dazu beitragen kÃ¶nnen, die MobilitÃ¤t als Voraussetzung jeder arbeitsteiligen Wirtschaft zu erhalten. Dabei geraten nicht nur logistische Prozess- und Netzwerkarchitekturen auf den PrÃ¼fstand, sondern auch die Ã¼bergeordneten Marketingstrategien und GeschÃ¤ftsmodelle, aus deren Anforderungen die moderne Logistik hervorgegangen ist.', '76.00', 45, '7cea16f4b80598bb99a3a6f749343858.jpg', 'dd3cc1afdc0f41d56a9dc98fa30f6923.jpg', '2010-06-26 18:13:09', '0000-00-00 00:00:00'),
(41, 14, 'Executive Accountability', 'Because technology reaches across and beyond the entire organization, there is a critical need for executive accountability, leadership, and involvement to achieve measurable business benefits from technology investments. Too often, the absence of strategic thinking, unverified technology benefits, ineffective organization-wide decision-making, and vague or dispersed managerial accountability seriously undermine the potential results that could otherwise be achieved from critical initiatives. The authors look realistically at how technology is chosen, how to evaluate existing technology, and how to deliver value.', '78.00', 45, '8ae2d228ab18af3de03790f163a3fb2b.jpg', '6dc144c91bafdd15e225d9079175ebde.jpg', '2010-06-26 18:16:09', '0000-00-00 00:00:00'),
(42, 14, 'Valuation Tools That Unlock Business Wealth', 'Author, speaker, and valuation expert Warren Miller explains how to guide client companies through self-assessment using the five-dimension SPARC framework: Strategy, People, Architecture, Routines, Culture. This framework helps analysts uncover the cause-and-effect relationships that explain business performance. In conjunction with Excel-based software accessible at wiley.com, the resulting value map lights the way for valu-ation professionals and consultants to help client companies increase business value.\r\n\r\nValue Maps provides thorough coverage of:\r\n- Why traditional approaches to valuing a privately owned business are incomplete\r\n- The one level of the SPARC framework that matters far more than the other\r\n- Why benchmarking a company against a public-company composite is the first step in value enhancement\r\n\r\nUsing the framework and tools offered by Value Maps, analysts, business appraisers, and consultants are provided with a nuts-and-bolts guide to enhancing the value of businesses in a way that can be replicated across the existing client bases of analysts and consultants.\r\n\r\nWith twenty-two vignettes illustrating real-world applications of the SPARC framework, Value Maps walks you step by step through a rigorous process to help companies unlock wealth.', '79.00', 44, 'bf4e3dd4373e63a863fc4de89b9def25.jpg', '5be07e4d31bf33f8489f10a7ab48801b.jpg', '2010-06-26 20:06:10', '0000-00-00 00:00:00'),
(43, 22, 'Digitale BetriebsprÃ¼fung: GDPdU in der Praxis', 'Bei der digitalen BetriebsprÃ¼gung erhÃ¤lt der BetriebsprÃ¼fer vom Unternehmen oder dessen Steuerberater lediglich einen DatentrÃ¤ger, welcher die steuerrelevanten Daten beinhaltet. Das Werk erlÃ¤utert die rechtlichen Grundlagen der digitalen BetriebsprÃ¼fung, unterstÃ¼tzt bei der Vorbereitung auf die digitale AuÃŸenprÃ¼fung und beschreibt den Ablauf der digitalen AuÃŸenprÃ¼fung. Kosten- und Datenschutzfragen der PrÃ¼fung werden dabei ebenso beschrieben, wie Fragen der PrÃ¼fsoftware IDEA und eines Systemwechsels sowie der Archivierung der sensiblen Daten. Checklisten machen das Werk zu einem echten Hilfsmittel bei der Umsetzung der neuen Anforderungen an die BetriebsprÃ¼fung.', '78.00', 67, 'bbbe3b2c0dbc181cb22c577eccee7b2f.jpg', '48a9eeca59291eefbc138dafa8bc4b10.jpg', '2010-06-26 20:26:48', '0000-00-00 00:00:00'),
(44, 22, 'Cash Pooling im Konzern', 'Vor dem Hintergrund verschÃ¤rfter Eigenmittelvorschriften der Kreditinstitute und angespannter FinanzmÃ¤rkte wird Cash Pooling als Form der Konzernfinanzierung immer wichtiger. Neben den zivilrechtlichen Grundlagen werden die mit Cash Pooling verbundenen Fragen der Kapitalaufbringung und -erhaltung sowie des Haftungsverbunds behandelt. DarÃ¼ber hinaus wird der Gegensatz zwischen up- und downstream ZahlungsstrÃ¶men im Hinblick auf das Eigenkapitalersatzrecht erlÃ¤utert.\r\nDie umfassende gesellschafts- und zivilrechtliche Darstellung vertieft das VerstÃ¤ndnis der rechtlichen Grundlagen und Problemkreise von Cash Pooling. ', '80.00', 20, 'd103e30cbbc6dc9b9e7a4e627a6a13a8.jpg', 'f0736c54c2f12007cf9d50ff7aa8182d.jpg', '2010-06-26 20:28:07', '0000-00-00 00:00:00'),
(45, 22, 'Der wissenschaftliche Vortrag', 'Der wissenschaftliche Vortrag gilt als ausgezeichnetes Instrument um die Aufmerksamkeit auf die eigene Arbeit zu lenken. Das Handwerkszeug wird dazu kaum gelehrt, sodass Ã¶ffentliche Auftritte oft mit vielen Unsicherheiten verbunden sind. Dieses Buch fÃ¼llt diese InformationslÃ¼cke indem es prÃ¤zise Richtlinien fÃ¼r das erfolgreiche und pannenfreie Halten von wissenschaftlichen VortrÃ¤gen schildert und dabei alle in diesem Zusammenhang auftretenden Fragen beantwortet. Neben den unterschiedlichen Phasen eines Vortrages, von der Vorbereitung bis hin zur Diskussion, werden auch der effiziente Einsatz von modernen visuellen Hilfsmitteln, wie etwa Grafik, Farbauswahl und Animationseffekte ausfÃ¼hrlich und praxisbezogen geschildert. Ideal fÃ¼r junge Akademiker, die kurz vor ihrem ersten Kongressauftritt stehen, aber auch fÃ¼r erfahrene Wissenschaftler, die einzelne Aspekte ihrer Vortragstechnik verbessern wollen. ', '57.00', 11, '17d0660db30b8330ba1d7d96658d7f10.jpg', 'c6b331ca3d635269ed580ab8605fbda6.jpg', '2010-06-26 20:29:46', '0000-00-00 00:00:00'),
(46, 22, 'Die moderne Finanzfunktion', 'Im Fokus steht die Suche nach zukÃ¼nftigen Antworten auf Fragen, wie: Wohin werden sich die Bereiche Finance und Controlling entwickeln? Wie werden sich die Instrumente im Bereich Finance und Controlling verÃ¤ndern mÃ¼ssen, um eine Unternehmenssteuerung vor dem Hintergrund steigender Marktdynamik und -komplexitÃ¤t strategiekongruent zu ermÃ¶glichen?Ziel von renommierten Autoren aus Wissenschaft und Praxis ist, die Entwicklung von Strategien, Instrumenten, Konzepten und OrganisationsansÃ¤tzen im Finance- und Controllingbereich perspektivisch zu erlÃ¤utern.Im Fokus steht die Suche nach zukÃ¼nftigen Antworten auf Fragen, wie:- Wohin werden sich die Bereiche Finance und Controlling entwickeln?- Wie werden sich die Instrumente im Bereich Finance und Controlling verÃ¤ndern mÃ¼ssen, um eine Unternehmenssteuerung vor dem Hintergrund steigender Marktdynamik und -komplexitÃ¤t strategiekongruent zu ermÃ¶glichen? ', '55.00', 16, '70862c3c00c68366efa8ab13a2caf6d7.jpg', 'dc1d242d51cdd4015e73c4fa1b37b74b.jpg', '2010-06-26 20:30:51', '0000-00-00 00:00:00'),
(47, 22, 'Job Search Secrets', 'With this latest guide to conducting a succe ssful search, job hunters discover how to make contacts, pre pare for successful interviews and land a job.', '111.00', 69, 'ec0334381612aae2a4925cd6d14a32d5.jpg', '3faab548f0b6b139cf681e52a6ea7c20.jpg', '2010-06-26 20:32:03', '0000-00-00 00:00:00'),
(48, 22, 'An Analysis of Household Finance', 'This investigation proposes a conceptual framework for measurement necessary for an analysis of household finance and economic development. The authors build on and, where appropriate, modify corporate financial accounts to create balance sheets, income statements, and statements of cash flows for households in developing countries, using an integrated household survey. The authors also illustrate how to apply the accounts to an analysis of household finance that includes productivity of household enterprises, capital structure, liquidity, financing, and portfolio management. The conceptualization of this analysis has important implications for measurement, questionnaire design, the modeling of household decisions, and the analysis of panel data. ', '222.00', 44, 'dae6f177bf6932da98c12d576de5bd8c.jpg', 'f958ebe0d6d023af1f6ad1da418560eb.jpg', '2010-06-26 20:33:05', '0000-00-00 00:00:00'),
(49, 22, 'The Real Impact of Liberalization', 'Clive George''s provocative book examines the evidence both for and against world trade. He exposes the myths, and presents challenging new proposals for comprehensive reform. Based on ten years of in-depth research into the impacts of the trade agreements that are forged in the World Trade Organization and through regional negotiations it reveals that few of the claims made by the major players stand up to scrutiny, while many of the counter-claims lack rigor in their analysis of key issues. From its analysis of the relationships between trade, social transformation, economic growth and environmental sustainability, the book concludes with proposals for how the rules by which trade is governed might be reformed to help tackle the world''s most pressing problems instead of making them worse. ', '321.00', 89, '1840696339ea6fdf6bd0f092bbe6753b.jpg', '194e0dd1685f454b4145ae40d8261875.jpg', '2010-06-26 20:34:37', '0000-00-00 00:00:00'),
(50, 22, 'Implications for Policy and Regulation', 'The ICT sector is crucial as a driver of economic and social growth. Not only is it an important industry in its own right, but it also provides the communication and infrastructure without which modern economies could not function. How does this sector work? Why is it stronger in some countries than in others? What should companies, governments and regulators be doing to enhance its contribution? In The New ICT Ecosystem, Martin Fransman answers these and other questions by developing the idea of the ICT sector as an evolving ecosystem. He shows that some components of the ICT ecosystem, particularly the innovation process, work better in some countries and regions than in others. For example, the Internet content and applications layer of the ecosystem tends to work better in the US than in Europe or Asia. The analysis in this book enables policy makers and regulators to understand why some parts of the ICT ecosystem are underperforming and what can be done to enhance their performance. The previous edition of The New ICT Ecosystem won the 2008-10 Joseph Schumpeter Prize. â€¢ Winner of the 2008-10 Joseph Schumpeter Prize â€¢ Presents a highly original analysis of the ICT sector based on the metaphor of an evolving ecosystem â€¢ Provides important advice to policy makers and regulators about how underperforming parts of of the ICT sector can be improved', '49.00', 99, '466f24137882c7692c11e0f41477b5c6.jpg', 'abd8235f14f68fbfbeed67b4679936dd.jpg', '2010-06-26 20:35:36', '0000-00-00 00:00:00'),
(51, 22, 'Designing Your Next Marketing Campaign', 'In this completely revised book, top Facebook marketer Justin R. Levy shows how to use Facebook to attract more customers and earn more profits. This isnâ€™t hype: Itâ€™s actionable information based on the real experiences of companies and individuals who have used Facebook to supercharge their businesses and careers. Levy covers it all, from the absolute basics to attracting visitors and building your community. Youâ€™ll discover the latest tools and Facebook Appsâ€“and new best practices for everything from search to privacy. Packed with real case studies, this is the only Facebook business guide you need: your fast, complete blueprint for success.\r\n\r\nCoverage includes\r\nâ€¢ Learning from the pioneers and avoiding beginnerâ€™s mistakes\r\nâ€¢ Developing a winning Facebook marketing strategy\r\nâ€¢ Establishing a presence that starts working fast and grows with you\r\nâ€¢ Designing Facebook ads that drive more clickthroughs at lower cost\r\nâ€¢ Using Facebook Connect and Live Stream Box to reach customers outside Facebook\r\nâ€¢ Monitoring what customers are saying about you in real-time\r\nâ€¢ Communicating more powerfully with widgets and Apps\r\nâ€¢ Addressing privacy concerns\r\nâ€¢ Building communities that promote loyalty and innovation\r\nâ€¢ Using Sweepstakes and other traffic builders\r\nâ€¢ Mastering advanced Facebook marketing tips, tricks, and hacks\r\nâ€¢ Preparing for the future of Facebook', '212.00', 71, '47440f8f2272c72ff281f6c24c67338a.jpg', '2856083dfea08d05fda4e2bb12a64710.jpg', '2010-06-26 20:36:53', '0000-00-00 00:00:00'),
(52, 22, 'Facebook Marketing', 'In this completely revised book, top Facebook marketer Justin R. Levy shows how to use Facebook to attract more customers and earn more profits. This isnâ€™t hype: Itâ€™s actionable information based on the real experiences of companies and individuals who have used Facebook to supercharge their businesses and careers. Levy covers it all, from the absolute basics to attracting visitors and building your community. Youâ€™ll discover the latest tools and Facebook Appsâ€“and new best practices for everything from search to privacy. Packed with real case studies, this is the only Facebook business guide you need: your fast, complete blueprint for success.\r\n\r\nCoverage includes\r\nâ€¢ Learning from the pioneers and avoiding beginnerâ€™s mistakes\r\nâ€¢ Developing a winning Facebook marketing strategy\r\nâ€¢ Establishing a presence that starts working fast and grows with you\r\nâ€¢ Designing Facebook ads that drive more clickthroughs at lower cost\r\nâ€¢ Using Facebook Connect and Live Stream Box to reach customers outside Facebook\r\nâ€¢ Monitoring what customers are saying about you in real-time\r\nâ€¢ Communicating more powerfully with widgets and Apps\r\nâ€¢ Addressing privacy concerns\r\nâ€¢ Building communities that promote loyalty and innovation\r\nâ€¢ Using Sweepstakes and other traffic builders\r\nâ€¢ Mastering advanced Facebook marketing tips, tricks, and hacks\r\nâ€¢ Preparing for the future of Facebook', '222.00', 111, '8d5ff05b9e4240913cc307f43a70591f.jpg', 'fd40e96ddd7f65049b4ab9039f58d1e0.jpg', '2010-06-26 20:38:19', '0000-00-00 00:00:00'),
(53, 16, 'The Children''s Baking Book', 'With easy-to-follow step by step instructions sure to inspire children to bake up brownies, breads, pastries, muffins, cookies, cakes, and more, the Children''s Baking Book features more than fifty fabulous recipes guaranteed to stir any baker. Full-color photos of each tasty dish help kids understand what to do, and make it even easier to follow the fun recipes. With twists on old favorites and delicious new ideas, tips and advice on preparation and cooking, the Children''s Baking Book will help budding chefs become brilliant bakers!', '89.00', 45, '4f9a1b414147a23fb14604aff6d3bf04.jpg', '5ebbd70bae1055e9991b559436bab298.jpg', '2010-06-26 21:00:35', '0000-00-00 00:00:00'),
(54, 16, 'What Everyone Needs to Know', 'The politics of food is changing fast. In rich countries, obesity is now a more serious problem than hunger. Consumers once satisfied with cheap and convenient food now want food that is also safe, nutritious, fresh, and grown by local farmers using fewer chemicals. Heavily subsidized and under-regulated commercial farmers are facing stronger push-back from environmentalists and consumer activists, and food companies are under the microscope. Meanwhile in developing countries, agricultural success in Asia has spurred income growth and dietary enrichment, but agricultural failure in Africa has left one third of all citizens undernourished. The international markets that link these diverse regions together are subject to sudden disruption, as noted when an unexpected spike in international food prices in 2008 caused street riots in a dozen or more countries.\r\n\r\nIn a lively and easy-to-navigate, question-and-answer format, Food Politics carefully examines and explains the most important issues on today''s global food landscape, including international food prices, famines, the politics of chronic hunger, the Malthusian race between food production and population growth, international food aid, controversies surrounding "green revolution" farming, the politics of obesity, farm subsidies and trade, agriculture and the environment, agribusiness, supermarkets, food safety, fast food, slow food, organic food, local food, and genetically engineered food.\r\n\r\nPolitics in each of these areas has become polarized over the past decade by conflicting claims and accusations from advocates on all sides. Paarlberg''s book maps this contested terrain through the eyes of an independent scholar not afraid to unmask myths and name names. More than a few of today''s fashionable beliefs about farming and food are brought down a notch under this critical scrutiny. For those ready to have their thinking about food politics informed and also challenged, this is the book to read.', '112.00', 77, '6932907fcd16c3008249a25eae79ad36.jpg', '29bc493d261b5acffee5b47347c3819c.jpg', '2010-06-26 21:02:19', '0000-00-00 00:00:00'),
(55, 16, 'The What to Eat if You Have Cancer Cookbook', 'The authors intend this cookbook as a companion to their What to Eat If You Have Cancer (1996). Aimed at the 2.5 million Americans who undergo cancer treatment each year, the meatless recipes stress healthy and enjoyable eating while addressing malnutrition and other side effects of conventional cancer therapies. Thus we find such chapters as "Meals in a Glass" for those suffering from loss of appetite or sore mouths or throats, or the individual chapters on cruciferous vegetables and soy foods, both of which contain numerous documented anticancer compounds. Chapter introductions and sidebars discuss the cancer-fighting and other health benefits of particular foods and nutrients, give preparation tips, and describe less-common ingredients. Special food needs for underweight are given detailed consideration, such as recipe options of adding more oil or comparisons of protein powders and other supplements. A list of suppliers and a glossary complete this welcome collection.', '221.00', 23, 'f70d9cd53c66ffea630acb4d6ce0e89d.jpg', '69b6a34b8b2d01db3d6570631a2f1906.jpg', '2010-06-26 21:03:15', '0000-00-00 00:00:00'),
(56, 16, 'The Fats of Life', 'The Fats of Life delineates the importance of essential fatty acids, with a focus on distinctions between omega-3 and omega-6 fatty acid variants. Lawrence addresses in detail the capacity for polyunsaturated fatty acids to influence asthma, atherosclerosis, heart disease, inflammation, cancer, and immunity.', '113.00', 22, '79ea21a5eb76a7ddf6a1e30a3042675f.jpg', '454445ea38f612e15ec0cbd42a7efdd8.jpg', '2010-06-26 21:09:23', '0000-00-00 00:00:00'),
(57, 16, 'Baked Products', 'With a combined experience of 65 years in the baking industry with commercial and research companies Stan Cauvain and Linda Young are recognised international experts in the science and technology of baked products. They are now Directors and Vice Presidents of the consultancy company BakeTran, Stanley with responsibility for Research and Development and Linda for Knowledge Systemization and Training.\r\nTaking a fresh approach to information on baked products, this exciting new book from industry consultants Cauvain and Young looks beyond the received notions of how foods from the bakery are categorised to explore the underlying themes which link the products in this commercially important area of the food industry. ', '33.00', 41, 'd4570994cc6c612df548afb758763e9c.jpg', '9d95345bf5257814ef1bfd2a6e7dc6ae.jpg', '2010-06-26 21:10:26', '0000-00-00 00:00:00'),
(58, 16, 'PrÃ©paration tradionnelle', 'Cet ensemble exceptionnel de recettes offre une variÃ©tÃ© de puddings pour toutes les occasions. Vous n''aurez que l''embarras du choix entre les plus traditionnels, les grands favoris de notre enfance, et des recettes plus originales.', '41.00', 22, 'bc879b7d23736fc7aabde948652fc1aa.jpg', 'f22a82d2acb71ee20a9e5670437e9187.jpg', '2010-06-26 21:13:07', '0000-00-00 00:00:00'),
(59, 16, 'The Cafe Brenda Cookbook', 'For years, restaurant owner and chef Brenda Langton has led the way in bringing sophisticated but sensible vegetarian and seafood cooking to the Midwest. At last, the recipes from her highly successful Twin Cities'' restaurant, Cafe Brenda, are available in this The Cafe Brenda Cookbook. Cafe Brenda''s health gourmet fare, the "cuisine of a third coast," has drawn raves from diners and critics alike.\r\nWith this cookbook, Langton provides cooks and diners with many of her most requested dishes-from her renowned vegetarian croquettes to savory soups (like Roasted Potato & Garlic soup) and stews and imaginative seafood recipes (like Poached Rainbow Trout with Berry Vinaigrette.) And then there are the sumptuous, naturally sweetened desserts, such as chocolate carrot cake, fresh fruit tarts, and maple pot de creme. ', '45.00', 22, 'fe2bbffebef060587c85138cf6a8b5ea.jpg', '91e95f645d72418513c68d73d6aa8b6b.jpg', '2010-06-26 21:21:15', '0000-00-00 00:00:00'),
(60, 16, 'Animal Modelling Made Easy', 'Ms Parish has a wonderful talent and the modeled animals in the booklet are beautiful, but I found the physical layout of the pages to be cramped and the instructions lacked step-by-step photos.\r\n\r\nFirst of all the book is very small 8 1/4" x 5 3/4" and the text in tiny (8 pt) making it very difficult to read. I actually enlarged the pages on a color copier so I could read them without straining my eyes.\r\n\r\nSecond, while the text instructions are very thorough, there are no detail photographs or diagrams to support the step-by-step written directions. There is one large photograph of the completed project and one small (3" x 2 1/2") group shot showing all the individual pieces (arms, legs, tail, nose, ext) that make up the finished piece. I''m not an experienced modeler, so close-up photo illustrating each detailed instruction would have been a great help.\r\n\r\nBut regardless of the small text size and lack of step-by-step photos, the booklet is a little gem. The animals are so cute and with some practice, they are easy to reproduce', '332.00', 123, '9ec406e4673b6a279c1c11292abff395.jpg', 'ccf3eec8d5540e073af62ba3d3de96bd.jpg', '2010-06-26 21:40:54', '0000-00-00 00:00:00'),
(61, 16, 'The Philosophy of Vegetarianism', 'The history of ideas is a strange bird indeed. At times, when the Owl of Minerva flies at night, one can detect a steady progress to human thought, which leads some to go so far as to suggest that such progress will inexorably occur in the future. At other times some philosophers of history or historians of philosophy have noticed either a decline in man''s reflective ability to deal with the world around him, or a qualitative neutrality in the thought of different ages when these ages are compared. This neutrality may be seen either as a monotonous succession of one theory after another or as a process wherein each intellectual advance is succeeded by a period of barbarism, leaving us with the same human predicament we started with. What is not often noticed is the intermittent character of the history of ideas. Often an idea is suggested, held to be true for a while, then ignored, finally to be rediscovered. But if the idea is ignored for too long, the rediscoverers may consider themselves discoverers. This is unfortunate for two reasons: (1) It does an injustice to the original discoverers (or creators) of the idea; and (2), it may prejudiciously result in a too narrowly circumscribed treatment of the idea. ', '44.00', 22, 'bfa7a3bf70782996ee893bf445d23a68.jpg', 'dfe0c503db51db30023445aaccc96004.jpg', '2010-06-26 21:43:24', '0000-00-00 00:00:00'),
(62, 17, 'Nervennahrung', 'KonzentrationsfÃ¤higkeit, Belastbarkeit, LeistungsfÃ¤higkeit und gute Nerven sind heute gefragter denn je. Besonders "Kopfarbeiter", Studenten und LeistungstrÃ¤ger mÃ¼ssen vielseitige Anforderungen erfÃ¼llen. - Das richtige Essen kann dabei helfen! Dieser Ratgeber zeigt, wie man GedÃ¤chtnis und KonzentrationsfÃ¤higkeit mit der richtigen Nahrung verbessern und die Nerven besÃ¤nftigen kann. Die Autorin erklÃ¤rt, welche Lebensmittel Gehirn und Nerven besonders unterstÃ¼tzen und welche ihnen schaden. Sie gibt auch Tipps, wie man sich am besten vor schwierigen PrÃ¼fungen ernÃ¤hrt. ', '121.00', 43, 'd3385c8dcdb60ef9f99ef8b69e3ccb02.jpg', 'aece450f677f50a7066fda1f07dfd881.jpg', '2010-06-26 21:45:56', '0000-00-00 00:00:00'),
(63, 17, 'Werkstatt Verlag', 'Die US-amerikanische KÃ¼che ist so bunt und vielschichtig wie die Bewohner des riesigen Landes. Ein Melting Pot, in dem lokale Traditionen, lebendiges Brauchtum und die kulinarischen Vorlieben der verschiedenen Immigranten miteinander verschmelzen. Das Buch widmet sich vorwiegend der regionalen und ethnischen KÃ¼che, gespickt mit den Klassikern, die fast Ã¼berall verzehrt werden. So finden sich neben dem wohl bekanntesten Mix aus Mexiko und Texas (Tex-Mex), Chili con carne, die jÃ¼dische Challah (Hefezopf) sowie der allseits beliebte Blaubeerpfannkuchen und selbstverstÃ¤ndlich der Thanksgiving-Truthahn.', '122.00', 21, '7d7819e7e7284ea437a27982c02f98c5.jpg', '7a4292c50492123c94c863baff026f60.jpg', '2010-06-26 21:47:03', '0000-00-00 00:00:00'),
(64, 17, 'A Book of Mediterranean Food', 'A collection of recipes the author made while living in the Mediterranean area, doing her own cooking and obtaining her information first hand. The majority of dishes do not require exotic ingredients, being made with everyday vegetables, herbs, fish and poultry but treated in unfamiliar ways.\r\n\r\nLong acknowledged as the inspiration for such modern masters as Julia Child and Claudia Roden, A Book of Mediterranean Food is Elizabeth David''s passionate mixture of recipes, culinary lore, and frank talk. In bleak postwar Great Britain, when basics were rationed and fresh food a fantasy, David set about to cheer herself --and her audience-- up with dishes from the south of France, Italy, Spain, Portugal, Greece, and the Middle East. Some are sumptuous, many are simple, most are sublime.\r\n', '41.00', 28, '71c8113729bd4b2abb5d584a35ae2fe7.jpg', '3bceea9bb238f01c501b6267ce4c9437.jpg', '2010-06-26 21:50:05', '0000-00-00 00:00:00');
INSERT INTO `tbl_product` (`pd_id`, `cat_id`, `pd_name`, `pd_description`, `pd_price`, `pd_qty`, `pd_image`, `pd_thumbnail`, `pd_date`, `pd_last_update`) VALUES
(65, 17, 'Cuisine des premiÃ¨res nations', '"La cuisine des PremiÃ¨res Nations dont il est question dans ce livre n''a rien de folklorique. C''est une cuisine qu''on a oubliÃ© de faire. On a oubliÃ© le goÃ»t du gibier ou des plantes autochtones qui poussent dans nos forÃªts du QuÃ©bec. Des aliments qui nous rapprochent de ce qu''on devrait, en fait, manger pour notre bien-Ãªtre", explique Manuel Kak''wa Kurtness. DÃ¨s les premiÃ¨res pages de son magnifique ouvrage intitulÃ© Pachamama (ou Terre-MÃ¨re en langue quechua), publiÃ© aux Ã©ditions du BorÃ©al, on entre dans l''univers "ethnogourmand" de ce chef d''origine innue, professeur de cuisine et guide de plein air Ã  Mashteuiatsh - une communautÃ© autochtone situÃ©e Ã  5 km de Roberval, au Lac-Saint-Jean -, Ã©galement artiste peintre et animateur de la sÃ©rie tÃ©lÃ© Pachamama sur l''alimentation des PremiÃ¨res Nations (actuellement diffusÃ©e sur les chaÃ®nes APTN et TFO). Les superbes photos d''Albert Elbilia nous conduisent sur les traces de ce professeur qui emmÃ¨ne ses Ã©lÃ¨ves Ã  la chasse et Ã  la pÃªche "pour vrai", comme son pÃ¨re l''a fait avec lui. "Redevenir des cuisiniers nomades qui rÃ©coltent, chassent et prÃ©parent leurs repas en pleine nature fait revivre la culture, l''identitÃ© de ces jeunes. Aujourd''hui, nous achetons nos aliments au supermarchÃ©, souvent nous ignorons d''oÃ¹ viennent les ingrÃ©dients que nous utilisons pour nous nourrir... Il y a pourtant un garde-manger naturel tout autour de nous dont nous ne soupÃ§onnons pas l''existence." DivisÃ© en 11 chapitres, le livre Ã©voque l''histoire et les traditions culinaires de 11 nations autochtones vivant au QuÃ©bec, des Hurons-Wendats qui cultivaient les trois soeurs, la courge, le maÃ¯s et le haricot, aux pÃªcheurs experts micmacs, en passant par les nomades innus qui cuisinaient le saumon, le caribou, le phoque, le porc-Ã©pic ou l''ours sans en perdre une miette, fabriquant des vÃªtements et tentes en peaux et divers outils avec les os et les ligaments des animaux. Pourtant, les recettes que Manuel Kak''wa Kurtness propose sont bien ancrÃ©es dans la rÃ©alitÃ© d''aujourd''hui, certaines Ã©voquant mÃªme la haute gastronomie quÃ©bÃ©coise puisque le chef a notamment fait ses classes avec Daniel VÃ©zina au Laurie RaphaÃ«l de QuÃ©bec. "C''est une cuisine trÃ¨s simple, avec de super-ingrÃ©dients, et elle n''est pas exclusivement rÃ©servÃ©e aux chasseurs et aux pÃªcheurs. On fait tous des BBQ et des pique-niques. Dans le livre, je propose, par exemple, une recette de similicastor Ã  rÃ©aliser avec un pied de veau et de la viande de porc pour retrouver en bouche la texture et le goÃ»t de ce gibier pour le moins difficile Ã  dÃ©nicher en Ã©picerie!"', '34.00', 11, '6e6323d619b240bb1bd24e203baab046.jpg', '4224876e111364c3eb4ee97633b76e73.jpg', '2010-06-26 21:55:10', '0000-00-00 00:00:00'),
(66, 17, 'Professional Cooking, 6th Edition', 'Wayne Gisslen''s Professional Cooking has helped train hundreds of thousands of professional chefs. With clear, in-depth instruction on the cooking theories and techniques successful chefs need to meet the demands of the professional kitchen. Now, with 1,100 recipes and more information than ever before, this beautifully revised and updated 6th Edition helps culinary students and aspiring chefs gain the tools and confidence they need to succeed as they build their careers in one of the fastest growing and exciting fields today. ', '68.00', 23, '1d3d710f56ea5858304b3c07688d8a53.jpg', '83cee35bdea05409f9a11934089e112b.jpg', '2010-06-26 21:56:17', '0000-00-00 00:00:00'),
(67, 17, 'Les recettes inavouables', '40 recettes "impertinentes" : faciles, rapides et bon marchÃ©.\r\nQu''est-ce qu''une recette inavouable ? Une recette trÃ¨s-trÃ¨s facile Ã  rÃ©aliser, une recette trÃ¨s-trÃ¨s bon marchÃ©, une recette qui met en scÃ¨ne un produit considÃ©rÃ© (Ã  tort) comme peu gastronomique, voire carrÃ©ment tabou. 100 recettes simplissimes pour cuisiner des miracles Ã  partir de... poissons en conserve, fromages en portion, fruits en bocal, lÃ©gumes sous vide, soupes en sachet et autres produits " inavouables ". Des inventions inÃ©dites aux plus grands classiques de la gastronomie " inavouable " franÃ§aise et anglo-saxonne. Des conseils pour transformer et personnaliser chaque recette.\r\nPromettez que tout cela restera entre nous. Cachez ce livre et ignorez l''avoir jamais lu. Ne l''offrez qu''Ã  vos amis... discrÃ¨tement. ', '78.00', 18, '548c3c89e62694111f9fcdbe37da7d4d.jpg', '63ebf219d7b10376fafcfd69ae7421f8.jpg', '2010-06-26 21:58:24', '0000-00-00 00:00:00'),
(68, 17, 'Les 50 Meilleurs Recettes De Quiches', 'France Loisirs, "Les 50 Meilleurs Recettes De Quiches"\r\nSaep | 2005 | ISBN: N/A | 64 pages | PDF | 57,3 MB ', '44.00', 99, '4aa94aca6fb646d1e02c9215a1d0a179.jpg', '6a0311bc1ecd52a2710bf7fcd2320576.jpg', '2010-06-26 21:59:17', '0000-00-00 00:00:00'),
(69, 17, 'Les nouvelles recettes inavouables', 'Qu''est ce qu''une recette inavouable? Une recette trÃ¨s (trÃ¨s) facile Ã  rÃ©aliser, une recette trÃ¨s (trÃ¨s) bon marchÃ©, une recette qui met en scÃ¨ne un produit considÃ©rÃ© (Ã  tort) peu gastronomique, voire carrÃ©ment tabou. AprÃ¨s avoir confiÃ© leurs premiÃ¨res Recettes inavouables (2002 et 2006), Seymourina Cruse et Steven Ware nous livrent ici un recueil inÃ©dit de 100 nouvelles recettes pour cuisiner des miracles Ã  partir de soupes en sachet, poissons en conserve, fromages en portion et autres pÃ©pites de supermarchÃ©. Tous les produits qui n''avaient pas encore rÃ©vÃ©lÃ© ce qu''ils avaient dans le ventre y sont cuisinÃ©s. Les plus grands classiques de la gastronomie internationale rÃ©vÃ¨lent leur version courte. Les restes les plus improbables retrouvent incognito te devant de la scÃ¨ne... Un livre magnifique, Ã  voir, Ã  tire et Ã  manger, par un couple qui vous veut du bon. ', '98.00', 45, 'c9f6abbc524b248311d761ca9d49adb3.jpg', '60aacddd0823c71f0bdf35c52214b0e6.jpg', '2010-06-26 22:00:16', '0000-00-00 00:00:00'),
(70, 17, 'Hello, Cupcake!', 'Witty, one-of-a-kind imaginative cupcake designs using candies from the local convenience store. America''s favorite food photography team, responsible for the covers of America''s top magazines, shows how to create funny, scary, and sophisticated masterpieces, using a zipper lock bag and common candies and snack items. With these easy-to-follow techniques, even the most kitchen-challenged cooks can\r\nâ€¢ raise a big-top circus cupcake tier for a kid''s birthday\r\nâ€¢ plant candy vegetables on Oreo earth cupcakes for a garden party\r\nâ€¢ trot out a line of confectionery "pupcakes" for a dog fancier\r\nâ€¢ serve sausage and pepperoni pizza cupcakes for April Fool''s Day\r\nâ€¢ bewitch trick-or-treaters with chilly ghost chocolate cupcakes\r\nâ€¢ create holidays on icing with turkey cupcake place cards, a white cupcake Christmas wreath, and Easter egg cupcakes\r\n\r\nNo baking skills or fancy pastry equipment is required. Spotting the familiar items in the hundreds of brilliant photos is at least half the fun. ', '100.00', 55, 'cfb9fcfebe727de83f170e9f19bfcacd.jpg', '0d3ce3fe4923e2ca78448b96a9a73769.jpg', '2010-06-26 22:01:27', '0000-00-00 00:00:00'),
(71, 17, 'Culinary Creations For Lovers', 'Whether you''re planning for the slow seduction of a three-course meal or an imaginative way to lead up to the real main course, here are dozens of delicious recipes and creative tips for that perfect night in - and the morning after.\r\n\r\nIn The Seduction Cookbook, author Diane Brown offers much more than romantic recipe secrets. She teaches how to heighten passion through appetizing anticipation, and shares tempting techniques for preparing and serving her creations.\r\n\r\nInside you''ll find appetizers that will induce a little "fork-play" such as Chile Lime Shrimp; Rocket Salad with Black Mission Figs; and Ahi Tuna Ceviche with Advocado. Erotic entrees include Scallops with Asparagus and Ginger Beurre Blance and Sausages in Red Wine. And if you make it to dessert, try replacing low-carb with "low-garb" by enjoying the sweet sensation of Strawberries Stuffed with Mascarpone Cheese and Dark Chocolate or Poached Pears in Cardamom Syrup, among many others.\r\n\r\nDiane Brown also features menus for special occasions, dishes you can make together and intimate serving suggestions. So relax, slip into something a little more comfortable. With these simple recipes The Seduction Cookbook will surely satisfy in more ways than one.\r\n\r\nThe Seduction Cookbook is the perfect gift to celebrate a birthday, anniversary, wedding, or just a romantic evening together.', '211.00', 91, 'f733e00314cec09bc951db9bee5845df.jpg', '0b9bd94921d9895bc6ef40190f55d48e.jpg', '2010-06-26 22:02:35', '0000-00-00 00:00:00'),
(72, 17, 'Encyclopedia of Human Nutrition', 'The Encyclopedia of Human Nutrition is a superb attempt to incorporate into one three-volume textbook the many elements of the rapidly expanding science of nutrition. The book is timely, given the increased interest in diet and health by the general public worldwide. It is broad based and covers the physiologic aspects of nutrient and energy requirements of different populations; measurements of dietary intake and nutritional status; the nutrient composition of the main food groups; associations between diet, lifestyle, and disease; clinical applications of nutrition to improve health; topical issues relating to the food-processing industry; influences affecting food choice and eating behavior; nutritional guidelines and public health policies in both developed and developing countries; international aspects of food labeling; and a range of other, related topics.\r\n($1,000.80)', '123.00', 67, '26f4832cff6cb3351ae132cb05cabf2c.jpg', '38e7bdd559afa22e627f5614b86504e0.jpg', '2010-06-26 22:04:54', '0000-00-00 00:00:00'),
(73, 20, 'A Guide to Man-Made Landforms', 'Today, societyâ€™s impact on the geographical environment, and especially on the Earthâ€™s surface, is obvious. Yet up until the last century, the forces of nature held sway, with mankind vulnerable and exposed to its vagaries. However, our recent development has meant that our effect on our surroundings is now commensurate with the power of nature itself. More and more, we face the consequences â€“ mostly disadvantageous â€“ of our interventions, and we must pay more attention to the wider impacts of our activities, which include everything from the extraction of fossil fuels to the influence of tourism. Anthropogenic geomorphology, as the study of the way man affects his physical environment, has thus developed rapidly as a discipline in recent decades. This volume provides guidance to students discussing the basic topics of anthropogenic geomorphology. The chapters cover both its system, and its connections with other sciences, as well as the way the subject can contribute to tackling todayâ€™s practical problems. The book represents all fields of geomorphology, giving an introduction to the diversity of the discipline through examples taken from a range of contexts and periods, and focusing on examples from Europe. It is no accident that anthropogenic geomorphology has been gaining ground within geomorphology itself. Its results advance not only the theoretical development of the science but can be applied directly to social and economic issues. Worldwide, anthropogenic geomorphology is an integral and expanding part of earth sciences curricula in higher education, making this a timely and relevant text.', '21.00', 24, '0a8b4b98566fcf81c858cf874b5896ee.jpg', '1d991abcd779784b957f88365cf7d5c6.jpg', '2010-06-26 22:17:20', '0000-00-00 00:00:00'),
(74, 20, 'Julian Murchison - Ethnography Essentials', 'A comprehensive and practical guide to ethnographic research, this book guides you through the process, starting with the fundamentals of choosing and proposing a topic and selecting a research design. It describes methods of data collection (taking notes, participant observation, interviewing, identifying themes and issues, creating ethnographic maps and tables and charts, and referring to secondary sources) and analyzing and writing ethnography (sorting and coding data, answering questions, choosing a presentation style, and assembling the ethnography). Although content is focused on producing written ethnography, many of the principles and methods discussed here also apply to other forms of ethnographic presentation, including ethnographic film. ', '88.00', 65, 'd44611723bd4fe61a3f8f94caab1be3c.jpg', 'd54861a9d708447a68582ddb55c3830e.jpg', '2010-06-26 22:23:20', '0000-00-00 00:00:00'),
(75, 20, 'Literacy and Augmentative and Alternative Communication', 'The new demands of this "computer and technology age" have focused international attention on literacy levels, on literacy development and literacy disorders. Governments have launched programs to reduce literacy difficulties and support functional literacy for all. In this context, the needs of individuals with severe speech and physical impairments may seem relatively small, and even unimportant. However, for this group of individuals in particular unlocking the literacy code opens up tremendous opportunities, minimizing the disabling effects of their underlying speech and motor impairments, and supporting participation in society. Ironically however, for a group for whom literacy is such an important achievement, current studies suggest that achieving functional literacy skills is particularly challenging.\r\n\r\nIn order to read, individuals with severe speech impairments must access a set of written symbols and decode them to abstract meaning just as anyone else must do. They must convert underlying messages into an alternative external symbol format in order to write. In order to become expert in both of these activities, they must learn at least a certain core of knowledge about how the symbols and messages relate to each other. Just as there are many ways to skin a chicken, there are many possible ways to achieve mastery of reading and writing. Although the essence of the task may remain the same for individuals with congenital speech impairments, they may process the task, or develop task mastery in ways that are quite different from speaking children who have no additional physical impairments.\r\nLiteracy and Augmentative and Alternative Communication focuses on individuals with combined physical and communication impairments, who rely at least some of the time on aided communication. It investigates the range of research and application issues relating to AAC and literacy (primarily reading and writing skills), from the emergent literacy stage up through adulthood use of reading for various vocational and leisure purposes. It provides a balanced view of both the whole language as well as the more analytic approaches to reading instruction necessary for the development of reading skills.', '79.00', 64, 'cc2218a7df390b7441e369e50b0f5042.jpg', '7d7cbda064bbdbb1b18b539b426c5340.jpg', '2010-06-26 22:28:03', '0000-00-00 00:00:00'),
(77, 20, 'The Soulful Journey of Stevie Wonder', 'The first definitive biography of music legend Stevie Wonder Stevie Wonder''s achievements as a singer-songwriter, multi-instrumentalist, and producer are extraordinary. During a career that has spanned almost fifty years, he has earned more than thirty Top 10 hits, twenty-six Grammy Awards, and a place in both the Rock and Roll and Songwriter Halls of Fameâ€”and he''s not finished yet. On the verge of turning sixty, he is still composing, still touring, and still attracting dedicated fans around the world. ', '30.00', 39, '985cf57e22dd90d04170fd0428d76529.jpg', '64bdcdfff61241e084237e90730c8fe7.jpg', '2010-06-26 22:30:13', '0000-00-00 00:00:00'),
(78, 20, 'Strategies for the Primary Classroom', 'This book focuses on the inter-relationship between reading, writing and speaking and listening. Psychologists and educationalists, influenced by the work of Vygotsky, have emphasised the importance of social interaction in learning, and the National Writing, Oracy and LINC Projects highlighted the need for quality interactive pupil discourse and effective teacher-pupil interaction. However, although the DfEE claims that the successful teaching of literacy is characterised by good quality oral work, speaking and listening is not included in the National Literacy Strategy Framework and the Literacy Training Pack does not address the issue. Literacy and Learning through Talk blends theory, research and practice to show how an integrated programme of work can be developed to ensure that literacy is taught in a vibrant and stimulating way. Strategies for developing successful group work and whole class, interactive discourse are examined and effective teaching roles and questioning techniques are explored. Transcripts of group discussions and examples of children''s work illustrate various points and work plans and practical classroom activities are described.', '57.00', 39, 'af8024574d1057e3fbe9ae31b31bffd7.jpg', '3c5d40abb8e292a85a769b06f2266a84.jpg', '2010-06-26 22:31:08', '0000-00-00 00:00:00'),
(79, 20, 'The Comedy of Errors', 'Each volume in the "Bloom''s Shakespeare Through the Ages" series contains the finest criticism on a particular work from the Bard''s oeuvre, selected under the guidance of renowned Shakespearean scholar Harold Bloom. Providing invaluable study guides, this comprehensive collection sheds light on how our relationship with the works of Shakespeare has evolved through the ages. Each title features: a selection of the best criticism on the work through the centuries; introductory essays on the development of criticism on the work in each century; a brief biography of Shakespeare; a plot synopsis, list of characters, and analysis of several key passages; and, an introduction by Harold Bloom.\r\n\r\nIn the Shakespearean play that most closely resembles farce, two sets of identical twins, each separated for years, arrive in Ephesus, setting off a madcap series of events and leaving a trail of confusion and mistaken identity in their wake. While evoking one of Shakespeare''s recurring themesâ€”the restorative power of loveâ€”this early work contains some of the playwright''s developing insights on the human condition and presents a portrait of women''s various roles in Elizabethan society. With an introduction from Shakespearean scholar Harold Bloom, plus a plot synopsis and a brief biography of Shakespeare, this volume of critical essays will assist students studying The Comedy of Errors.\r\n', '101.00', 59, '345308da92cb2a00a20a052fae808f8c.jpg', '0a10ff3f5fe84a59bbac5e5d228b6885.jpg', '2010-06-26 22:32:16', '0000-00-00 00:00:00'),
(80, 20, 'Forming Archives by Rethinking Appraisal', 'Cox offers archivists rare insight into the fundamentals of appraisal, and historians and other users of archives the opportunity to appreciate the collections they all too often take for granted.', '39.00', 94, '64b409f7f667525eed739cf989f01169.jpg', '5c9ade936d3432d00bca996f5d75b600.jpg', '2010-06-26 22:33:36', '0000-00-00 00:00:00'),
(81, 20, 'The New Politics of Culture', '"Arguing that cultural reform is a key aspect of political reform, Richard Kraus shows here that China''s economic transformation has dramatically liberated the production and consumption of culture. In this original and provocative study, Kraus offers a political analysis of Chinese culture that includes all genres of art. Surveying the evolution of China''s cultural politics between 1979 and 2003, this book explores the complex relationship between money and art as exemplified by declining state arts patronage, changing standards for painting nudity, censorship, and the professionalization of artistic work. Cogent, witty, and deeply informed, this comprehensive overview of the Chinese arts scene will be an essential text for all observers of contemporary China."', '81.00', 73, '4495c11b523e7c5f91eb891b192b39c9.jpg', '2643f2821a5930e854817e31f81ffb3f.jpg', '2010-06-26 22:34:45', '0000-00-00 00:00:00'),
(82, 20, 'Sociolinguistics and Corpus Linguistics', 'Corpus linguistics and sociolinguistics have a great deal in common in terms of their basic approaches to language enquiry, particularly in terms of providing representative samples from a population and analyzing quantitative information in order to study its variety. Therefore it''s surprising that these areas aren''t utilized in concert more often. This book covers the range of ways in which corpora can be gainfully employed in sociolinguistic enquiry, critically discussing corpus analytical procedures such as frequencies, collocations, dispersions, keywords, key keywords, and concordances. Aimed at undergraduate and postgraduate students of sociolinguistics, or corpus linguists who wish to use corpora to study social phenomena, this volume examines how corpora can be used to investigate synchronic variation and diachronic change by referring to a number of classic corpus-based studies as well as the author''s original research. ', '88.00', 11, '6d99b5e97bbca8d58503eb83cb7f0412.jpg', 'b2eaf8edd5c305c30859ffbe5d125863.jpg', '2010-06-26 22:45:12', '0000-00-00 00:00:00'),
(83, 20, 'The Intelligent School', 'In writing The Intelligent School, the authors offer a practical resource to schools to help them maximize their improvement efforts. The aim is to help schools to be intelligent organizations; to be the type of school that can synthesize different kinds of knowledge, experience and ideas in order to be confident about current achievements, and be able to decide what to do next.6', '97.00', 66, '75127540091483347e0f600543f58e4e.jpg', 'a4014c2e7d1bd1c8812198867463baf1.jpg', '2010-06-26 22:47:04', '0000-00-00 00:00:00'),
(84, 21, 'Robert Emmet Hernan - This Borrowed Earth', 'Over the last century mankind has irrevocably damaged the environment through the unscrupulous greed of big business and our own willful ignorance. Here are the strikingly poignant accounts of disasters whose names live in infamy: Chernobyl, Bhopal, Exxon Valdez, Three Mile Island, Love Canal, Minamata and others. And with these, the extraordinary and inspirational stories of the countless men and women who fought bravely to protect the communities and environments at risk. ', '75.00', 57, '6047cc9c8200448bb90b8eaad91049fa.jpg', '39273306c147cad05d2791545f00314c.jpg', '2010-06-26 22:47:56', '0000-00-00 00:00:00'),
(85, 21, 'The Syntax of German', 'What do you know, if you know that a language has ''Object Verb'' structure rather than ''Verb Object''? Answering this question and many others, this book provides an essential guide to the syntactic structure of German. It examines the systematic differences between German and English, which follow from this basic difference in sentence structure, and presents the main results of syntactic research on German. Topics covered include the strict word order in VO vs word order variation in OV, verb clustering, clause union effects, obligatory functional subject position, ', '86.00', 67, 'ea89a57d5caa55341d4925ffe5520868.jpg', '6ce3dba77f7a7f76a2855edb4c26e780.jpg', '2010-06-26 22:51:41', '0000-00-00 00:00:00'),
(86, 21, 'Disinheriting the Globe', 'Paul A. Kottman offers a new and compelling understanding of tragedy as seen in four of Shakespeare''s mature plays -- As You Like It, Hamlet, King Lear, and The Tempest.\r\nThe author pushes beyond traditional ways of thinking about tragedy, framing his readings with simple questions that have been missing from scholarship of the past generation: Are we still moved by Shakespeare, and why? Kottman throws into question the inheritability of human relationships by showing how the bonds upon which we depend for meaning and worth can be dissolved.\r\nAccording to Kottman, the lives of Shakespeare''s protagonists are conditioned by social bonds -- kinship ties, civic relations, economic dependencies, political allegiances -- that unravel irreparably. This breakdown means they can neither inherit nor bequeath a livable or desirable form of sociality. Orlando and Rosalind inherit nothing "but growth itself" before becoming refugees in the Forest of Arden; Hamlet is disinherited not only by Claudius''s election but by the sheer vacuity of the activities that remain open to him; Lear''s disinheritance of Cordelia bequeaths a series of events that finally leave the social sphere itself forsaken of heirs and forbearers alike.\r\nFirmly rooted in the philosophical tradition of reading Shakespeare, this bold work is the first sustained interpretation of Shakespearean tragedy since Stanley Cavell''s work on skepticism and A. C. Bradley''s century-old Shakespearean Tragedy.', '82.00', 91, '81e02a3091a0b8de4588b90dd7ef58ad.jpg', '7aa6762154eca9976f3ac053e000a483.jpg', '2010-06-26 22:52:39', '0000-00-00 00:00:00'),
(87, 21, 'Effect on Our Lives', 'Americansâ€™ infatuation with their cars is critiqued in this readable treatment. Replete with the ironic and irrational aspects of owning and driving cars, it partakes of car psychology to deliver its message about the statistical costs of four-wheeled freedom. Emphasizing the attachment of values such as personal independence to car ownership, not to mention self-image and status, Lutz and Fernandez cheerily saunter through automobile advertising and movies to show how mass media exploit peopleâ€™s desire to buy cars. The authors offer many personal anecdotes about consumersâ€™ experiences of the showdown in the automobile showroom as a narrative illustration of how peopleâ€™s emotions battle it out with their finances in purchase decisions. Turning to life on the road, Lutz and Fernandez, relying on studies and interviews with about 100 drivers, look askance at public expenditure on automobile infrastructure, fractions of lives spent in carsâ€“â€“and lost in them by the tens of thousands annually. An agenda for personal and political action concludes the authorsâ€™ knowledgeable survey of car culture. ', '13.00', 23, '493d448c0c64702bf87d09dabd5c078a.jpg', '13a7ea9c99187b668bd2b12009691c86.jpg', '2010-06-26 22:54:51', '0000-00-00 00:00:00'),
(88, 21, 'Stevens, Plath, Lowell, Bishop, Merrill', 'In Last Looks, Last Books, the eminent critic Helen Vendler examines the ways in which five great modern American poets, writing their final books, try to find a style that does justice to life and death alike. With traditional religious consolations no longer available to them, these poets must invent new ways to express the crisis of death, as well as the paradoxical coexistence of a declining body and an undiminished consciousness. In The Rock, Wallace Stevens writes simultaneous narratives of winter and spring; in Ariel, Sylvia Plath sustains melodrama in cool formality; and in Day by Day, Robert Lowell subtracts from plenitude. In Geography III, Elizabeth Bishop is both caught and freed, while James Merrill, in A Scattering of Salts, creates a series of self-portraits as he dies, representing himself by such things as a Christmas tree, human tissue on a laboratory slide, and the evening/morning star. The solution for one poet will not serve for another; each must invent a bridge from an old style to a new one. Casting a last look at life as they contemplate death, these modern writers enrich the resources of lyric poetry.\r\n', '49.00', 94, '7193bfcc09d85834c27ad18256a0c131.jpg', '5682dde90ec54d43122274bc674218d6.jpg', '2010-06-26 22:55:44', '0000-00-00 00:00:00'),
(89, 21, 'Agrarian Landscapes in Transition', 'Agrarian Landscapes in Transition researches human interaction with the earth. With hundreds of acres of agricultural land going out of production every day, the introduction, spread, and abandonment of agriculture represents the most pervasive alteration of the Earth''s environment for several thousand years. What happens when humans impose their spatial and temporal signatures on ecological regimes, and how does this manipulation affect the earth and nature''s desire for equilibrium?\r\nStudies were conducted at six Long Term Ecological Research sites within the US, including New England, the Appalachian Mountains, Colorado, Michigan, Kansas, and Arizona. While each site has its own unique agricultural history, patterns emerge that help make sense of how our actions have affected the earth, and how the earth pushes back. The book addresses how human activities influence the spatial and temporal structures of agrarian landscapes, and how this varies over time and across biogeographic regions. It also looks at the ecological and environmental consequences of the resulting structural changes, the human responses to these changes, and how these responses drive further changes in agrarian landscapes.\r\nThe time frames studied include the ecology of the earth before human interaction, pre-European human interaction during the rise and fall of agricultural land use, and finally the biological and cultural response to the abandonment of farming, due to complete abandonment or a land-use change such as urbanization.', '66.00', 84, 'a9183e63853144ded0256eb0fdd10dd7.jpg', 'a6a1cfd12910ce1ac103bc9367f7fdd0.jpg', '2010-06-26 22:56:46', '0000-00-00 00:00:00'),
(90, 21, 'Victor J. Danilov - Hands-On Science Centers', 'Hands-on science centers are one of America''s newest and most popular types of museums. Beginning with a history of the science center movement in the United States, this book then presents detailed entries on more than 260 museums and sites where the visiting public can touch, handle, and interact with exhibits or objects in entertaining and educational ways. Each entry includes a description of the center''s hands-on exhibits, programs, and events, along with contact information, hours, and ticket information. The book contains 75 photographs of the exhibits in action. ', '58.00', 93, 'b82df31acd52df762a72e5b308a2fd37.jpg', '2b4a510a4767c6f52b45ecb03cb53312.jpg', '2010-06-26 22:57:45', '0000-00-00 00:00:00'),
(91, 21, 'You Can Write Poetry', 'Poetry''''s forms, styles and structures are illustrated through the work of Shakespeare, e.e. cummings, Tim Geiger and others. These poems, and dozens of hands on practice sessions, will inspire readers to experiment with language, and write poetry.'' ', '74.00', 43, 'd1da87000c2cd8217cd9f9d5f98f091a.jpg', '5d8d70205dc634d70f01a09a95dfb588.jpg', '2010-06-26 22:59:44', '0000-00-00 00:00:00'),
(92, 21, 'L''Argent', 'Illustrated The career of Robert Bresson (b. 1907) is one of the richest in the history of cinema, but also one of the most enigmatic. For some commentators, Bresson is a severe moralist who''s almost medieval in his concern for the darker aspects of Catholic theology. For others, he''s best seen as a stylist whose work has consistently anticipated cinematic trends. Just as Bresson''s 1959 Pickpocket was remodelled by Paul Schrader as American Gigolo (1980), so L''Argent (1983) is a study of spontaneous murder and a meditation on evil that has a striking kinship with contemporary vigilante and serial killer films. Kent Jones disputes some of the received wisdom about Bresson''s work as it''s epitomized by L''Argent: the work can''t simply be reduced to its austere, pessimistic, or religious elements. By exploring the many dimensions of L''Argent, Jones finds other elements: beauty, compassion, an overriding concern with the meaningful depiction of experience. L''Argent is the culminating work of one of the select group of directors able "to push the cinema, through the force of their own genius, onto a new plain." ', '83.00', 71, '47abe26b60a01395fb33fa65ea2c9d5c.jpg', '36dbcfcd4a1044b2cb629b55c0b7e929.jpg', '2010-06-26 23:00:38', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shop_config`
--

CREATE TABLE IF NOT EXISTS `tbl_shop_config` (
  `sc_name` varchar(50) NOT NULL DEFAULT '',
  `sc_address` varchar(100) NOT NULL DEFAULT '',
  `sc_phone` varchar(30) NOT NULL DEFAULT '',
  `sc_email` varchar(30) NOT NULL DEFAULT '',
  `sc_shipping_cost` decimal(5,2) NOT NULL DEFAULT '0.00',
  `sc_currency` int(10) unsigned NOT NULL DEFAULT '1',
  `sc_order_email` enum('y','n') NOT NULL DEFAULT 'n'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_shop_config`
--

INSERT INTO `tbl_shop_config` (`sc_name`, `sc_address`, `sc_phone`, `sc_email`, `sc_shipping_cost`, `sc_currency`, `sc_order_email`) VALUES
('TH5B', 'Ha Noi', '0977778412', 'chuanhtien@gmail.com', '5.00', 4, 'y');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE IF NOT EXISTS `tbl_user` (
`user_id` int(10) unsigned NOT NULL,
  `user_name` varchar(20) NOT NULL DEFAULT '',
  `user_password` varchar(32) NOT NULL DEFAULT '',
  `user_regdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_last_login` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_name`, `user_password`, `user_regdate`, `user_last_login`) VALUES
(1, 'admin', 'admin', '2005-02-20 17:35:44', '2010-06-28 01:27:34'),
(3, 'webmaster', '*8DC54F2E15823C98AEA063E339A5D4C', '2005-03-02 17:52:51', '0000-00-00 00:00:00'),
(4, 'thuyet', '*6BB4837EB74329105EE4568DDA7DC67', '2010-06-23 11:18:50', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
 ADD PRIMARY KEY (`ct_id`), ADD KEY `pd_id` (`pd_id`), ADD KEY `ct_session_id` (`ct_session_id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
 ADD PRIMARY KEY (`cat_id`), ADD KEY `cat_parent_id` (`cat_parent_id`), ADD KEY `cat_name` (`cat_name`);

--
-- Indexes for table `tbl_currency`
--
ALTER TABLE `tbl_currency`
 ADD PRIMARY KEY (`cy_id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
 ADD PRIMARY KEY (`od_id`);

--
-- Indexes for table `tbl_order_item`
--
ALTER TABLE `tbl_order_item`
 ADD PRIMARY KEY (`od_id`,`pd_id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
 ADD PRIMARY KEY (`pd_id`), ADD KEY `cat_id` (`cat_id`), ADD KEY `pd_name` (`pd_name`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
 ADD PRIMARY KEY (`user_id`), ADD UNIQUE KEY `user_name` (`user_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
MODIFY `ct_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=87;
--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
MODIFY `cat_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `tbl_currency`
--
ALTER TABLE `tbl_currency`
MODIFY `cy_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
MODIFY `od_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1007;
--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
MODIFY `pd_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=93;
--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
MODIFY `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;--
-- Database: `bookweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
`id` int(11) NOT NULL,
  `username` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=6 ;

-- --------------------------------------------------------

--
-- Table structure for table `catalog`
--

CREATE TABLE IF NOT EXISTS `catalog` (
`id` int(11) NOT NULL,
  `name` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `sort_order` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=26 ;

--
-- Dumping data for table `catalog`
--

INSERT INTO `catalog` (`id`, `name`, `parent_id`, `sort_order`) VALUES
(1, 'Business', 0, 0),
(2, 'Comic Strips', 0, 0),
(3, 'Kids\r\n', 0, 0),
(4, 'Medicals', 0, 0),
(5, 'Romances', 0, 0),
(6, 'Teen', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE IF NOT EXISTS `order` (
  `transaction_id` int(255) NOT NULL,
`id` int(255) NOT NULL,
  `product_id` int(255) NOT NULL,
  `qty` int(11) NOT NULL DEFAULT '0',
  `amount` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `data` text COLLATE utf8_bin NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=6 ;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
`id` int(255) NOT NULL,
  `catalog_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `discount` int(11) NOT NULL,
  `image_link` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `image_list` text COLLATE utf8_unicode_ci NOT NULL,
  `created` int(11) NOT NULL DEFAULT '0',
  `view` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=26 ;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `catalog_id`, `name`, `price`, `content`, `discount`, `image_link`, `image_list`, `created`, `view`) VALUES
(2, 2, 'MYTHS', '90.0000', 'MYTHS', 0, '6.jpg', '', 0, 0),
(17, 2, 'COOK BOOK', '60.0000', 'noi dung cook book', 0, '4.jpg', '', 0, 0),
(1, 1, 'YOUR TEXT', '100.0000', 'YOUR TEXT', 0, '5.jpg', '', 0, 0),
(18, 3, 'RECIPES', '100.0000', 'YOUR TEXT', 0, '7.jpg', '', 0, 0),
(19, 1, 'LOREM IS SUM', '100.0000', 'YOUR TEXT', 0, '8.jpg', '', 0, 0),
(20, 4, 'TOP DESTINATION', '110.0000', 'YOUR TEXT', 0, '9.jpg', '', 0, 0),
(22, 2, 'OLD STYLE DESIGN', '80.0000', 'noi dung OLD STYLE DESIGN ', 0, '10.jpg', '', 0, 0),
(23, 2, 'RETRO DESIGN', '50.0000', 'noi dung RETRO DESIGN ', 0, '11.jpg', '', 0, 0),
(24, 5, 'HAVE FUN ', '115.0000', 'noi dung sach', 0, '12.jpg', '', 0, 0),
(25, 6, 'PLACE YOUR MESSAGE', '87.0000', 'PLACE YOUR MESSAGE', 0, '13.jpg', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE IF NOT EXISTS `transaction` (
`id` bigint(20) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_email` varchar(50) COLLATE utf8_bin NOT NULL,
  `user_phone` varchar(20) COLLATE utf8_bin NOT NULL,
  `amount` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `payment` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `payment_info` text COLLATE utf8_bin NOT NULL,
  `message` varchar(255) COLLATE utf8_bin NOT NULL,
  `security` varchar(16) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=7 ;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`id` int(255) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `created` int(11) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=44 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `phone`, `address`, `password`, `created`) VALUES
(1, 'Tran Cong', 'chic7en@gmail.com', '01647980503', 'ha noi', 'e10adc3949ba59abbe56e057f20f883e', 0),
(4, 'template', 'template@gmail.com', '', '', 'e10adc3949ba59abbe56e057f20f883e', 0),
(42, 'template3', 'template3@gmail.com', '', '', 'e10adc3949ba59abbe56e057f20f883e', 0),
(43, 'template4', 'template4@gmail.com', '', '', 'e10adc3949ba59abbe56e057f20f883e', 0),
(2, 'Tran Huy Luyen', 'luyen@gmail.com', '', '', 'e10adc3949ba59abbe56e057f20f883e', 0),
(3, 'Do Duy Anh', 'duyanh@gmail.com', '', '', 'e10adc3949ba59abbe56e057f20f883e', 0),
(5, 'template1', 'template1@gmail.com', '', '', 'e10adc3949ba59abbe56e057f20f883e', 0),
(41, 'template2', 'template2@gmail.com', '', '', 'e10adc3949ba59abbe56e057f20f883e', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catalog`
--
ALTER TABLE `catalog`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
 ADD PRIMARY KEY (`id`), ADD FULLTEXT KEY `name` (`name`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `catalog`
--
ALTER TABLE `catalog`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=44;--
-- Database: `cdcol`
--

-- --------------------------------------------------------

--
-- Table structure for table `cds`
--

CREATE TABLE IF NOT EXISTS `cds` (
  `titel` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  `interpret` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  `jahr` int(11) DEFAULT NULL,
`id` bigint(20) unsigned NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `cds`
--

INSERT INTO `cds` (`titel`, `interpret`, `jahr`, `id`) VALUES
('Beauty', 'Ryuichi Sakamoto', 1990, 1),
('Goodbye Country (Hello Nightclub)', 'Groove Armada', 2001, 4),
('Glee', 'Bran Van 3000', 1997, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cds`
--
ALTER TABLE `cds`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cds`
--
ALTER TABLE `cds`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;--
-- Database: `codeigniter`
--

-- --------------------------------------------------------

--
-- Table structure for table `cate`
--

CREATE TABLE IF NOT EXISTS `cate` (
  `id` int(20) NOT NULL,
  `catename` varchar(20) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `cate`
--

INSERT INTO `cate` (`id`, `catename`) VALUES
(1, 'cate1'),
(2, 'cate 2'),
(3, 'cate 3');
--
-- Database: `phpmyadmin`
--

-- --------------------------------------------------------

--
-- Table structure for table `pma_bookmark`
--

CREATE TABLE IF NOT EXISTS `pma_bookmark` (
`id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pma_column_info`
--

CREATE TABLE IF NOT EXISTS `pma_column_info` (
`id` int(5) unsigned NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin' AUTO_INCREMENT=4 ;

--
-- Dumping data for table `pma_column_info`
--

INSERT INTO `pma_column_info` (`id`, `db_name`, `table_name`, `column_name`, `comment`, `mimetype`, `transformation`, `transformation_options`) VALUES
(1, 'codeigniter', 'cate', 'id', '', '', '_', ''),
(2, 'codeigniter', 'cate', 'catename', '', '', '_', ''),
(3, 'bookweb', 'product', 'image_link', '', '', '_', '');

-- --------------------------------------------------------

--
-- Table structure for table `pma_designer_coords`
--

CREATE TABLE IF NOT EXISTS `pma_designer_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `x` int(11) DEFAULT NULL,
  `y` int(11) DEFAULT NULL,
  `v` tinyint(4) DEFAULT NULL,
  `h` tinyint(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for Designer';

--
-- Dumping data for table `pma_designer_coords`
--

INSERT INTO `pma_designer_coords` (`db_name`, `table_name`, `x`, `y`, `v`, `h`) VALUES
('bookweb', 'admin', 89, 122, 1, 1),
('bookweb', 'catalog', 921, 296, 0, 1),
('bookweb', 'order', 580, 79, 1, 1),
('bookweb', 'product', 943, 358, 0, 1),
('bookweb', 'transaction', 349, 63, 1, 1),
('bookweb', 'user', 88, 311, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pma_history`
--

CREATE TABLE IF NOT EXISTS `pma_history` (
`id` bigint(20) unsigned NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pma_navigationhiding`
--

CREATE TABLE IF NOT EXISTS `pma_navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma_pdf_pages`
--

CREATE TABLE IF NOT EXISTS `pma_pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
`page_nr` int(10) unsigned NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pma_recent`
--

CREATE TABLE IF NOT EXISTS `pma_recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma_recent`
--

INSERT INTO `pma_recent` (`username`, `tables`) VALUES
('root', '[{"db":"bookweb","table":"product"},{"db":"bookweb","table":"order"},{"db":"bookweb","table":"catalog"},{"db":"bookweb","table":"user"},{"db":"bookweb","table":"admin"},{"db":"bookweb","table":"transaction"},{"db":"bookshop","table":"tbl_user"},{"db":"bookshop","table":"tbl_product"},{"db":"bookshop","table":"tbl_order_item"},{"db":"bookshop","table":"tbl_cart"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma_relation`
--

CREATE TABLE IF NOT EXISTS `pma_relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

--
-- Dumping data for table `pma_relation`
--

INSERT INTO `pma_relation` (`master_db`, `master_table`, `master_field`, `foreign_db`, `foreign_table`, `foreign_field`) VALUES
('bookweb', 'product', 'catalog_id', 'bookweb', 'catalog', 'id'),
('bookweb', 'order', 'transaction_id', 'bookweb', 'transaction', 'id'),
('bookweb', 'transaction', 'user_id', 'bookweb', 'user', 'id');

-- --------------------------------------------------------

--
-- Table structure for table `pma_savedsearches`
--

CREATE TABLE IF NOT EXISTS `pma_savedsearches` (
`id` int(5) unsigned NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pma_table_coords`
--

CREATE TABLE IF NOT EXISTS `pma_table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float unsigned NOT NULL DEFAULT '0',
  `y` float unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma_table_info`
--

CREATE TABLE IF NOT EXISTS `pma_table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma_table_uiprefs`
--

CREATE TABLE IF NOT EXISTS `pma_table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma_table_uiprefs`
--

INSERT INTO `pma_table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'bookweb', 'user', '{"sorted_col":"`id` ASC"}', '2014-11-29 02:52:13');

-- --------------------------------------------------------

--
-- Table structure for table `pma_tracking`
--

CREATE TABLE IF NOT EXISTS `pma_tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) unsigned NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma_userconfig`
--

CREATE TABLE IF NOT EXISTS `pma_userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma_userconfig`
--

INSERT INTO `pma_userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2014-10-07 16:48:24', '{"collation_connection":"utf8mb4_general_ci"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma_usergroups`
--

CREATE TABLE IF NOT EXISTS `pma_usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma_users`
--

CREATE TABLE IF NOT EXISTS `pma_users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma_bookmark`
--
ALTER TABLE `pma_bookmark`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma_column_info`
--
ALTER TABLE `pma_column_info`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma_designer_coords`
--
ALTER TABLE `pma_designer_coords`
 ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma_history`
--
ALTER TABLE `pma_history`
 ADD PRIMARY KEY (`id`), ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma_navigationhiding`
--
ALTER TABLE `pma_navigationhiding`
 ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma_pdf_pages`
--
ALTER TABLE `pma_pdf_pages`
 ADD PRIMARY KEY (`page_nr`), ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma_recent`
--
ALTER TABLE `pma_recent`
 ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma_relation`
--
ALTER TABLE `pma_relation`
 ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`), ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma_savedsearches`
--
ALTER TABLE `pma_savedsearches`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma_table_coords`
--
ALTER TABLE `pma_table_coords`
 ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma_table_info`
--
ALTER TABLE `pma_table_info`
 ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma_table_uiprefs`
--
ALTER TABLE `pma_table_uiprefs`
 ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma_tracking`
--
ALTER TABLE `pma_tracking`
 ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma_userconfig`
--
ALTER TABLE `pma_userconfig`
 ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma_usergroups`
--
ALTER TABLE `pma_usergroups`
 ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma_users`
--
ALTER TABLE `pma_users`
 ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma_bookmark`
--
ALTER TABLE `pma_bookmark`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma_column_info`
--
ALTER TABLE `pma_column_info`
MODIFY `id` int(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `pma_history`
--
ALTER TABLE `pma_history`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma_pdf_pages`
--
ALTER TABLE `pma_pdf_pages`
MODIFY `page_nr` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma_savedsearches`
--
ALTER TABLE `pma_savedsearches`
MODIFY `id` int(5) unsigned NOT NULL AUTO_INCREMENT;--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE IF NOT EXISTS `book` (
`id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `name`) VALUES
(1, 'PHP căn bản'),
(2, 'PHP nâng cao'),
(3, 'Lập trình hướng đối tượng'),
(4, 'Nhập môn lập trình'),
(5, 'Zend Framwork'),
(6, 'Code Igniter'),
(7, 'Cake PHP'),
(8, 'Mô Hình MVC');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;--
-- Database: `webauth`
--

-- --------------------------------------------------------

--
-- Table structure for table `user_pwd`
--

CREATE TABLE IF NOT EXISTS `user_pwd` (
  `name` char(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `pass` char(32) COLLATE latin1_general_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `user_pwd`
--

INSERT INTO `user_pwd` (`name`, `pass`) VALUES
('xampp', 'wampp');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user_pwd`
--
ALTER TABLE `user_pwd`
 ADD PRIMARY KEY (`name`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;