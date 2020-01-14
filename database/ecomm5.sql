-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 14, 2020 at 05:42 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecomm`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cat_slug` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `cat_slug`) VALUES
(5, 'Metal Crafts', 'metal-crafts-\r\n'),
(6, 'Crafts', ''),
(7, 'Jewellery', ''),
(8, 'Paintings', ''),
(9, 'Home Decor', 'home-decor\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `sales_id`, `product_id`, `quantity`) VALUES
(14, 9, 35, 2),
(15, 9, 13, 5),
(16, 9, 3, 2),
(17, 9, 36, 3),
(18, 10, 13, 3),
(19, 10, 2, 4),
(20, 10, 19, 5);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(200) NOT NULL,
  `date_view` date NOT NULL,
  `counter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `seller_id`, `category_id`, `name`, `description`, `slug`, `price`, `photo`, `date_view`, `counter`) VALUES
(31, 13, 5, 'Spoon Dokra', '<p>Tribes India offer a wide range of assorted gift items which are combination of age old craft tradition and modern design with utility in focus. The Tribal artisans have exemplary design skils.&Ecirc;Material: Steel Spoon decorated with Dokra: Sandblasting Color: Yellow Dimensions: 17&times;2 cm Net Weight: About 30g. Features: 1.Mix alloy. Please Note:- Althrough , artisan do take care to maintain pattern and colour scheme however, being this is a handmade product therefore , to create identical products a little variation could be seen. These are unique &amp; original Products created by Indian Tribal artisans to earn their livelihood. Warm Tip :- Please be reminded that due to lighting effects, mointor&rsquo;s brightness/ contrast setting etc, there could be some differences in the colour tone of the website&rsquo;s photo and the actual item.</p>\r\n', 'spoon-dokra', 161, 'spoon-dokra.webp', '0000-00-00', 0),
(32, 0, 5, 'Dhokra Handle Fork', '<p>Traditionally the gadwa, gond and dhurwa tribes of kondagaon in bastar region of chattisgarh have been practising the dhokra art with lost wax technique or hollow casting. It involves patterning a clay core intricately with wax wires and then coating it carefully with a mix of clay and hay. The wax covered clay core is put in the cauldron of molten metal with an opening/hole in the clay mixture, where the wax is subsequently melted off, and the space thus created is filled with metal- an alloy of copper, brass and tin which enters through the hole. The outer layer of clay is then chipped off and the metal icon is polished and finished as desired.</p>\r\n', 'dhokra-handle-fork', 265, 'dhokra-handle-fork.webp', '0000-00-00', 0),
(33, 13, 5, 'Bull Face Opener Dokra', '<p>Tribes India offer a wide range of assorted gift items which are combination of age old craft tradition and modern design with utility in focus. The Tribal artisans have exemplary design skils. Bottle opener. Made from mix alloy. Handcrafted D?cor. The Solid Bottle Opener is the perfect addition to any nautical themed kitchen. Decorative hanging. Please Note:- Althrough , artisan do take care to maintain pattern and colour scheme however, being this is a handmade product therefore , to create identical products a little variation could be seen. These are unique &amp; original Products created by Indian Tribal artisans to earn their livelihood. Warm Tip :- Please be reminded that due to lighting effects, mointor&rsquo;s brightness/ contrast setting etc, there could be some differences in the colour tone of the website&rsquo;s photo and the actual item.</p>\r\n', 'bull-face-opener-dokra', 233, 'bull-face-opener-dokra.webp', '0000-00-00', 0),
(34, 13, 5, 'Elephant Face Opener Dokra', '<p>Tribes India offer a wide range of assorted gift items which are combination of age old craft tradition and modern design with utility in focus. The Tribal artisans have exemplary design skills. Bottle opener. Made from alloy mix. Handcrafted Decor. The Solid Bottle Opener is the perfect addition to any nautical themed kitchen. Decorative hanging.</p>\r\n\r\n<p>Please Note:- Although , artisan do take care to maintain pattern and colour scheme however, being this is a handmade product therefore , to create identical products a little variation could be seen. These are unique &amp; original Products created by Indian Tribal artisans to earn their livelihood.</p>\r\n\r\n<p>Warm Tip :- Please be reminded that due to lighting effects, mointor&rsquo;s brightness/ contrast setting etc, there could be some differences in the colour tone of the website&rsquo;s photo and the actual item.</p>\r\n', 'elephant-face-opener-dokra', 208, 'elephant-face-opener-dokra.webp', '0000-00-00', 0),
(35, 14, 5, 'Candle Stand Human Motif Dokra', '<p>Tribes India offer a wide range of assorted gift items which are combination of age old craft tradition and modern design with utility in focus. The Tribal artisans have exemplary design skils.This Showpiece is made by high quality of material well finished and its look very classy and traditional thats attractive. Antique and unique decorative for Home, Office, Hotel and Restaurant. Great for Gift and personal use. HANDMADE by skilled artisans from Central India.Please Note:- Althrough , artisan do take care to maintain pattern and colour scheme however, being this is a handmade product therefore , to create identical products a little variation could be seen. These are unique &amp; original Products created by Indian Tribal artisans to earn their livelihood. Warm Tip :- Please be reminded that due to lighting effects, mointor&rsquo;s brightness/ contrast setting etc, there could be some differences in the colour tone of the website&rsquo;s photo and the actual item.</p>\r\n', 'candle-stand-human-motif-dokra', 278, 'candle-stand-human-motif-dokra.webp', '0000-00-00', 0),
(36, 14, 5, 'Tribes India Rajasthani Handmade Elephant Statue', '<p>Handcrafted colorful elephant crafted by Meena Tribes of Jaipur is painted and shaped by master craftsman. Decorative elephant statue . This Royal and Rajasthani style elephant statue is ideal for decoration as well as gift . A real beautiful piece you would like to possess or an excellent gift to your friends or family for auspicious or festive occasions.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Please be reminded that due to lighting effects, monitor&rsquo;s brightness/contrast settings etc, there could be some slight differences in the colour tone of the website&rsquo;s photo and the actual item.</p>\r\n', 'tribes-india-rajasthani-handmade-elephant-statue', 573, 'tribes-india-rajasthani-handmade-elephant-statue.webp', '0000-00-00', 0),
(37, 13, 5, 'Rajasthani Tribal Handmmade Blue Horse Statue', '<p>Indian artisans are known for their craftsmanship and fine art and within India Rajasthan is the state which ranks very high in terms of arts and crafts. There are artisans in Rajasthan whose art is adored by people worldwide.</p>\r\n', 'rajasthani-tribal-handmmade-blue-horse-statue', 416, 'rajasthani-tribal-handmmade-blue-horse-statue.webp', '0000-00-00', 0),
(38, 0, 6, 'Rajasthani Wooden Hanger', '<p>Rajasthan is an ideal place to look for old-worldly furniture with lively colors and flamboyant, fantasy designs for decoration. This wooden piece is lightly carved and embellished by the craftsmen. It is highly accepted for its attractive appearance and is demanded for its durability and reliability.</p>\r\n', 'rajasthani-wooden-hanger', 183, 'rajasthani-wooden-hanger.webp', '2020-01-13', 9),
(39, 0, 6, 'Wooden Key Holder', '<p>ajasthan is well known all over the world for its hand- crafts. The 4 Key Hanger in this listing is a creative miniature art on a Wooden material. It is a lovely creation where art is brought to life. This hanger will enhance the beauty of your walls.</p>\r\n', 'wooden-key-holder', 246, 'wooden-key-holder.webp', '2020-01-13', 1),
(40, 14, 6, 'Handmade Wooden Hanger', '<p>This handcrafted key holder is made of wood and decorated with gemstone painting by Meena Tribes of Rajasthan. The painting is hand made with finely crushed real gemstones on a wood base.</p>\r\n\r\n<p>Please be reminded that due to lighting effects, monitor&rsquo;s brightness/contrast settings etc, there could be some slight differences in the colour tone of the website&rsquo;s photo and the actual item.</p>\r\n', 'handmade-wooden-hanger', 183, 'handmade-wooden-hanger.webp', '0000-00-00', 0),
(41, 13, 6, 'Handmade Elephant Statue', '<p>The Statue in this listing is a creative miniature art on a Wooden material and it is unique alias One of a Kind. It is a lovely creation where art is brought to life. This Statue will enhance the beauty of your home or office. It is exclusively designed by the craftsmen of Rajasthan. Rajasthan is an ideal place to look for old-worldly wood decorative pieces and fantasy designs for decoration. This wooden piece is lightly carved and embellished by the craftsmen.</p>\r\n\r\n<p>Please be reminded that due to lighting effects, monitor&rsquo;s brightness/contrast settings etc, there could be some slight differences in the colour tone of the website&rsquo;s photo and the actual item.</p>\r\n', 'handmade-elephant-statue', 1337, 'handmade-elephant-statue.webp', '0000-00-00', 0),
(42, 0, 6, 'Handmade Wooden Walking Stick', '<p>Tribes in India offer a wide range of assorted gift items which are combination of age old craft tradition and modern design with utility in focus. The Tribal artisans have exemplary design skills. This is a wooden walking stick with a beautiful handle.&nbsp;These are unique &amp; original Products created by Indian Tribal artisans to earn their livelihood.</p>\r\n\r\n<p>Please Note:- Although , artisan&rsquo;s do take care to maintain pattern and color scheme however, since this is a handmade product therefore , to create identical products a little variation could be seen.</p>\r\n', 'handmade-wooden-walking-stick', 504, 'handmade-wooden-walking-stick.webp', '0000-00-00', 0),
(43, 0, 7, 'Brass Studded Multi Color Necklace', '<p>The art and craft of any region is a reflection of its environment, people and traditions. This statement is apt for Negi and Bodh tribes of Himachal Pradesh, which borrow elements from its scenic surroundings to create pahari jewellery, breathing a sense of vigour and sturdiness. While different communities wear jewellery unique to their traditions, some ornaments are common to all. These include neck ornaments like hansi or small pendants called toke and most cherished neck pieces called the coin necklace and thread necklace.</p>\r\n\r\n<p>The designs are inspired from simple motifs taken from the nature and developed into exquisite patterns.</p>\r\n', 'brass-studded-multi-color-necklace-home', 265, 'brass-studded-multi-color-necklace.webp', '0000-00-00', 0),
(44, 0, 7, 'Black Brass Pendant Necklace', '<p>The art and craft of any region is a reflection of its environment, people and traditions. This statement is apt for Negi and Bodh tribes of Himachal Pradesh, which borrow elements from its scenic surroundings to create pahari jewellery, breathing a sense of vigour and sturdiness. While different communities wear jewellery unique to their traditions, some ornaments are common to all. These include neck ornaments like hansi or small pendants called toke and most cherished neck pieces called the coin necklace and thread necklace.</p>\r\n\r\n<p>The designs are inspired from simple motifs taken from the nature and developed into exquisite patterns.</p>\r\n', 'black-brass-pendant-necklace', 265, 'black-brass-pendant-necklace.webp', '0000-00-00', 0),
(45, 0, 7, '2 Lac Yellow and Black Bangles', '<p>This lac designer aree kara set with saree for an enhanced traditional look. Keep away from dust, for better look occasion will add luster when worn for a wedding, engagement, party, prom and any special occasion. Will enhance special days like Christmas, Birthdays, Anniversaries, Valentines Day, and Mothers Day. A Beautiful &amp; Memorable Gift for all occasions.</p>\r\n', '2-lac-yellow-and-black-bangles', 97, '2-lac-yellow-and-black-bangles.webp', '0000-00-00', 0),
(46, 13, 7, '2 Lac Black and Coffee Bangles', '<p>This lac designer aree kara set with saree for an enhanced traditional look. Keep away from dust, for better look occasion will add luster when worn for a wedding, engagement, party, prom and any special occasion. Will enhance special days like Christmas, Birthdays, Anniversaries, Valentines Day, and Mothers Day. A Beautiful &amp; Memorable Gift for all occasions.</p>\r\n', '2-lac-black-and-coffee-bangles', 97, '2-lac-black-and-coffee-bangles.webp', '0000-00-00', 0),
(47, 14, 7, 'Plantable Rakhi Kit', '<p>Tribes India offer a wide range of assorted gift items which are combination of age old craft tradition and modern design with utility in focus.</p>\r\n', 'plantable-rakhi-kit', 252, 'plantable-rakhi-kit.jpg', '0000-00-00', 0),
(48, 0, 9, 'HAND CRAFTED BLUE & GREEN COLOR COTTON, THREAD, BEEDS, FOAM & METAL HANGING BANGDI FUMKA', '<p>This home decor item with a traditional twist is sure to appeal to the tastes and preferences of a common man. It is neatly manufactured only to enhance the beauty of home in a graceful manner and render it an upgraded look in a traditional way.&nbsp;</p>\r\n', 'hand-crafted-blue-green-color-cotton-thread-beeds-foam-metal-hanging-bangdi-fumka', 69, 'hand-crafted-blue-green-color-cotton-thread-beeds-foam-metal-hanging-bangdi-fumka.webp', '0000-00-00', 0),
(49, 0, 9, 'Budha Face', '<p>This home decor item with a traditional twist is sure to appeal to the tastes and preferences of a common man. It is neatly manufactured only to enhance the beauty of home in a graceful manner and render it an upgraded look in a traditional way.&nbsp;</p>\r\n', 'budha-face', 794, 'budha-face.webp', '0000-00-00', 0),
(50, 14, 9, 'Sale HAND CRAFTED PINK & BLUE COLOR COTTON, FOAM, BEEDS, THREAD & METAL HANGING SINGAL PARROT FUMKA KODI', '<p>This home decor item with a traditional twist is sure to appeal to the tastes and preferences of a common man. It is neatly manufactured only to enhance the beauty of home in a graceful manner and render it an upgraded look in a traditional way.&nbsp;</p>\r\n', 'sale-hand-crafted-pink-blue-color-cotton-foam-beeds-thread-metal-hanging-singal-parrot-fumka-kodi', 50, 'sale-hand-crafted-pink-blue-color-cotton-foam-beeds-thread-metal-hanging-singal-parrot-fumka-kodi.webp', '0000-00-00', 0),
(51, 0, 8, 'HANDMADE PAPER WITH SILK BIRDS PAINTING', '<p>This painting is the tribal art of the tribes in India. The tribes from the state of Rajasthan practice this art to show life cycle through simple images of everyday life of this tribe. The pigments are made from natural materials like leaves and flowers to create their art. Tribal art has gained popularity in recent years because of its simple and bold creations of everyday life. The tribal artisans have exemplary designing skills.</p>\r\n', 'handmade-paper-silk-birds-painting', 247, 'handmade-paper-silk-birds-painting.webp', '0000-00-00', 0),
(52, 0, 8, ' GOND CANVAS PAINTING', '<p>The gond paintings are always done free hand. Putting brush straight to canvas or paper, they seldom need an outline or rough sketch. These paintings are characterized by their dots and lines on flat colored background which collectively make up a total graphic. The bodies are seldom in a single colour, but are laid out in beautifully demarcated shades and clean geometrical lines. Every gond painter has developed his own mannerism for painting this subject. Visual ingenuity is not uncommon for the pardhans of the gond tribe of madhya pradesh who make the gond paintings. They smear mud paste on the floors, doors and walls of their homes and then paint motifs on them with a brush fashioned out of bamboo, using colours made from natural materials. In early 80&rsquo;s some of the pardhan gond painters started painting on paper and developed a most unique style of painting using bright colours and simple forms, decorated with dots and lines. Subsequently this style was popularly known as gond painting. The gond painters love nothing better than to narrate stories behind their paintings. Painted free hand these two dimensional paintings reflect the artists&rsquo; perception of life.</p>\r\n', 'gond-canvas-painting', 4660, 'gond-canvas-painting.jpg', '0000-00-00', 0),
(53, 0, 8, 'HANDMADE PAPER WITH SILK BIRDS PAINTING PARROT', '<p>This painting is the tribal art of the tribes in India. The tribes from the state of Rajasthan practice this art to show life cycle through simple images of everyday life of this tribe. The pigments are made from natural materials like leaves and flowers to create their art. Tribal art has gained popularity in recent years because of its simple and bold creations of everyday life. The tribal artisans have exemplary designing skills.</p>\r\n\r\n<ul>\r\n</ul>\r\n', 'handmade-paper-silk-birds-painting-parrot', 247, 'handmade-paper-silk-birds-painting-parrot.webp', '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pay_id` varchar(50) NOT NULL,
  `sales_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `pay_id`, `sales_date`) VALUES
(9, 9, 'PAY-1RT494832H294925RLLZ7TZA', '2018-05-10'),
(10, 9, 'PAY-21700797GV667562HLLZ7ZVY', '2018-05-10');

-- --------------------------------------------------------

--
-- Table structure for table `seller`
--

CREATE TABLE `seller` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(60) NOT NULL,
  `type` int(1) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `tribe` varchar(10) DEFAULT NULL,
  `address` text NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `status` int(1) NOT NULL,
  `activate_code` varchar(15) NOT NULL,
  `reset_code` varchar(15) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seller`
--

INSERT INTO `seller` (`id`, `email`, `password`, `type`, `firstname`, `lastname`, `tribe`, `address`, `contact_info`, `photo`, `status`, `activate_code`, `reset_code`, `created_on`) VALUES
(1, 'admin@admin.com', '$2y$10$0SHFfoWzz8WZpdu9Qw//E.tWamILbiNCX7bqhy3od0gvK5.kSJ8N2', 1, 'Code', 'Projects', NULL, '', '', 'thanos1.jpg', 1, '', '', '2018-05-01'),
(9, 'harry@den.com', '$2y$10$Oongyx.Rv0Y/vbHGOxywl.qf18bXFiZOcEaI4ZpRRLzFNGKAhObSC', 0, 'Harry', 'Den', NULL, 'Silay City, Negros Occidental', '09092735719', 'male2.png', 1, 'k8FBpynQfqsv', 'wzPGkX5IODlTYHg', '2018-05-09'),
(12, 'christine@gmail.com', '$2y$10$ozW4c8r313YiBsf7HD7m6egZwpvoE983IHfZsPRxrO1hWXfPRpxHO', 0, 'Christine', 'becker', NULL, 'demo', '7542214500', 'female3.jpg', 1, '', '', '2018-07-09'),
(13, 'amolsawant844@gmail.com', '$2y$10$E77bXTUMjgpiIofBztIGqOfQfsFf08BeIyOeC.txlxPeLFDZea0Cm', 0, 'amol', 'sawant', NULL, '', '', '', 1, 'T9KWzjb6CwPE', '', '2020-01-13'),
(14, 'amolsawant866@gmail.com', '$2y$10$0LS2FnG1tujQAUjnsHVq2uhbzoBSiQYTBT6kJwySCPc8yYAiiTT5m', 1, 'amol', 'sawant', NULL, '', '', '', 1, 'ZKeFHzRXQ7jc', '', '2020-01-13');

-- --------------------------------------------------------

--
-- Table structure for table `tribes`
--

CREATE TABLE `tribes` (
  `id` int(200) NOT NULL,
  `name` varchar(200) CHARACTER SET latin1 NOT NULL,
  `description` varchar(200) CHARACTER SET latin1 NOT NULL,
  `state` varchar(2000) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(60) NOT NULL,
  `type` int(1) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `status` int(1) NOT NULL,
  `activate_code` varchar(15) NOT NULL,
  `reset_code` varchar(15) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `firstname`, `lastname`, `address`, `contact_info`, `photo`, `status`, `activate_code`, `reset_code`, `created_on`) VALUES
(1, 'admin@admin.com', '$2y$10$0SHFfoWzz8WZpdu9Qw//E.tWamILbiNCX7bqhy3od0gvK5.kSJ8N2', 1, 'Code', 'Projects', '', '', 'thanos1.jpg', 1, '', '', '2018-05-01'),
(9, 'harry@den.com', '$2y$10$Oongyx.Rv0Y/vbHGOxywl.qf18bXFiZOcEaI4ZpRRLzFNGKAhObSC', 0, 'Harry', 'Den', 'Silay City, Negros Occidental', '09092735719', 'male2.png', 1, 'k8FBpynQfqsv', 'wzPGkX5IODlTYHg', '2018-05-09'),
(12, 'christine@gmail.com', '$2y$10$ozW4c8r313YiBsf7HD7m6egZwpvoE983IHfZsPRxrO1hWXfPRpxHO', 0, 'Christine', 'becker', 'demo', '7542214500', 'female3.jpg', 1, '', '', '2018-07-09'),
(13, 'amolsawant844@gmail.com', '$2y$10$E77bXTUMjgpiIofBztIGqOfQfsFf08BeIyOeC.txlxPeLFDZea0Cm', 0, 'amol', 'sawant', '', '', '', 1, 'T9KWzjb6CwPE', '', '2020-01-13'),
(14, 'amolsawant866@gmail.com', '$2y$10$0LS2FnG1tujQAUjnsHVq2uhbzoBSiQYTBT6kJwySCPc8yYAiiTT5m', 1, 'amol', 'sawant', '', '', '', 1, 'ZKeFHzRXQ7jc', '', '2020-01-13'),
(15, 'sfasfass@gmail.com', '$2y$10$rFF2V0ID1Zd0hGfWUSGuy.1T7rNrdsCJ7FI9BMA6vrBCAqmWtoRBG', 0, 'hari', 'haran', '', '', '', 0, 'lGmESdoB1ZKs', '', '2020-01-13'),
(17, 'dashsahf@gmail.com', '$2y$10$9eVUiR4b3.W9FCIuIZXJeODawbcJz5EeaRop6UVVUUa0ojVn42VYG', 0, 'amol', 'sawant', '', '', '', 1, 'HY2ObIC6Ngny', '', '2020-01-14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seller`
--
ALTER TABLE `seller`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tribes`
--
ALTER TABLE `tribes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `seller`
--
ALTER TABLE `seller`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
