-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 07, 2020 at 02:14 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `proiect2php`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id_article` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `img_post` varchar(255) NOT NULL,
  `views` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id_article`, `title`, `content`, `img_post`, `views`) VALUES
(1, 'Acrylic painting for beginners', '\r\nLearning to color, draw and paint! We learn the colors in English and Romanian, and we have fun! Drawing, coloring develops the child\'s creativity and artistic intelligence! Let\'s draw! ➤How to draw Santa Claus | Kawaii Santa Claus Drawing 🎅 | Draw and Color | Coloring Book | Draw and Color | Drawing Beginners We are learning to draw and color an emoji! It\'s fun! Educational channel! Drawings for children! :)', 'images/images.jpg', 0),
(2, '\r\n3 Simple modeling and painting projects', 'When we want to paint various decorative objects, we sometimes get stuck at the price of the necessary materials. Whether they are made of wood, porcelain, glass or polystyrene, the forms to be painted are quite expensive if we have to make a large number. The solution I found is to make them myself.', 'images/images2.jpg', 0),
(3, 'In what order do we paint with acrylics?', '\r\nWhen a beginner in acrylic painting is in front of the white canvas, he has the following dilemma:\r\n\r\nWhat do I paint first: The subject or the background? Dark colors or light colors?\r\n\r\nWell, there is no right or wrong way to start.\r\n\r\nIn the case of acrylics - opaque colors - there can be no question of a strict order in the application of colors. However, personally, I often like to start with the darkest values, then gradually open up to the finish with white accents.', 'images/acrilyc.jpeg', 0),
(4, 'What is kitsch in painting?', 'Let\'s start with the definition:\r\n\r\nKITSCH - has the following main meanings:\r\n\r\nPseudo-art products, characterized by flatness, superficial imitation of works of art; lack of originality.\r\nReproduction or copying on an industrial scale of works of art, multiplied and exploited commercially.', 'images/images4.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(10) UNSIGNED NOT NULL,
  `nume` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mesaj` text NOT NULL,
  `datan` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `nume`, `email`, `mesaj`, `datan`) VALUES
(1, 'cami', 'camimaria@ymail.com', 'ddvfffgfggfhf', '2020-08-03 16:01:29'),
(2, '', 'camimaria@ymail.com', 'eeeeeee', '2020-08-03 16:41:05'),
(3, '', '', '', '2020-08-03 16:41:11'),
(4, '', '', '', '2020-08-03 16:45:02'),
(5, 'cami', 'iulian.d016@gmail.com', 'ddddddddd', '2020-08-03 16:52:10'),
(6, 'cami', 'iulian.d016@gmail.com', 'ddddddddd', '2020-08-03 16:54:37'),
(7, 'cami', 'iulian.d016@gmail.com', 'ddddddddd', '2020-08-03 16:55:22'),
(8, 'cami', 'iulian.d016@gmail.com', 'ddddddddd', '2020-08-03 16:56:07'),
(9, 'cami', 'iulian.d016@gmail.com', 'ddddddddd', '2020-08-03 16:57:24'),
(10, 'cami', 'iulian.d016@gmail.com', 'ddddddddd', '2020-08-03 16:57:58'),
(11, 'cami', 'iulian.d016@gmail.com', 'ddddddddd', '2020-08-03 16:58:36'),
(12, 'cami', 'iulian.d016@gmail.com', 'ddddddddd', '2020-08-03 16:59:01'),
(13, 'cami', 'iulian.d016@gmail.com', 'ddddddddd', '2020-08-03 17:00:03'),
(14, 'cami', 'camimaria@ymail.com', 'ssssssss', '2020-08-03 17:20:49'),
(15, 'mihai', 'mai@mail.com', 'sddddddddddd', '2020-08-03 17:32:19'),
(16, 'mihai', 'mai@mail.com', 'sddddddddddd', '2020-08-03 17:33:35'),
(17, 'mihai', 'mai@mail.com', 'sddddddddddd', '2020-08-03 17:33:49'),
(18, 'mihai', 'mai@mail.com', 'sddddddddddd', '2020-08-03 17:35:45'),
(19, 'mihai', 'mai@mail.com', 'sddddddddddd', '2020-08-03 17:35:55'),
(20, 'iulian', 'iulian.d016@gmail.com', 'Siteul tau este foarte util pentru cei novice in taina artei.', '2020-08-05 13:28:21');

-- --------------------------------------------------------

--
-- Table structure for table `graphisart`
--

CREATE TABLE `graphisart` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `poza` varchar(255) NOT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `link` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `graphisart`
--

INSERT INTO `graphisart` (`id`, `title`, `description`, `poza`, `views`, `link`) VALUES
(1, 'Acrylic ', '<p>Acrylic paint is a fast-drying paint made of pigment suspended in acrylic polymer emulsion. Acrylic paints are water-soluble, but become water-resistant when dry. Depending on how much the paint is diluted with water, or modified with acrylic gels, mediums, or pastes, the finished acrylic painting can resemble a watercolor, a gouache or an oil painting, or have its own unique characteristics not attainable with other media.</p>\r\n<p>Acrylic artists\' paints may be thinned with water or acrylic medium and used as washes in the manner of watercolor paints, but unlike watercolor the washes are not rehydratable once dry. For this reason, acrylics do not lend themselves to the color lifting techniques of gum arabic-based watercolor paints. Instead, the paint is applied in layers, sometimes diluting with water or acrylic medium to allow layers underneath to partially show through. Using an acrylic medium gives the paint more of a rich and glossy appearance, whereas using water makes the paint look more like watercolor and have a matte finish.</p>', 'images/flori1.jpg\r\n', 0, 'https://en.wikipedia.org/wiki/Acrylic_paint'),
(2, 'Graphics', '<p>Graphics (from Greek γραφικός graphikos, \"belonging to drawing\") are visual images or designs on some surface, such as a wall, canvas, screen, paper, or stone to inform, illustrate, or entertain. In contemporary usage, it includes a pictorial representation of data, as in c manufacture, in typesetting and the graphic arts, and in educational and recreational software. Images that are generated by a computer are called computer graphics.</p>\r\n\r\n<p>Examples are photographs, drawings, line art, graphs, diagrams, typography, numbers, symbols, geometric designs, maps, engineering drawings, or other images. Graphics often combine text, illustration, and color. Graphic design may consist of the deliberate selection, creation, or arrangement of typography alone, as in a brochure, flyer, poster, web site, or book without any other element. Clarity or effective communication may be the objective, association with other cultural elements may be sought, or merely, the creation of a distinctive style.</p>\r\n\r\n<p>Graphics can be functional or artistic. The latter can be a recorded version, such as a photograph, or interpretation by a scientist to highlight essential features, or an artist, in which case the distinction with imaginary graphics may become blurred. It can also be used for architecture.</p>', 'images/gravura.jpg', 0, 'https://ro.wikipedia.org/wiki/Grafic%C4%83');

-- --------------------------------------------------------

--
-- Table structure for table `paintings`
--

CREATE TABLE `paintings` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `post` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `paintings`
--

INSERT INTO `paintings` (`id`, `title`, `description`, `post`, `code`, `views`, `img`) VALUES
(1, 'How to Paint a Rose Acrylics 🌹3 Easy Steps', 'Anyone can paint a rose in acrylics using these 3 easy steps! I show you in real-time some acrylic painting techniques I use. The paint colours I\'m using are Ultramarine Blue, Cad Yellow, Alizarin Crimson & White (but a simple red, yellow & blue will do). Hope you enjoy having a go and make sure to tag me in your creations on Instagram - I\'d love to see! ', '', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/mmwzmVwIu8U\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 0, 'images/redrose.jpg'),
(2, 'How to Paint a Peony Acrylics 🌸3 Easy Steps', 'Anyone can paint a peony in acrylics using these 3 easy steps! I show you in real-time some acrylic painting techniques I use.', '', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/FOz8q6THZyU\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 0, 'images/peony.jpg'),
(3, 'How to Paint a Sunset in Acrylic 🌞', 'Using acrylic paint & palette knife techniques, I create a sunset ocean! I love painting quick, acrylic artworks to practice my skills and challenge myself. Hope you guys enjoy the video!', '', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/_atycEUYPf0\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 0, 'images/sunset.jpg'),
(4, 'Simple Acrylic Sunset Painting with Palette Knife in REAL TIME', 'Using acrylic paint & palette knife techniques, I create a sunset ocean! I love painting quick, acrylic artworks to practice my skills and challenge myself. Hope you guys enjoy the video! ', '', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/xwUsfh50NR0\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 0, 'images/sunsetknife.jpg'),
(5, 'Rainy Day Painting ✨Watercolor Art', 'Join me in my cosy studio on a rainy day whilst I paint with watercolors.', '', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/zwzBQzj02eo\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 0, 'images/rainyday.jpg'),
(6, 'DIY Watercolor Paint Art Set - EASY MAKE YOUR OWN', 'Create your own unique watercolour paint set! I really wanted to have all my favourite colours in one, small container to take travelling. It is super duper easy and feels special every time I use it.', '', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/gcdku9RzkTU\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 0, 'images/diywater.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tablouri`
--

CREATE TABLE `tablouri` (
  `id` int(11) NOT NULL,
  `title` varchar(1000) NOT NULL,
  `description` text NOT NULL,
  `poza` varchar(255) NOT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `link` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tablouri`
--

INSERT INTO `tablouri` (`id`, `title`, `description`, `poza`, `views`, `link`) VALUES
(1, '\r\nPainting: Acrylic on Paper.\r\n\r\nThis small painting is part of a series of ten paintings made of acrylic on paper. I made these paintings in the need to alternate from the large surfaces, in which I painted rigorously, to these small surfaces where I tried to be as spontaneous, and free in the chromatic approach. The subject is a very banal one, the cherry fruit. Because very often we ignore the beauty of the simple things that surround us. I chose to name them by color and the disposition I had when I painted them.\r\nSometimes it inspires delicacy and calm through the similar shades between the subject and the background, and sometimes effervescence and nerve through complementary combinations. I would like it if the viewer will experience a sense of serenity and playful joy when looking at these paintings.\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'Heat cherry mood\r\n\r\n\r\nPainting: Acrylic on Paper.\r\nSize: 30 W x 40.1 H x 0.1 cm', 'images/heat-cherri-mood.jpg', 0, 'https://www.saatchiart.com/account/profile/1177579'),
(2, 'Baby cherry mood\r\nPainting: Acrylic on Paper.\r\nSize: 30 W x 40.1 H x 0.1 cm', '', 'images/baby-cherri-mood.jpg', 0, 'https://www.saatchiart.com/account/profile/1177579'),
(3, 'Blue cherry mood\r\n\r\n\r\nPainting\r\n\r\nSize: 30 W x 40.1 H x 0.1 cm', '', 'images/blue-cherri-mood.jpg', 0, 'https://www.saatchiart.com/account/profile/1177579'),
(4, 'Passion cherry mood\r\n\r\n\r\nPainting\r\n\r\nSize: 30 W x 40.1 H x 0.1 cm', '', 'images/passion-cherri-mood.jpg', 0, 'https://www.saatchiart.com/account/profile/1177579'),
(5, 'Morning haze: Acrylic on canvas. Size 60W x 45H ', '', 'images/abur.jpg', 0, 'https://www.saatchiart.com/account/profile/1177579'),
(7, 'The little Prince: Acrylic on canvas. Size 50W x 65H ', '', 'images/miculprint.jpg', 0, 'https://www.saatchiart.com/account/profile/1177579'),
(8, 'Poppy field: Acrilyc on canvas 65W 50H', '', 'images/poppyfield.jpg', 0, 'https://www.saatchiart.com/account/profile/1177579');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id_article`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `graphisart`
--
ALTER TABLE `graphisart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paintings`
--
ALTER TABLE `paintings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tablouri`
--
ALTER TABLE `tablouri`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id_article` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tablouri`
--
ALTER TABLE `tablouri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
