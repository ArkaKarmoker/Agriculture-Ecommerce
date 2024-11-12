-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2024 at 11:04 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `agro`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart_list`
--

CREATE TABLE `cart_list` (
  `id` int(30) NOT NULL,
  `client_id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `quantity` float NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart_list`
--

INSERT INTO `cart_list` (`id`, `client_id`, `product_id`, `quantity`) VALUES
(50, 4, 25, 1);

-- --------------------------------------------------------

--
-- Table structure for table `category_list`
--

CREATE TABLE `category_list` (
  `id` int(30) NOT NULL,
  `vendor_id` int(30) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category_list`
--

INSERT INTO `category_list` (`id`, `vendor_id`, `name`, `description`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(11, 5, 'Fruits & Vegetables', 'Fresh, organically grown fruits and vegetables sourced directly from local farms. Shop for seasonal and exotic produce that’s harvested with care to maintain peak flavor and nutrition.', 1, 0, '2024-11-13 02:54:34', NULL),
(12, 5, 'Seeds & Fertilizers', 'Quality seeds for all kinds of crops, vegetables, and flowers, along with organic and chemical fertilizers to boost soil fertility and crop yield.', 1, 0, '2024-11-13 02:54:46', NULL),
(13, 5, 'Agricultural Tools & Equipment', 'Essential tools for farming and gardening, including hand tools, mechanized equipment, and accessories for efficient farming practices.', 1, 0, '2024-11-13 02:54:56', NULL),
(14, 5, 'Dairy & Poultry Products', 'A range of dairy products like milk, cheese, and butter, along with fresh poultry and eggs, sourced from ethical and sustainable farms.', 1, 1, '2024-11-13 02:55:05', '2024-11-13 03:24:45'),
(15, 5, 'Animal Feed & Supplements', 'Nutritious feed and supplements for livestock and poultry, ensuring animal health and improved productivity.', 1, 1, '2024-11-13 02:55:17', '2024-11-13 03:24:39'),
(16, 5, 'Organic & Bio Products', 'Certified organic products including food, fertilizers, pesticides, and more, promoting sustainable farming and a healthier lifestyle.', 1, 1, '2024-11-13 02:55:30', '2024-11-13 03:24:32'),
(17, 5, 'Irrigation & Water Management', 'Advanced irrigation systems, pumps, and water management solutions to optimize water use and ensure crop growth in arid areas.', 1, 1, '2024-11-13 02:55:41', '2024-11-13 03:24:28'),
(18, 5, 'Farm Machinery', 'Large-scale machinery including tractors, plows, harvesters, and other specialized equipment for efficient farming on larger plots.', 0, 1, '2024-11-13 02:56:09', '2024-11-13 03:24:19'),
(19, 5, 'Plant Protection & Pesticides', 'Eco-friendly pesticides, herbicides, and plant protection products that help keep crops healthy while maintaining environmental balance.', 1, 1, '2024-11-13 02:56:18', '2024-11-13 03:23:18'),
(20, 5, 'Packaging & Storage Solutions', 'Durable packaging materials and storage solutions to keep produce fresh from farm to market, reducing spoilage and maintaining quality.', 1, 1, '2024-11-13 02:56:27', '2024-11-13 03:23:01'),
(21, 5, 'Agri-Consultation Services', 'Access to professional consultation for farming, crop management, pest control, and sustainable agriculture practices.', 1, 1, '2024-11-13 02:56:35', '2024-11-13 03:23:57'),
(22, 6, 'Dairy & Poultry Products', 'A range of dairy products like milk, cheese, and butter, along with fresh poultry and eggs, sourced from ethical and sustainable farms.', 1, 0, '2024-11-13 03:25:07', NULL),
(23, 6, 'Animal Feed & Supplements', 'Nutritious feed and supplements for livestock and poultry, ensuring animal health and improved productivity.', 1, 0, '2024-11-13 03:25:19', NULL),
(24, 6, 'Organic & Bio Products', 'Certified organic products including food, fertilizers, pesticides, and more, promoting sustainable farming and a healthier lifestyle.', 1, 0, '2024-11-13 03:25:28', NULL),
(25, 6, 'Irrigation & Water Management', 'Irrigation & Water Management', 1, 0, '2024-11-13 03:26:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `client_list`
--

CREATE TABLE `client_list` (
  `id` int(30) NOT NULL,
  `code` varchar(100) NOT NULL,
  `firstname` text NOT NULL,
  `middlename` text DEFAULT NULL,
  `lastname` text NOT NULL,
  `gender` text NOT NULL,
  `contact` text NOT NULL,
  `address` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `client_list`
--

INSERT INTO `client_list` (`id`, `code`, `firstname`, `middlename`, `lastname`, `gender`, `contact`, `address`, `email`, `password`, `avatar`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(2, '202202-00002', 'test', 'test', 'test', 'Male', '094564654', 'test', 'test@sample.com', '098f6bcd4621d373cade4e832627b4f6', 'uploads/clients/2.png?v=1644471867', 1, 1, '2022-02-10 13:44:26', '2022-02-10 13:44:35'),
(4, '202411-00001', 'Arka', '', 'Karmoker', 'Male', '0123456789', 'Dhaka', 'arkakarmoker@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'uploads/clients/4.png?v=1731423125', 1, 0, '2024-11-12 20:51:48', '2024-11-12 20:52:05');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `order_id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `quantity` double NOT NULL DEFAULT 0,
  `price` double NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_list`
--

CREATE TABLE `order_list` (
  `id` int(30) NOT NULL,
  `code` varchar(100) NOT NULL,
  `client_id` int(30) NOT NULL,
  `vendor_id` int(30) NOT NULL,
  `total_amount` double NOT NULL DEFAULT 0,
  `delivery_address` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_list`
--

CREATE TABLE `product_list` (
  `id` int(30) NOT NULL,
  `vendor_id` int(30) DEFAULT NULL,
  `category_id` int(30) DEFAULT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `price` double NOT NULL DEFAULT 0,
  `image_path` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_list`
--

INSERT INTO `product_list` (`id`, `vendor_id`, `category_id`, `name`, `description`, `price`, `image_path`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(11, 5, 11, 'Fresh Organic Tomatoes/kg', '&lt;p&gt;Ripe, juicy organic tomatoes, free from pesticides and chemicals. Perfect for salads, cooking, and sauces.&lt;/p&gt;', 120, 'uploads/products/11.png?v=1731445368', 1, 0, '2024-11-13 03:02:48', '2024-11-13 03:02:48'),
(12, 5, 11, 'Seasonal Mangoes/kg', '&lt;p&gt;Sweet and aromatic mangoes sourced directly from local orchards. Available during peak mango season.&lt;/p&gt;', 200, 'uploads/products/12.png?v=1731445438', 1, 0, '2024-11-13 03:03:58', '2024-11-13 03:03:58'),
(13, 5, 11, 'Fresh Spinach/bundle', '&lt;p&gt;Nutritious, fresh spinach rich in iron and vitamins, ideal for soups, salads, and cooking.&lt;/p&gt;', 50, 'uploads/products/13.png?v=1731445536', 1, 0, '2024-11-13 03:05:36', '2024-11-13 03:05:36'),
(14, 5, 12, 'Hybrid Rice Seeds/500g packet', '&lt;p&gt;High-yielding rice seeds resistant to common diseases and suitable for various soil types.&lt;/p&gt;', 500, 'uploads/products/14.png?v=1731445653', 1, 0, '2024-11-13 03:06:46', '2024-11-13 03:07:33'),
(15, 5, 12, 'Organic Compost Fertilizer/kg', '&lt;p&gt;100% organic compost that enriches soil health and boosts plant growth sustainably.&lt;/p&gt;', 250, 'uploads/products/15.png?v=1731445737', 1, 0, '2024-11-13 03:08:57', '2024-11-13 03:08:57'),
(16, 5, 12, 'Vegetable Seeds Pack/pack', '&lt;p&gt;A pack of seeds for vegetables like carrots, spinach, and tomatoes, suitable for home gardens.&lt;/p&gt;', 200, 'uploads/products/16.png?v=1731445790', 1, 0, '2024-11-13 03:09:50', '2024-11-13 03:09:50'),
(17, 5, 13, 'Garden Hand Trowel/piece', '&lt;p&gt;Lightweight and durable, perfect for planting, weeding, and cultivating small plants.&lt;/p&gt;', 100, 'uploads/products/17.png?v=1731445863', 1, 0, '2024-11-13 03:11:03', '2024-11-13 03:11:03'),
(18, 5, 13, 'Farmer’s Weeding Tool/piece', '&lt;p&gt;Specialized tool for quick and efficient weed removal, helping keep crops healthy.&lt;/p&gt;', 300, 'uploads/products/18.png?v=1731445930', 1, 0, '2024-11-13 03:12:10', '2024-11-13 03:12:10'),
(19, 5, 13, 'Heavy-Duty Pruning Shears/piece', '&lt;p&gt;Specialized tool for quick and efficient weed removal, helping keep crops healthy.&lt;/p&gt;', 300, 'uploads/products/19.png?v=1731445978', 1, 0, '2024-11-13 03:12:58', '2024-11-13 03:12:58'),
(20, 5, 13, 'Heavy-Duty Pruning Shears/pair', '&lt;p&gt;Sharp and ergonomic pruning shears for trimming plants, shrubs, and small branches.&lt;/p&gt;', 500, 'uploads/products/20.png?v=1731446064', 1, 0, '2024-11-13 03:14:24', '2024-11-13 03:14:24'),
(21, 6, 22, 'Fresh Cow Milk (1 liter)', '&lt;p&gt;100% natural, unpasteurized milk from grass-fed cows. Delivered directly from local farms, ensuring rich taste and high nutritional value. Ideal for drinking, cooking, and baking.&lt;/p&gt;', 80, 'uploads/products/21.png?v=1731446925', 1, 0, '2024-11-13 03:28:45', '2024-11-13 03:28:45'),
(22, 6, 22, 'Farm Fresh Eggs (12 eggs per carton)', '&lt;p&gt;Free-range eggs from hens raised on a natural diet. Rich in protein and vitamins, with vibrant yolks perfect for a healthy breakfast or any recipe.&lt;/p&gt;', 120, 'uploads/products/22.png?v=1731446995', 1, 0, '2024-11-13 03:29:55', '2024-11-13 03:29:55'),
(23, 6, 22, 'Homemade Butter (500g)', '&lt;p&gt;Pure, creamy butter made using traditional churning methods. Ideal for cooking or as a spread. Contains no additives or preservatives, ensuring the fresh, authentic taste of natural dairy.&lt;/p&gt;', 250, 'uploads/products/23.png?v=1731447087', 1, 0, '2024-11-13 03:31:27', '2024-11-13 03:31:27'),
(24, 6, 22, 'Organic Mozzarella Cheese (250g)', '&lt;p&gt;Soft, stretchy mozzarella cheese made from organic cow milk. Ideal for pizzas, pastas, and salads. Freshly made and free from artificial additives.&lt;/p&gt;', 300, 'uploads/products/24.png?v=1731447139', 1, 0, '2024-11-13 03:32:19', '2024-11-13 03:32:19'),
(25, 6, 22, 'Poultry Meat (Broiler, 1 kg)', '&lt;p&gt;Tender, hormone-free broiler chicken sourced from trusted farms. Freshly processed to maintain flavor and quality. Suitable for a variety of dishes.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 180, 'uploads/products/25.png?v=1731447183', 1, 0, '2024-11-13 03:33:03', '2024-11-13 03:33:03'),
(26, 6, 23, 'Layer Poultry Feed (1 kg)', '&lt;p&gt;Balanced feed formulated specifically for laying hens, boosting egg production and shell quality. Packed with essential vitamins and minerals for optimum hen health.&lt;/p&gt;', 60, 'uploads/products/26.png?v=1731447261', 1, 0, '2024-11-13 03:34:21', '2024-11-13 03:34:21'),
(27, 6, 23, 'Cattle Fodder Mix (5 kg bag)', '&lt;p&gt;Nutritious fodder blend designed for cattle, providing energy and essential nutrients. Improves milk yield in dairy cattle and promotes weight gain in beef cattle.&lt;/p&gt;', 200, 'uploads/products/27.png?v=1731447395', 1, 0, '2024-11-13 03:36:35', '2024-11-13 03:36:35'),
(28, 6, 23, 'Goat Feed Pellets (2 kg packet)', '&lt;p&gt;High-fiber feed pellets tailored to the dietary needs of goats, supporting growth and reproduction. Contains natural ingredients, including essential vitamins and minerals.&lt;/p&gt;', 150, 'uploads/products/28.png?v=1731447435', 1, 0, '2024-11-13 03:37:15', '2024-11-13 03:37:15'),
(29, 6, 23, 'Mineral Supplement Block (1 block, 500g)', '&lt;p&gt;Essential mineral block for livestock, promoting bone strength, digestion, and overall health. Easy to place in feeding areas for cattle, goats, and sheep.&lt;/p&gt;', 100, 'uploads/products/29.png?v=1731447515', 1, 0, '2024-11-13 03:38:34', '2024-11-13 03:38:35'),
(30, 6, 23, 'Poultry Growth Supplement Powder (500g packet)', '&lt;p&gt;Growth-boosting supplement powder for poultry. Rich in probiotics and nutrients that aid digestion and improve poultry health and productivity.&lt;/p&gt;', 250, 'uploads/products/30.png?v=1731447566', 1, 0, '2024-11-13 03:39:25', '2024-11-13 03:39:26'),
(31, 6, 24, 'Neem Oil Pesticide (500ml bottle)', '&lt;p&gt;Organic neem oil pesticide for protecting plants from harmful pests. Safe for use on vegetables, fruits, and flowers. Non-toxic and environmentally friendly.&lt;/p&gt;', 150, 'uploads/products/31.png?v=1731447612', 1, 0, '2024-11-13 03:40:12', '2024-11-13 03:40:12'),
(32, 6, 24, 'Bio Compost Fertilizer (1 kg bag)', '&lt;p&gt;Natural compost fertilizer enriched with organic matter. Enhances soil structure and fertility, promoting healthier plant growth. Suitable for vegetables, fruits, and flower plants.&lt;/p&gt;', 120, 'uploads/products/32.png?v=1731447655', 1, 0, '2024-11-13 03:40:55', '2024-11-13 03:40:55'),
(33, 6, 24, 'Organic Rice Bran (1 kg packet)', '&lt;p&gt;High-quality organic rice bran for livestock and poultry feed. Rich in vitamins and minerals, it supports healthy digestion and improves skin and coat condition.&lt;/p&gt;', 80, 'uploads/products/33.png?v=1731447732', 1, 0, '2024-11-13 03:42:12', '2024-11-13 03:42:12'),
(34, 6, 24, 'Organic Plant Growth Booster (250g packet)', '&lt;p&gt;All-natural growth enhancer for all types of plants. Improves soil microbial activity and accelerates plant development. Ideal for use in organic gardens and farms.&lt;/p&gt;', 100, 'uploads/products/34.png?v=1731447800', 1, 0, '2024-11-13 03:43:20', '2024-11-13 03:43:20'),
(35, 6, 24, 'Eco-Friendly Herbicide (1 liter bottle)', '&lt;p&gt;Non-toxic herbicide that controls weeds without damaging the environment. Suitable for agricultural and garden use, ensuring crops remain unaffected by invasive plants.&lt;/p&gt;', 180, 'uploads/products/35.png?v=1731447844', 1, 0, '2024-11-13 03:44:04', '2024-11-13 03:44:04'),
(36, 6, 25, 'Drip Irrigation Kit (for 50 plants)', '&lt;p&gt;Complete drip irrigation kit designed for efficient water management. Reduces water wastage and directs water to plant roots, enhancing growth and minimizing evaporation.&lt;/p&gt;', 1500, 'uploads/products/36.png?v=1731447905', 1, 0, '2024-11-13 03:45:05', '2024-11-13 03:45:05'),
(37, 6, 25, 'Portable Electric Water Pump (1 unit)', '&lt;p&gt;Lightweight, easy-to-use water pump ideal for small and medium farms. Provides consistent water supply, supporting irrigation needs for various crop types.&lt;/p&gt;', 8000, 'uploads/products/37.png?v=1731447978', 1, 0, '2024-11-13 03:46:18', '2024-11-13 03:46:18'),
(38, 6, 25, 'Sprinkler Set (3-piece set)', '&lt;p&gt;Durable and adjustable sprinkler system that distributes water evenly across the field. Perfect for gardens and small farms, ensuring even coverage and water efficiency.&lt;/p&gt;', 500, 'uploads/products/38.png?v=1731448021', 1, 0, '2024-11-13 03:47:01', '2024-11-13 03:47:01'),
(39, 6, 25, 'Soil Moisture Sensor (1 sensor)', '&lt;p&gt;Sensor that monitors soil moisture levels and helps farmers manage irrigation schedules efficiently. Easy to install and compatible with most irrigation systems.&lt;/p&gt;', 700, 'uploads/products/39.png?v=1731448071', 1, 0, '2024-11-13 03:47:51', '2024-11-13 03:47:51'),
(40, 6, 25, 'PVC Irrigation Pipes (10-meter roll)', '&lt;p&gt;High-quality PVC pipes for durable and leak-free irrigation setup. Suitable for transporting water to plants in gardens and farms. Easy to install and maintain.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 400, 'uploads/products/40.png?v=1731448129', 1, 0, '2024-11-13 03:48:49', '2024-11-13 03:48:49');

-- --------------------------------------------------------

--
-- Table structure for table `shop_type_list`
--

CREATE TABLE `shop_type_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shop_type_list`
--

INSERT INTO `shop_type_list` (`id`, `name`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(6, 'Farm Produce', 1, 0, '2024-11-13 02:49:44', NULL),
(7, 'Seed Supplier', 1, 0, '2024-11-13 02:49:51', NULL),
(8, 'Fertilizer Dealer', 1, 0, '2024-11-13 02:49:57', NULL),
(9, 'Agricultural Tools & Equipment', 1, 0, '2024-11-13 02:50:07', NULL),
(10, 'Dairy Farm', 1, 0, '2024-11-13 02:50:12', NULL),
(11, 'Poultry Supplier', 1, 0, '2024-11-13 02:50:18', NULL),
(12, 'Organic Products', 1, 0, '2024-11-13 02:50:24', NULL),
(13, 'Animal Feed Supplier', 1, 0, '2024-11-13 02:50:30', NULL),
(14, 'Nursery & Gardening', 1, 0, '2024-11-13 02:50:36', NULL),
(15, 'Irrigation Solutions', 1, 0, '2024-11-13 02:50:41', NULL),
(16, 'Farm Machinery Supplier', 0, 0, '2024-11-13 02:50:46', '2024-11-13 02:52:40'),
(17, 'Agri-Consultancy', 1, 0, '2024-11-13 02:50:52', NULL),
(18, 'Packaging & Storage Solutions', 1, 0, '2024-11-13 02:50:58', NULL),
(19, 'Plant Protection Supplies', 1, 0, '2024-11-13 02:51:05', NULL),
(20, 'Aquaculture Supplies', 1, 0, '2024-11-13 02:51:11', NULL),
(21, 'General Agriculture Store', 1, 0, '2024-11-13 02:51:45', NULL),
(22, 'Agri Superstore', 1, 0, '2024-11-13 02:52:01', NULL),
(23, 'All-in-One Agri Shop', 0, 0, '2024-11-13 02:52:06', '2024-11-13 02:52:23'),
(24, 'Comprehensive Farm Supply', 0, 0, '2024-11-13 02:52:13', '2024-11-13 02:52:30'),
(25, 'Agri Marketplace', 1, 0, '2024-11-13 02:52:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'A Multivendor E-commerce Marketplace for Fresh Agricultural Products'),
(6, 'short_name', 'Agro'),
(11, 'logo', 'uploads/Screenshot 2024-11-08 152420.png'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/agricultural-solutions-banner-187215_1080x675.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(1, 'Adminstrator', 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/avatar-1.png?v=1644472635', NULL, 1, '2021-01-20 14:02:37', '2022-02-10 13:57:15'),
(12, 'Anas', 'Ahmed', 'anas', '81dc9bdb52d04dc20036dbd8313ed055', 'uploads/avatar-12.png?v=1731438998', NULL, 2, '2024-11-13 01:16:38', '2024-11-13 01:16:38');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_list`
--

CREATE TABLE `vendor_list` (
  `id` int(30) NOT NULL,
  `code` varchar(100) NOT NULL,
  `shop_type_id` int(30) NOT NULL,
  `shop_name` text NOT NULL,
  `shop_owner` text NOT NULL,
  `contact` text NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vendor_list`
--

INSERT INTO `vendor_list` (`id`, `code`, `shop_type_id`, `shop_name`, `shop_owner`, `contact`, `username`, `password`, `avatar`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(5, '202411-00001', 21, 'Agro Mall', 'Agro Ltd.', '01712345678', 'agro', '81dc9bdb52d04dc20036dbd8313ed055', 'uploads/vendors/5.png?v=1731444849', 1, 0, '2024-11-13 02:54:09', '2024-11-13 02:54:09'),
(6, '202411-00002', 6, 'GreenFields Produce', 'Abdur Razzak Marua', '+8801712345678', 'marua', '81dc9bdb52d04dc20036dbd8313ed055', 'uploads/vendors/6.png?v=1731446484', 1, 0, '2024-11-13 03:21:24', '2024-11-13 03:21:24'),
(7, '202411-00003', 9, 'Anaser dokan', 'Anas Ahmed', '01712345678', 'anaser dokan', '81dc9bdb52d04dc20036dbd8313ed055', 'uploads/vendors/7.png?v=1731448867', 1, 0, '2024-11-13 04:01:07', '2024-11-13 04:02:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart_list`
--
ALTER TABLE `cart_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `category_list`
--
ALTER TABLE `category_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vendor_id` (`vendor_id`);

--
-- Indexes for table `client_list`
--
ALTER TABLE `client_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `order_list`
--
ALTER TABLE `order_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `vendor_id` (`vendor_id`);

--
-- Indexes for table `product_list`
--
ALTER TABLE `product_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vendor_id` (`vendor_id`),
  ADD KEY `category_id` (`category_id`) USING BTREE;

--
-- Indexes for table `shop_type_list`
--
ALTER TABLE `shop_type_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendor_list`
--
ALTER TABLE `vendor_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_type_id` (`shop_type_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart_list`
--
ALTER TABLE `cart_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `category_list`
--
ALTER TABLE `category_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `client_list`
--
ALTER TABLE `client_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `order_list`
--
ALTER TABLE `order_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `product_list`
--
ALTER TABLE `product_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `shop_type_list`
--
ALTER TABLE `shop_type_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `vendor_list`
--
ALTER TABLE `vendor_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart_list`
--
ALTER TABLE `cart_list`
  ADD CONSTRAINT `cart_list_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `client_list` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_list_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product_list` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `category_list`
--
ALTER TABLE `category_list`
  ADD CONSTRAINT `category_list_ibfk_1` FOREIGN KEY (`vendor_id`) REFERENCES `vendor_list` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `order_list` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product_list` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_list`
--
ALTER TABLE `order_list`
  ADD CONSTRAINT `order_list_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `client_list` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_list_ibfk_2` FOREIGN KEY (`vendor_id`) REFERENCES `vendor_list` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_list`
--
ALTER TABLE `product_list`
  ADD CONSTRAINT `product_list_ibfk_1` FOREIGN KEY (`vendor_id`) REFERENCES `vendor_list` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `product_list_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `category_list` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vendor_list`
--
ALTER TABLE `vendor_list`
  ADD CONSTRAINT `vendor_list_ibfk_1` FOREIGN KEY (`shop_type_id`) REFERENCES `shop_type_list` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
