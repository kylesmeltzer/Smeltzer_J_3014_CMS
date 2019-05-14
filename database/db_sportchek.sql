-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 14, 2019 at 04:23 PM
-- Server version: 5.7.23
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sportchek`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_categories`
--

DROP TABLE IF EXISTS `tbl_categories`;
CREATE TABLE IF NOT EXISTS `tbl_categories` (
  `categ_id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `categ_name` varchar(60) NOT NULL,
  PRIMARY KEY (`categ_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_categories`
--

INSERT INTO `tbl_categories` (`categ_id`, `categ_name`) VALUES
(1, 'Shoes'),
(2, 'Jackets'),
(3, 'Skates'),
(4, 'Boots'),
(5, 'Jerseys'),
(6, 'Electronics'),
(7, 'Hoodies');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products`
--

DROP TABLE IF EXISTS `tbl_products`;
CREATE TABLE IF NOT EXISTS `tbl_products` (
  `product_id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(120) NOT NULL,
  `product_image` varchar(70) NOT NULL,
  `product_desc` text NOT NULL,
  `product_cost` decimal(6,2) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_products`
--

INSERT INTO `tbl_products` (`product_id`, `product_name`, `product_image`, `product_desc`, `product_cost`) VALUES
(1, 'Nike Men\'s Vaporfly 4 Flyknit Running Shoes', 'Nike_Mens_Vaporfly_4.png', 'Built to meet the exacting needs of world-class marathoners, Nike Vaporfly 4% Flyknit is designed for record-breaking speed. The Flyknit upper delivers breathable support, while the responsive foam and full-length plate provide incredible energy return for all 26.2.', '330.00'),
(2, 'ASICS Men\'s Gel Quantum Infinity Running Shoes', 'ASICS_Mens_Gel_Quantum_Infinity.png', 'A revolution in ASICS Premier Cushioning technology with full-length gel midsole unique, premium upper material which balances the disruptive tooling distinctive design and coloring that flows from tooling to the upper.', '249.99'),
(3, 'adidas Men\'s Ultraboost 19 Running Shoes', 'adidas_Mens_Ultraboost_19.png', 'The adidas Men’s Ultra Boost 19 Running Shoes combine comfort and performance to reinvent your run. They have a seamless adidas Primeknit 360 upper that’s engineered with motion weave technology to stretch and support your foot. Optimised Boost maximises energy return, and a 3D heel frame provides a locked-down fit that allows natural heel movement.', '250.00'),
(4, 'ASICS Women\'s Gel Kayano 25 Running Shoes', 'ASICS_Womens_Gel_Kayano_25.png', 'The 25th anniversary of this legendary runner includes the next evolution of our ultra-lightweight FlyteFoam® cushioning: FlyteFoam® Propel and FlyteFoam® Lyte. These two cutting-edge technologies work together to deliver energized cushioning and exceptional comfort from heel to toe. Count on GEL-Kayano® 25 for a premium and reliable ride that stabilizes your foot and fits to perfection. Weight: 9.81. Heel Height: 24mm. Forefoot Height: 11mm.', '219.99'),
(5, 'Saucony Women\'s Everun Freedom ISO 2', 'Saucony_Womens_Everun_Freedom_ISO_2.png', 'However, whenever and wherever. That’s how you feel in the Saucony Women’s Everun Freedom ISO 2 Running Shoes, thanks to EVERUN cushioning and the debut of ISOKNIT. This women’s neutral running shoe takes the great sock-like feel of ISOFIT and combines it with an engineered performance knit-giving you support, breathability, and freedom of movement, so nothing can hold you back.', '199.99'),
(6, 'Helly Hansen Women\'s Halifax Crew Hooded Jacket', 'Helly_Hansen_Womens_Halifax_Crew_Hooded_Jacket.png', 'Stay dry and warm on wet or windy days in the Helly Hansen Halifax women\'s hooded jacket. With breathable waterproofing and windproofing, this smart jacket features full seam sealing to prevent warm air escape. The water repellant finish provides an added barrier of protection, complemented by the durable 2-ply construction.', '159.99'),
(7, 'Columbia Women\'s Hidden Skies Jacket', 'Columbia_Womens_Hidden_Skies_Jacket.png', 'Water-resistant fabric on the outside, and sections of soft jersey on the inside make this rain jacket a gem. A two-way zipper allows for more utility and range of motion while the hood can be stowed away when you don’t need it. Zip hand pockets keep valuables like keys, phone, and cards safe.', '159.99'),
(8, 'Woods Women\'s Monashee 2L Mid-Length Shell Jacket', 'Woods_Womens_Monashee_2L.png', 'Don’t let bad weather get in the way of your outdoor adventures – the Women’s Monashee 2-Layer Mid-Length jacket offers extensive protection to keep you dry and comfortable. This fully seam taped mid-length jacket with waterproof CANATITE® ACTIVE technology keeps water out without compromising breathability and air flow.', '150.00'),
(9, 'The North Face Women\'s Printed Fanorak Jacket', 'The_North_Face_Womens_Printed_Fanorak.png', 'This versatile anorak offers wind and rain resistance and packs into its own stylish fanny pack.', '119.99'),
(10, 'Burton Women\'s Sadie Living Lining Long Jacket', 'Burton_Womens_Sadie_Living_Lining.png', 'The Burton Women\'s Sadie LL Long Jacket has a clean style and the added coverage with an adjustable drop tail hem – the perfect recipe for rainy day adventures.', '139.97'),
(11, 'Bauer Nexus N2700 Senior Hockey Skates', 'Bauer_Nexus_N2700_Senior.png', 'Get an edge on your opponent with the Nexus 2700 Skate featuring the TUUK LIGHTSPEED EDGE holder for an increased attack angle and tighter turns. Lightweight memory foam ankle padding gives you a comfortable fit and feel.', '249.99'),
(12, 'CCM Jetspeed FT360 Senior Hockey Skates', 'CCM_Jetspeed_FT360_Senior.png', 'Leave Others Behind in a flash with the JetSpeed FT360 Skate. ', '219.99'),
(13, 'GRAF G5035 Senior Hockey Skates', 'GRAF_G5035_Senior.png', 'GRAF G5035 Senior Hockey Skates are created to provide a comfortable fit at the same time as providing stability and protection. The boots are created from AEPE composite material designed to protect the foot against stick or puck impact, while the micro-fibre lining creates a soft, form-fitting ankle padding that locks the ankle in place. The Pebax Pro Outsole helps to stabilise the foot during stride and a moderately pronounced heel.', '179.88'),
(14, 'CCM Ribcor 40K Junior Goalie Skates', 'CCM_Ribcor_40K_Junior.png', 'Inspired by the cult-like following of The Pump technology. Feedback from top NHL goalies led to technological enhancements to quarter packages and cowlings, resulting in more power, flexibility and range of motion. ', '179.99'),
(15, 'Bauer Supreme ONE80 Senior Goalie Skates', 'Bauer_Supreme_ONE80_Senior.png', 'Make save after save with the Bauer Supreme ONE80 Goalie Skates. VERTEXX cowling reduces weight and increases attack angle so you can feel confident in the crease.', '174.88'),
(16, 'Timberland Men\'s EK Chillberg Mid WP Winter Boots', 'Timberland_Mens_EK_Chillberg_Mid_WP.png', 'Show snow, slush and sub-zero temps who’s boss in our Chillberg insulated, waterproof boots. Designed for long hours of wear in rugged New England weather, these winter boots take on December through March in style.', '160.00'),
(17, 'Merrell Men\'s Chameleon Thermo 8 Waterproof Winter Boots', 'Merrell_Mens_Chameleon_Thermo_8 _Waterproof.png', 'Even if you live for winter, you like to keep the elements at arms length or at least at a comfortable distance from your feet. These boots feature a lighter weight construction that won\'t hold you back with just the right amount of insulation and weatherproofing to keep the cold at bay.', '199.99'),
(18, 'Under Armour Men\'s Team Fat Tire Govie Winter Boots', 'Under_Armour_Mens_Team_Fat_Tire_Govie.png', 'Souped-up to take on winter’s worst, the Govie is built on the same traction and cushioning as our original, award-winning Fat Tire boot. It’s fully waterproof and cold-weather-ready thanks to intelligent insulation that’s warmer when you’re less active and cooler when you get moving.', '154.97'),
(19, 'Columbia Men\'s Powderhouse Titanium Omni-Heat 3D OutDry Winter Boots', 'Columbia_Mens_Powderhouse_Titanium_Omni-Heat_3D_OutDry.png', 'The Columbia Men\'s Powderhouse Titanium Omni-Heat 3D OutDry is a feature-rich winter boot built to protect and perform in extreme conditions. Designed to withstand sub-zero temperatures, the waterproof-breathable upper, advanced thermal-reflective lining, and 600g insulation keep cold out and warmth in. Superior midsole cushioning and a high-grip Michelin® outsole combine for a comfortable, sure-footed ride in harsh weather and terrain.', '249.99'),
(20, 'The North Face Men\'s Chilkat III Winter Boots', 'The_North_Face_Mens_Chilkat_III.png', 'Perfect for climbing in and out of tents on cold, wet days, these easy on/off boots feature a waterproof construction, ample (200 g) Heatseeker™ insulation and durable, rubber soles for excellent traction.', '149.99'),
(21, 'Montreal Canadiens Authentic Home Hockey Jersey', 'Montreal_Canadiens_Authentic_Home.png', 'Match the Habs when they take to the ice at Bell Centre with the Montreal Canadiens Authentic Pro Home Hockey Jersey. An authentic replica of the official NHL hockey uniforms, the jersey shows off all of the crests and logos in the right spots and is even made out of the same adidas climalite fabric that players rely on to remain cool and dry through every period.', '199.99'),
(22, 'Toronto Raptors Men\'s Nike Lin Swingman Icon Jersey', 'Toronto_Raptors_Mens_Nike.png', 'Based on the authentic NBA jersey, the Icon Edition Swingman (Toronto Raptors) Men’s Nike NBA Connected Jersey lets you rep your team while helping keep you cool and comfortable through every move.', '130.00'),
(23, 'Toronto Blue Jays Marcus Stroman Home Baseball Jersey', 'Toronto_Blue_Jays_Marcus_Stroman_Home', 'Enjoy the Toronto Blue Jays game in style and comfort with your new Marcus Stroman Jays home jersey.', '159.99'),
(24, 'Indianapolis Colts Luck Blue Football Jersey', 'Indianapolis_Colts_Luck_Blue.png', 'The NFL Indianapolis Colts Limited Jersey delivers unparalleled fit and style for fans who command attention, at the stadium and on the street.', '149.99'),
(25, 'Vancouver Whitecaps Men\'s 2018/19 adidas Replica Away Jersey', 'Vancouver_Whitecaps_Mens_2018_adidas.png', 'Created for fans, this jersey keeps you comfortable as you roar Vancouver Whitecaps FC to victory on the road. Made of soft fabric that channels moisture away from your skin, it has a slightly looser fit than the shirts the club’s players wear on the pitch. A woven team badge stands out on the chest. Stay dry Climalite wicks sweat to keep you dry in every condition Made for fans A fan jersey is a streetwear version of what players wear on match day and is wider in the shoulders and body.', '109.99'),
(26, 'Fitbit Versa Lite Smart Watch - White', 'Fitbit_Versa_Lite_Smart_Watch.png', 'Open a world of possibilities with Fitbit Versa™ Lite Edition, the versatile, everyday smartwatch. With all the core fitness and smart features, vibrant colors and an easy one-button design, this watch will inspire you to live boldly and make your goals reality.', '199.95'),
(27, 'GoPro HERO7 White Edition Action Camera', 'GoPro_HERO7_White_Edition_Action_Camera.png', 'Say hello to New GoPro HERO 7 White, the perfect partner on any adventure. It’s tough, tiny and totally waterproof so it can go wherever you do. An intuitive touch screen makes it simple to get great shots. Just swipe and tap. Use the photo timer to grab a sweet selfie. You can even shoot vertically then add your photos and videos right to your Instagram Story. Your shots move to the GoPro app automatically to share on the spot. From awesome moments to everyday experiences, capture the fun in creative new ways with GoPro HERO 7 White edition.', '269.99'),
(28, 'Apple Watch Series 4 GPS, 44mm Space Grey Aluminum Case with Black Sport Band', 'Apple_Watch_Series_4_GPS_44mm_Space_Grey.png', 'The New Apple Watch Series 4 is here! Fundamentally redesigned and re-engineered. The largest Apple Watch display yet. Built-in electrical heart sensor. New Digital Crown with haptic feedback. Low and high heart rate notifications. Fall detection and Emergency SOS. New Breathe watch faces. Automatic workout detection. New yoga and hiking workouts. Advanced features for runners like cadence and pace alerts. New head-to-head competitions. Activity sharing with friends. Personalized coaching. Monthly challenges and achievement awards. You can use Walkie-Talkie and send messages. Listen to Apple Music1 and Apple Podcasts. And use Siri in all-new ways. Apple Watch Series 4 lets you do it all right from your wrist.', '559.00'),
(29, 'Beats Solo2 On-Ear Headphones – Luxe Edition, Red', 'Beats_Solo2_On-Ear_Headphones_Luxe_Edition_Red.png', 'The sound and design you’ve come to expect from our Beats Solo2 is now matched by a refined glossy finish and polished accents.', '219.99'),
(30, 'Garmin Fenix 5 GPS Watch - Slate Grey with Black Band', 'Garmin_Fenix_5_GPS_Watch_Slate_Grey.png', 'Beat yesterday all day, every day. fenix 5 is the premium multisport GPS watch with wrist-based heart rate, advanced fitness features and interchangeable bands that let you go from workplace to workout without breaking stride. Whatever sport you want to track, fenix 5 has it covered, thanks to built-in activity profiles and performance metrics plus smart notifications.', '519.99'),
(31, 'Helly Hansen Women\'s Verket Reversible Pile Jacket - Ebony', 'Helly_Hansen_Womens_Verket_Reversible_Pile_Jacket.png', 'This reversible pile will give you versatility in whatever you choose to do, perfect for both urban and outdoor activities.', '179.99'),
(32, 'adidas Originals Women\'s Trefoil Pullover Hoodie', 'adidas_Originals_Womens_Trefoil_Pullover_Hoodie.png', 'This hoodie celebrates Valentine’s Day with bold red color. It’s made of cotton French terry with a soft, comfortable feel. The sweatshirt is finished with an iconic Trefoil logo on the front.', '89.99'),
(33, 'Nike Sportswear Women\'s Heritage Pullover Hoodie', 'Nike_Sportswear_Womens_Heritage_Pullover_Hoodie.png', 'Make it memorable in the Nike Sportswear Women’s Fleece Hoodie, a timeless look made with soft, semi-brushed fleece fabric. A Chevron design throws it back to Windrunner style, while ribbed details add a classic feel.', '80.00'),
(34, 'PUMA Women\'s Modern Sports Crop Hoodie', 'PUMA_Womens_Modern_Sports_Crop_Hoodie.png', 'The PUMA Modern Sports Cropped Hoodie is the best of both worlds. Made with a modern cropped design and featuring classic elements of sportswear, this comfortable hoodie is perfect to pair with all your other essentials.', '64.99'),
(35, 'Under Armour Women\'s Fleece Logo Pullover Hoodie', 'Under_Armour_Womens_Fleece_Logo_Pullover_Hoodie.png', 'Armour Fleece® is UA’s original performance replacement for old-school fleece. It’s light, incredibly warm, and has just the right amount of stretch.', '51.97');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_prod_categ`
--

DROP TABLE IF EXISTS `tbl_prod_categ`;
CREATE TABLE IF NOT EXISTS `tbl_prod_categ` (
  `prod_categ_id` smallint(6) NOT NULL AUTO_INCREMENT,
  `products_id` smallint(6) NOT NULL,
  `categories_id` smallint(6) NOT NULL,
  PRIMARY KEY (`prod_categ_id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_prod_categ`
--

INSERT INTO `tbl_prod_categ` (`prod_categ_id`, `products_id`, `categories_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 2),
(7, 7, 2),
(8, 8, 2),
(9, 9, 2),
(10, 10, 2),
(11, 11, 3),
(12, 12, 3),
(13, 13, 3),
(14, 14, 3),
(15, 15, 3),
(16, 16, 4),
(17, 17, 4),
(18, 18, 4),
(19, 19, 4),
(20, 20, 4),
(21, 21, 5),
(22, 22, 5),
(23, 23, 5),
(24, 24, 5),
(25, 25, 5),
(26, 26, 6),
(27, 27, 6),
(28, 28, 6),
(29, 29, 6),
(30, 30, 6),
(31, 31, 7),
(32, 32, 7),
(33, 33, 7),
(34, 34, 7),
(35, 35, 7);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE IF NOT EXISTS `tbl_user` (
  `user_id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `user_fname` varchar(250) NOT NULL,
  `user_lname` varchar(250) NOT NULL,
  `user_name` varchar(250) NOT NULL,
  `user_pass` varchar(250) NOT NULL,
  `user_email` varchar(250) NOT NULL,
  `user_date` timestamp NOT NULL,
  `user_ip` varchar(250) NOT NULL,
  `user_new` tinyint(4) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_fname`, `user_lname`, `user_name`, `user_pass`, `user_email`, `user_date`, `user_ip`, `user_new`) VALUES
(1, 'Kyle', 'Smeltzer', 'ksmeltzer', 'pass', 'ksmeltzer@domain.com', '2019-05-02 04:00:00', '::1', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
