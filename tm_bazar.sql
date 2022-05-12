
CREATE TABLE `adress` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `adress_welayat_id` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





CREATE TABLE `adress_welayat` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




INSERT INTO `adress_welayat` (`id`, `name`) VALUES
(1, 'Aşgabat'),
(2, 'Daşoguz'),
(3, 'Ahal'),
(4, 'Mary'),
(5, 'Lebap'),
(6, 'Balkan');





CREATE TABLE `ads_admin` (
  `id` int(6) NOT NULL,
  `tertip_nomer` int(6) NOT NULL DEFAULT '0',
  `ads_type_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `ads_photo` varchar(250) NOT NULL DEFAULT ' ',
  `ads_description` text,
  `ads_descriptionRU` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





CREATE TABLE `ads_fromshops` (
  `id` int(11) NOT NULL,
  `tertip_nomer` int(11) NOT NULL DEFAULT '99999',
  `ads_type_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT '0',
  `ads_photo` varchar(250) CHARACTER SET utf8 DEFAULT ' ',
  `ads_description` text CHARACTER SET utf8,
  `ads_descriptionRU` text NOT NULL,
  `payment` tinyint(1) NOT NULL DEFAULT '0',
  `verify` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE `ads_type` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `ads_type` (`id`, `name`) VALUES
(1, 'Magazin harydy'),
(2, 'Hyzmat magazin harydy'),
(3, 'Surat'),
(4, 'Magazin'),
(5, 'Hyzmat magazin');




CREATE TABLE `arzanladysh_kart` (
  `id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `background_photo` varchar(250) NOT NULL,
  `prosent` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `ulanysh_duzguni` text NOT NULL,
  `srok_date` date NOT NULL,
  `doredilen_wagty` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





CREATE TABLE `arzanladysh_kart_user` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `arzanladysh_id` int(11) NOT NULL,
  `kod` varchar(250) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `summa` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `bolum_id` int(4) NOT NULL,
  `shop_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `ads_type_id` int(11) NOT NULL,
  `tertip_nomer` int(4) NOT NULL,
  `photo` text CHARACTER SET utf8mb4 NOT NULL,
  `route` varchar(250) CHARACTER SET utf8mb4 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





CREATE TABLE `bash_sahypa_reklama_dukan` (
  `id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `tertip_nomer` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





CREATE TABLE `bolum` (
  `id` int(11) NOT NULL,
  `bolum_name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `bolum_nameRU` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `tertip_nomer` int(4) DEFAULT '999',
  `visible` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;




INSERT INTO `bolum` (`id`, `bolum_name`, `bolum_nameRU`, `tertip_nomer`, `visible`) VALUES
(1, 'Hyzmat', 'Услуга', 999, 0),
(2, 'Restoran', 'Рестораны', 999, 0),
(3, 'Moda', 'Мода', 999, 0);





CREATE TABLE `bonus` (
  `id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `background_photo` varchar(250) NOT NULL,
  `bonus_prosent` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `ulanysh_duzguni` text NOT NULL,
  `mohleti` datetime NOT NULL,
  `doredilen_wagty` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





CREATE TABLE `bonus_bank` (
  `id` int(11) NOT NULL,
  `bonus_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `balans` double NOT NULL DEFAULT '0',
  `ulanylan_summa` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





CREATE TABLE `bonus_user` (
  `id` int(11) NOT NULL,
  `bonus_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





CREATE TABLE `brend` (
  `id` int(10) NOT NULL,
  `bolum_id` int(10) NOT NULL,
  `name` varchar(250) NOT NULL,
  `surat` varchar(250) NOT NULL,
  `esasy_sahypa` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `bolum_id` int(11) NOT NULL,
  `katalog_id` int(11) NOT NULL,
  `category_name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `category_nameRU` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `category_photo` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;






CREATE TABLE `chat_seller` (
  `id` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL,
  `from_seller` tinyint(1) NOT NULL,
  `text` text,
  `photo` varchar(250) DEFAULT NULL,
  `file` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





CREATE TABLE `collections` (
  `id` int(6) NOT NULL,
  `collection_name` varchar(250) NOT NULL,
  `collection_nameRU` varchar(250) DEFAULT NULL,
  `shop_id` int(10) NOT NULL,
  `collection_photo` varchar(250) DEFAULT NULL,
  `description` text,
  `descriptionRU` text,
  `visible` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





CREATE TABLE `collection_items` (
  `id` int(6) NOT NULL,
  `collection_id` int(6) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





CREATE TABLE `colors` (
  `id` int(11) NOT NULL,
  `color_name` varchar(250) NOT NULL,
  `cod_web` varchar(250) NOT NULL,
  `cod_mobile` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





CREATE TABLE `follow` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `shop_id` int(11) DEFAULT '0',
  `service_id` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;




CREATE TABLE `goldaw_gullugy` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `hat` text NOT NULL,
  `from_user` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





CREATE TABLE `katalog` (
  `id` int(11) NOT NULL,
  `bolum_id` int(11) NOT NULL,
  `katalog_name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `katalog_nameRU` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `katalog_photo` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `visible` tinyint(1) NOT NULL,
  `tertip_nomer` int(4) NOT NULL DEFAULT '9999'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;




CREATE TABLE `konkurs` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `private_konkurs` tinyint(1) NOT NULL DEFAULT '0',
  `description` text,
  `uslowiya` text,
  `surat` varchar(250) DEFAULT NULL,
  `min_users` int(11) NOT NULL DEFAULT '10',
  `magazin_sany` int(11) NOT NULL,
  `start_for_users` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





CREATE TABLE `konkurs_gatnashyjylar` (
  `id` int(11) NOT NULL,
  `konkurs_tertip_nomer` int(11) NOT NULL,
  `konkurs_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `kod` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





CREATE TABLE `konkurs_prize` (
  `id` int(11) NOT NULL,
  `konkurs_id` int(11) NOT NULL,
  `tertip_nomer` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL DEFAULT ' ',
  `type_id` int(11) NOT NULL,
  `photo` varchar(250) NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `bonus_id` int(11) NOT NULL DEFAULT '0',
  `arzanladysh_id` int(11) NOT NULL DEFAULT '0',
  `kupon_id` int(11) NOT NULL DEFAULT '0',
  `promokod_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





CREATE TABLE `konkurs_shops` (
  `id` int(11) NOT NULL,
  `konkurs_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `shop_code` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





CREATE TABLE `konkurs_type` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




INSERT INTO `konkurs_type` (`id`, `name`) VALUES
(1, 'haryt'),
(2, 'pul'),
(3, 'surat'),
(4, 'bonus'),
(5, 'arzanladysh'),
(6, 'kupon'),
(7, 'promokod');





CREATE TABLE `konkurs_winners` (
  `id` int(11) NOT NULL,
  `konkurs_id` int(11) NOT NULL,
  `prize_tertip_nomer` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `konkurs_prize_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





CREATE TABLE `kupon` (
  `id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `prosent` int(11) DEFAULT NULL,
  `pul` double DEFAULT '0',
  `ulanysh_duzguni` text NOT NULL,
  `doredilen_wagty` date NOT NULL,
  `srok` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





CREATE TABLE `kupon_user` (
  `id` int(11) NOT NULL,
  `kupon_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





CREATE TABLE `like_products` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





CREATE TABLE `like_service_product` (
  `id` int(11) NOT NULL,
  `service_product_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





CREATE TABLE `like_video` (
  `id` int(11) NOT NULL,
  `shop_video_id` int(11) DEFAULT '0',
  `service_video_id` int(11) DEFAULT '0',
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





CREATE TABLE `ondurijiler` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `photo` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `product_code` varchar(100) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `bolum_id` int(11) NOT NULL,
  `katalog_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `brend_id` int(11) NOT NULL,
  `product_name` varchar(250) NOT NULL,
  `description` text,
  `descriptionRU` varchar(250) DEFAULT NULL,
  `price` double NOT NULL,
  `usd_price` double DEFAULT '0',
  `old_price` double DEFAULT '0',
  `bahasy_uygyan` tinyint(1) NOT NULL DEFAULT '0',
  `aksiya` tinyint(1) DEFAULT '0',
  `aksiya_text` text,
  `arzanladys` tinyint(1) DEFAULT '0',
  `garasarna` tinyint(1) DEFAULT '0',
  `garasarna_time` datetime DEFAULT NULL,
  `rating_sum` int(11) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `sold` int(11) DEFAULT NULL,
  `seen` int(11) DEFAULT NULL,
  `likes` int(11) DEFAULT NULL,
  `colors_id` int(10) NOT NULL,
  `razmer` tinyint(1) NOT NULL,
  `count` int(11) DEFAULT '5',
  `modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `verify` tinyint(1) NOT NULL DEFAULT '0',
  `otkaz` tinyint(1) NOT NULL DEFAULT '0',
  `otkaz_tekst` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





CREATE TABLE `product_photo` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `photo` text NOT NULL,
  `esasy` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;





CREATE TABLE `promokod` (
  `id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `promo_kod` varchar(250) NOT NULL,
  `surat` varchar(250) NOT NULL,
  `pul_mukdary` double NOT NULL DEFAULT '0',
  `ulanysh_duzguni` text,
  `created_data` date NOT NULL,
  `count` int(11) NOT NULL,
  `srok` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





CREATE TABLE `promokod_user` (
  `id` int(11) NOT NULL,
  `promokod_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `used` tinyint(1) NOT NULL DEFAULT '0',
  `alan_senesi` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





CREATE TABLE `rating_products` (
  `id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL DEFAULT '0',
  `rating_count` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `rating_service_product` (
  `id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL DEFAULT '0',
  `rating_count` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





CREATE TABLE `rating_service_shops` (
  `id` int(10) NOT NULL,
  `sevice_shop_id` int(10) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rating_count` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





CREATE TABLE `rating_shops` (
  `id` int(10) NOT NULL,
  `shop_id` int(10) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rating_count` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





CREATE TABLE `reklama_6shops` (
  `id` int(4) NOT NULL,
  `bolum_id` int(4) NOT NULL,
  `katalog_id` int(4) NOT NULL DEFAULT '0',
  `shop_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;






CREATE TABLE `restoran_catalog` (
  `id` int(11) NOT NULL,
  `catalog_id` int(11) NOT NULL,
  `restoran_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





CREATE TABLE `sargytlar` (
  `id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status_id` int(1) NOT NULL DEFAULT '1',
  `user_adress_id` int(11) NOT NULL,
  `dostawka` tinyint(1) NOT NULL DEFAULT '1',
  `toleg_gornushi` int(11) NOT NULL,
  `bellik` text,
  `sargyt_kody` varchar(100) NOT NULL,
  `haryt_sany` int(11) NOT NULL,
  `umumy_summa` double NOT NULL,
  `arzanladysh_summa` double DEFAULT NULL,
  `arzanladysh_kart` double DEFAULT NULL,
  `kupon` double DEFAULT NULL,
  `bonus_kart` double DEFAULT NULL,
  `promokod` double DEFAULT NULL,
  `dostawka_tolegi` double DEFAULT NULL,
  `jemi_summa` double NOT NULL,
  `bonus_id` int(11) DEFAULT NULL,
  `kupon_id` int(11) DEFAULT NULL,
  `arzanladysh_id` int(11) DEFAULT NULL,
  `promokod_id` int(11) DEFAULT NULL,
  `wagty` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





CREATE TABLE `sargyt_produkt` (
  `id` int(11) NOT NULL,
  `sargytlar_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





CREATE TABLE `sargyt_status` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




INSERT INTO `sargyt_status` (`id`, `name`) VALUES
(1, 'Garaşylýar'),
(2, 'Tassyklandy'),
(3, 'Eltip berildi'),
(4, 'Inkär edildi');





CREATE TABLE `saylanan` (
  `id` int(6) NOT NULL,
  `header_text` varchar(250) NOT NULL,
  `header_textRU` varchar(250) NOT NULL,
  `label_text` varchar(250) NOT NULL,
  `label_textRU` varchar(250) NOT NULL,
  `photo` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





CREATE TABLE `saylanan_items` (
  `id` int(6) NOT NULL,
  `saylanan_id` int(6) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





CREATE TABLE `sellers` (
  `id` int(10) NOT NULL,
  `login` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `type_shop` tinyint(1) NOT NULL DEFAULT '1',
  `shop_id` int(11) NOT NULL,
  `service_shop_id` int(11) NOT NULL DEFAULT '0',
  `Access` tinyint(1) NOT NULL DEFAULT '0',
  `kurs` tinyint(1) NOT NULL DEFAULT '0',
  `owner_name_familya` varchar(250) DEFAULT NULL,
  `owners_phone` varchar(20) NOT NULL,
  `jynsy` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




INSERT INTO `sellers` (`id`, `login`, `password`, `type_shop`, `shop_id`, `service_shop_id`, `Access`, `kurs`, `owner_name_familya`, `owners_phone`, `jynsy`) VALUES
(1, 'jasur', 'jasur', 1, 1, 0, 0, 0, 'Ashyrbayew Jasurbek', '65431571', 'erkek');





CREATE TABLE `service_banner` (
  `id` int(11) NOT NULL,
  `service_shop_id` int(11) NOT NULL,
  `verified_photo` varchar(250) DEFAULT NULL,
  `photo` varchar(250) DEFAULT NULL,
  `verify` tinyint(1) NOT NULL DEFAULT '0',
  `modified` tinyint(1) DEFAULT '0',
  `otkaz` tinyint(1) NOT NULL DEFAULT '0',
  `otkaz_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





CREATE TABLE `service_catalog` (
  `id` int(11) NOT NULL,
  `bolum_id` int(11) NOT NULL,
  `katalog_id` int(6) NOT NULL,
  `service_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





CREATE TABLE `service_product` (
  `id` int(11) NOT NULL,
  `catalog_id` int(6) NOT NULL,
  `service_id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `nameRU` varchar(250) DEFAULT NULL,
  `description` text,
  `descriptionRU` text,
  `price` double DEFAULT NULL,
  `like_num` int(11) DEFAULT NULL,
  `rate` int(11) DEFAULT NULL,
  `vip` tinyint(1) NOT NULL DEFAULT '0',
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `otkaz` tinyint(1) NOT NULL DEFAULT '0',
  `otkaz_text` text,
  `verify` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





CREATE TABLE `service_product_photo` (
  `id` int(11) NOT NULL,
  `service_product_id` int(11) NOT NULL,
  `photo` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





CREATE TABLE `service_shops` (
  `id` int(11) NOT NULL,
  `service_shops_name` varchar(60) CHARACTER SET utf8mb4 NOT NULL,
  `adress_id` int(11) NOT NULL,
  `salgy` varchar(250) NOT NULL,
  `phonee` varchar(250) NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `website` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `photo` text CHARACTER SET utf8mb4 NOT NULL,
  `description` text CHARACTER SET utf8mb4 NOT NULL,
  `created_date` datetime NOT NULL,
  `vip`  tinyint(1) NOT NULL DEFAULT '0',
  `modified_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `verify` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `service_shop_top3_product` (
  `id` int(11) NOT NULL,
  `service_shop_id` int(11) NOT NULL,
  `service_product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





CREATE TABLE `service_videos` (
  `id` int(11) NOT NULL,
  `service_shop_id` int(11) NOT NULL,
  `video` varchar(250) NOT NULL,
  `fon_photo` varchar(250) NOT NULL,
  `name` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `nameRU` varchar(250) DEFAULT NULL,
  `descriptionRU` text,
  `like_count` int(11) NOT NULL,
  `goren_sany` int(11) DEFAULT NULL,
  `created_date` date NOT NULL,
  `verify` tinyint(1) NOT NULL DEFAULT '0',
  `otkaz` tinyint(1) NOT NULL DEFAULT '0',
  `otkaz_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





CREATE TABLE `shop` (
  `id` int(11) NOT NULL,
  `shop_center_id` int(11) DEFAULT NULL,
  `Restoran` tinyint(1) DEFAULT '0',
  `shop_name` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `description` text CHARACTER SET utf8mb4 NOT NULL,
  `phones` varchar(250) CHARACTER SET utf8mb4 NOT NULL,
  `address_id` int(11) NOT NULL,
  `salgy` varchar(250) NOT NULL,
  `photo` varchar(200) CHARACTER SET utf8mb4 NOT NULL,
  `created_data` date NOT NULL,
  `modified_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `email` varchar(100) DEFAULT NULL,
  `website` varchar(50) DEFAULT NULL,
  `vip` tinyint(1) NOT NULL DEFAULT '0',
  `brend` tinyint(1) NOT NULL DEFAULT '0',
  `dostawka` tinyint(1) NOT NULL DEFAULT '1',
  `mugt_dostawka` tinyint(1) NOT NULL DEFAULT '0',
  `minimal_zakaz` int(6) DEFAULT NULL,
  `dostawka_tolegi` int(4) DEFAULT NULL,
  `gelip_almak` tinyint(1) NOT NULL DEFAULT '1',
  `kart_toleg` tinyint(1) NOT NULL DEFAULT '0',
  `verify` tinyint(1) NOT NULL DEFAULT '0',
  `modified` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





CREATE TABLE `shop_banner` (
  `id` int(6) NOT NULL,
  `shop_id` int(6) DEFAULT '0',
  `verified_photo` varchar(250) NOT NULL,
  `photo` varchar(250) DEFAULT NULL,
  `verify` tinyint(1) NOT NULL DEFAULT '0',
  `modified` tinyint(1) DEFAULT '0',
  `otkaz` tinyint(1) NOT NULL DEFAULT '0',
  `otkaz_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





CREATE TABLE `shop_bolum` (
  `id` int(11) NOT NULL,
  `bolum_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;





CREATE TABLE `shop_category` (
  `id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `katalog_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `photo` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;





CREATE TABLE `shop_center` (
  `id` int(11) NOT NULL,
  `shop_center_name` varchar(250) CHARACTER SET utf8 NOT NULL,
  `address` text CHARACTER SET utf8,
  `photo` varchar(250) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;






CREATE TABLE `shop_katalog` (
  `id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `katalog_id` int(11) NOT NULL,
  `shop_katalog_photo` varchar(250) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE `shop_lenta` (
  `id` int(11) NOT NULL,
  `shop_id` int(10) NOT NULL,
  `description` text CHARACTER SET utf8,
  `surat` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_date` date NOT NULL,
  `verify` tinyint(1) NOT NULL DEFAULT '0',
  `modified` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;





CREATE TABLE `shop_subcategory` (
  `id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `katalog_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `shop_subcategory_photo` varchar(250) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;





CREATE TABLE `shop_top3_product` (
  `id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





CREATE TABLE `shop_videos` (
  `id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `video` varchar(250) NOT NULL,
  `fon_photo` varchar(250) NOT NULL,
  `name` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `nameRU` varchar(250) NOT NULL,
  `descriptionRU` text NOT NULL,
  `like_count` int(11) DEFAULT NULL,
  `goren_sany` int(11) DEFAULT NULL,
  `created_date` date NOT NULL,
  `verify` tinyint(1) NOT NULL DEFAULT '0',
  `otkaz` tinyint(1) NOT NULL DEFAULT '0',
  `otkaz_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





CREATE TABLE `size` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `sizes_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE `sizes` (
  `id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `bolum_id` int(11) NOT NULL,
  `katalog_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_name` varchar(100) NOT NULL,
  `subcategory_nameRU` varchar(250) NOT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;




CREATE TABLE `sup_adm` (
  `name` varchar(15) NOT NULL,
  `password` varchar(200) NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;




INSERT INTO `sup_adm` (`name`, `password`, `type`) VALUES
('murad', '$2b$10$TEEs1sbwCSgZgx1M4X/fvONuCjvAgnanes3oMf.Fd7/cpqp8xoLxe', 0);





CREATE TABLE `tazelik` (
  `id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `service_shop_id` int(11) NOT NULL,
  `name_header` varchar(250) NOT NULL,
  `name_headerRU` varchar(250) NOT NULL,
  `name` varchar(250) NOT NULL,
  `nameRU` varchar(250) NOT NULL,
  `description_header` text NOT NULL,
  `description_headerRU` text NOT NULL,
  `description` text NOT NULL,
  `descriptionRU` text NOT NULL,
  `created_data` date NOT NULL,
  `gorulen_sany` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





CREATE TABLE `tazelik_photo` (
  `id` int(11) NOT NULL,
  `tazelik_id` int(11) NOT NULL,
  `photo` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





CREATE TABLE `teklipler` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `teklip` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





CREATE TABLE `teklipler_shop` (
  `id` int(11) NOT NULL,
  `titul` varchar(250) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





CREATE TABLE `toleg_gornushi` (
  `id` int(2) NOT NULL,
  `name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




INSERT INTO `toleg_gornushi` (`id`, `name`) VALUES
(1, 'Nagt'),
(2, 'Bank kart');





CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `tel` varchar(12) NOT NULL,
  `adress_welayat_id` int(11) NOT NULL,
  `jynsy` varchar(50) NOT NULL,
  `register_kod` varchar(250) NOT NULL,
  `tapawutlanan` tinyint(1) NOT NULL DEFAULT '0',
  `bloklanan` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;




CREATE TABLE `user_adress` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `adress_id` int(11) NOT NULL,
  `adress_koche` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





CREATE TABLE `zurnal` (
  `id` int(6) NOT NULL,
  `name` varchar(250) NOT NULL,
  `nameRU` varchar(250) NOT NULL,
  `photo` varchar(250) NOT NULL,
  `shop_tm` tinyint(1) NOT NULL DEFAULT '0',
  `shop_id` int(11) NOT NULL,
  `our_logo` varchar(250) NOT NULL,
  `our_name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





CREATE TABLE `zurnal_items` (
  `id` int(10) NOT NULL,
  `zurnal_id` int(6) NOT NULL,
  `name` varchar(250) NOT NULL,
  `nameRU` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `descriptionRU` text NOT NULL,
  `photo` varchar(250) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


create table sms_apps(
    id int(10) NOT NULL,
    device_name text not null,
    fcm_token text not null
);

create table verif(
    id int(11) AUTO_INCREMENT primary key,
    tel text,
    code text,
    timee int(11)
);


ALTER TABLE `sms_apps`
  ADD PRIMARY KEY (`id`);

ALTER TABLE sms_apps MODIFY id int NOT NULL AUTO_INCREMENT;






ALTER TABLE `adress`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Adress_id` (`adress_welayat_id`);



ALTER TABLE `adress_welayat`
  ADD PRIMARY KEY (`id`);



ALTER TABLE `ads_admin`
  ADD PRIMARY KEY (`id`);



ALTER TABLE `ads_fromshops`
  ADD PRIMARY KEY (`id`);



ALTER TABLE `ads_type`
  ADD PRIMARY KEY (`id`);



ALTER TABLE `arzanladysh_kart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_key` (`shop_id`);



ALTER TABLE `arzanladysh_kart_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_key` (`user_id`),
  ADD KEY `arz_key` (`arzanladysh_id`);



ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);



ALTER TABLE `bash_sahypa_reklama_dukan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tertip_nomer` (`tertip_nomer`);



ALTER TABLE `bolum`
  ADD PRIMARY KEY (`id`);



ALTER TABLE `bonus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shops_pkey` (`shop_id`);



ALTER TABLE `bonus_bank`
  ADD KEY `shops_key` (`bonus_id`),
  ADD KEY `user_idk` (`user_id`);



ALTER TABLE `bonus_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_key` (`user_id`),
  ADD KEY `bonus_idk` (`bonus_id`);



ALTER TABLE `brend`
  ADD PRIMARY KEY (`id`);



ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);



ALTER TABLE `chat_seller`
  ADD PRIMARY KEY (`id`);



ALTER TABLE `collections`
  ADD PRIMARY KEY (`id`);



ALTER TABLE `collection_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `collection_idk` (`collection_id`);



ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);



ALTER TABLE `follow`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_idkk` (`user_id`);



ALTER TABLE `goldaw_gullugy`
  ADD PRIMARY KEY (`id`);



ALTER TABLE `katalog`
  ADD PRIMARY KEY (`id`);



ALTER TABLE `konkurs`
  ADD PRIMARY KEY (`id`);



ALTER TABLE `konkurs_gatnashyjylar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_ikk` (`user_id`),
  ADD KEY `konkurs_idk` (`konkurs_id`);



ALTER TABLE `konkurs_prize`
  ADD PRIMARY KEY (`id`),
  ADD KEY `konkurs_id` (`konkurs_id`),
  ADD KEY `type_id` (`type_id`),
  ADD KEY `shops_id` (`shop_id`);



ALTER TABLE `konkurs_shops`
  ADD PRIMARY KEY (`id`),
  ADD KEY `konkurs_ik` (`konkurs_id`),
  ADD KEY `shop_ids` (`shop_id`);



ALTER TABLE `konkurs_type`
  ADD PRIMARY KEY (`id`);



ALTER TABLE `konkurs_winners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `konkurss_id` (`konkurs_id`);



ALTER TABLE `kupon`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shopsss_id` (`shop_id`);



ALTER TABLE `kupon_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userk_key` (`user_id`),
  ADD KEY `kupon_id` (`kupon_id`);



ALTER TABLE `like_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `produt_key` (`product_id`);



ALTER TABLE `like_service_product`
  ADD PRIMARY KEY (`id`);



ALTER TABLE `like_video`
  ADD PRIMARY KEY (`id`);



ALTER TABLE `ondurijiler`
  ADD PRIMARY KEY (`id`);



ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_code` (`shop_id`);



ALTER TABLE `product_photo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_keyk` (`product_id`),
  ADD KEY `shpss_id` (`shop_id`);



ALTER TABLE `promokod`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sho_id` (`shop_id`);



ALTER TABLE `promokod_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userp_key` (`user_id`),
  ADD KEY `promokod_id` (`promokod_id`);



ALTER TABLE `rating_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_key` (`product_id`);



ALTER TABLE `rating_service_shops`
  ADD PRIMARY KEY (`id`);



ALTER TABLE `rating_shops`
  ADD PRIMARY KEY (`id`);



ALTER TABLE `reklama_6shops`
  ADD PRIMARY KEY (`id`);



ALTER TABLE `restoran_catalog`
  ADD PRIMARY KEY (`id`);



ALTER TABLE `sargytlar`
  ADD PRIMARY KEY (`id`);



ALTER TABLE `sargyt_produkt`
  ADD PRIMARY KEY (`id`);



ALTER TABLE `sargyt_status`
  ADD PRIMARY KEY (`id`);



ALTER TABLE `saylanan`
  ADD PRIMARY KEY (`id`);



ALTER TABLE `saylanan_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `saylanan_id` (`saylanan_id`),
  ADD KEY `prodct_key` (`product_id`);



ALTER TABLE `sellers`
  ADD PRIMARY KEY (`id`);



ALTER TABLE `service_banner`
  ADD PRIMARY KEY (`id`);



ALTER TABLE `service_catalog`
  ADD PRIMARY KEY (`id`);



ALTER TABLE `service_product`
  ADD PRIMARY KEY (`id`);



ALTER TABLE `service_product_photo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_product_id` (`service_product_id`);



ALTER TABLE `service_shops`
  ADD PRIMARY KEY (`id`);



ALTER TABLE `service_shop_top3_product`
  ADD PRIMARY KEY (`id`);



ALTER TABLE `service_videos`
  ADD PRIMARY KEY (`id`);



ALTER TABLE `shop`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `shop_name` (`shop_name`);



ALTER TABLE `shop_banner`
  ADD PRIMARY KEY (`id`);



ALTER TABLE `shop_bolum`
  ADD PRIMARY KEY (`id`);



ALTER TABLE `shop_category`
  ADD PRIMARY KEY (`id`);



ALTER TABLE `shop_center`
  ADD PRIMARY KEY (`id`);



ALTER TABLE `shop_katalog`
  ADD PRIMARY KEY (`id`);



ALTER TABLE `shop_lenta`
  ADD PRIMARY KEY (`id`);



ALTER TABLE `shop_subcategory`
  ADD PRIMARY KEY (`id`);



ALTER TABLE `shop_top3_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sph_k` (`shop_id`),
  ADD KEY `productp_key` (`product_id`);



ALTER TABLE `shop_videos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sh_k` (`shop_id`);



ALTER TABLE `size`
  ADD PRIMARY KEY (`id`);



ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);



ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);



ALTER TABLE `tazelik`
  ADD PRIMARY KEY (`id`);



ALTER TABLE `tazelik_photo`
  ADD PRIMARY KEY (`id`);



ALTER TABLE `teklipler`
  ADD PRIMARY KEY (`id`);



ALTER TABLE `teklipler_shop`
  ADD PRIMARY KEY (`id`);



ALTER TABLE `toleg_gornushi`
  ADD PRIMARY KEY (`id`);



ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);



ALTER TABLE `user_adress`
  ADD PRIMARY KEY (`id`);



ALTER TABLE `zurnal`
  ADD PRIMARY KEY (`id`);



ALTER TABLE `zurnal_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zurnal_id` (`zurnal_id`);






ALTER TABLE `adress`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;



ALTER TABLE `adress_welayat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;



ALTER TABLE `ads_admin`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;



ALTER TABLE `ads_fromshops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;



ALTER TABLE `ads_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;



ALTER TABLE `arzanladysh_kart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;



ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;



ALTER TABLE `bash_sahypa_reklama_dukan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;



ALTER TABLE `bolum`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;



ALTER TABLE `bonus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;



ALTER TABLE `bonus_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;



ALTER TABLE `brend`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;



ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;



ALTER TABLE `chat_seller`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;



ALTER TABLE `collections`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;



ALTER TABLE `collection_items`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;



ALTER TABLE `colors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;



ALTER TABLE `follow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;



ALTER TABLE `goldaw_gullugy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;



ALTER TABLE `katalog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;



ALTER TABLE `konkurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;



ALTER TABLE `konkurs_gatnashyjylar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;



ALTER TABLE `konkurs_prize`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;



ALTER TABLE `konkurs_shops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;



ALTER TABLE `konkurs_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;



ALTER TABLE `konkurs_winners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;



ALTER TABLE `kupon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;



ALTER TABLE `kupon_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;



ALTER TABLE `like_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;



ALTER TABLE `like_service_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;



ALTER TABLE `like_video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;



ALTER TABLE `ondurijiler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;



ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;



ALTER TABLE `product_photo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;



ALTER TABLE `promokod`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;



ALTER TABLE `promokod_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;



ALTER TABLE `rating_products`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;



ALTER TABLE `rating_service_shops`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;



ALTER TABLE `rating_shops`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;



ALTER TABLE `reklama_6shops`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;



ALTER TABLE `restoran_catalog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;



ALTER TABLE `sargytlar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;



ALTER TABLE `sargyt_produkt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;



ALTER TABLE `sargyt_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;



ALTER TABLE `saylanan`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;



ALTER TABLE `saylanan_items`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;



ALTER TABLE `sellers`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;



ALTER TABLE `service_banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;



ALTER TABLE `service_catalog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;



ALTER TABLE `service_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;



ALTER TABLE `service_product_photo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;



ALTER TABLE `service_shops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;



ALTER TABLE `service_shop_top3_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;



ALTER TABLE `service_videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;



ALTER TABLE `shop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;



ALTER TABLE `shop_banner`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;



ALTER TABLE `shop_bolum`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;



ALTER TABLE `shop_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;



ALTER TABLE `shop_center`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;



ALTER TABLE `shop_katalog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;



ALTER TABLE `shop_subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;



ALTER TABLE `shop_top3_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;



ALTER TABLE `shop_videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;



ALTER TABLE `size`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;



ALTER TABLE `sizes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;



ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;



ALTER TABLE `tazelik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;



ALTER TABLE `tazelik_photo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;



ALTER TABLE `teklipler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;



ALTER TABLE `teklipler_shop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;



ALTER TABLE `toleg_gornushi`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;



ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;



ALTER TABLE `user_adress`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;



ALTER TABLE `zurnal`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;



ALTER TABLE `zurnal_items`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;






ALTER TABLE `adress`
  ADD CONSTRAINT `Adress_id` FOREIGN KEY (`adress_welayat_id`) REFERENCES `adress_welayat` (`id`);



ALTER TABLE `arzanladysh_kart`
  ADD CONSTRAINT `shop_key` FOREIGN KEY (`shop_id`) REFERENCES `shop` (`id`) ON DELETE CASCADE;



ALTER TABLE `arzanladysh_kart_user`
  ADD CONSTRAINT `arz_key` FOREIGN KEY (`arzanladysh_id`) REFERENCES `arzanladysh_kart` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_key` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;



ALTER TABLE `bonus`
  ADD CONSTRAINT `shops_pkey` FOREIGN KEY (`shop_id`) REFERENCES `shop` (`id`) ON DELETE CASCADE;



ALTER TABLE `bonus_bank`
  ADD CONSTRAINT `shops_key` FOREIGN KEY (`bonus_id`) REFERENCES `shop` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_idk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;



ALTER TABLE `bonus_user`
  ADD CONSTRAINT `bonus_idk` FOREIGN KEY (`bonus_id`) REFERENCES `bonus` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_key` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;



ALTER TABLE `collection_items`
  ADD CONSTRAINT `collection_idk` FOREIGN KEY (`collection_id`) REFERENCES `collections` (`id`) ON DELETE CASCADE;



ALTER TABLE `follow`
  ADD CONSTRAINT `user_idkk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;



ALTER TABLE `konkurs_gatnashyjylar`
  ADD CONSTRAINT `konkurs_idk` FOREIGN KEY (`konkurs_id`) REFERENCES `konkurs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_ikk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;



ALTER TABLE `konkurs_prize`
  ADD CONSTRAINT `konkurs_id` FOREIGN KEY (`konkurs_id`) REFERENCES `konkurs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `shops_id` FOREIGN KEY (`shop_id`) REFERENCES `shop` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `shopss_id` FOREIGN KEY (`shop_id`) REFERENCES `shop` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `type_id` FOREIGN KEY (`type_id`) REFERENCES `konkurs_type` (`id`) ON DELETE CASCADE;



ALTER TABLE `konkurs_shops`
  ADD CONSTRAINT `konkurs_ik` FOREIGN KEY (`konkurs_id`) REFERENCES `konkurs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `shop_ids` FOREIGN KEY (`shop_id`) REFERENCES `shop` (`id`) ON DELETE CASCADE;



ALTER TABLE `konkurs_winners`
  ADD CONSTRAINT `konkurss_id` FOREIGN KEY (`konkurs_id`) REFERENCES `konkurs` (`id`) ON DELETE CASCADE;



ALTER TABLE `kupon`
  ADD CONSTRAINT `shopsss_id` FOREIGN KEY (`shop_id`) REFERENCES `shop` (`id`) ON DELETE CASCADE;



ALTER TABLE `kupon_user`
  ADD CONSTRAINT `kupon_id` FOREIGN KEY (`kupon_id`) REFERENCES `kupon` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `userk_key` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;



ALTER TABLE `like_products`
  ADD CONSTRAINT `produt_key` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE;



ALTER TABLE `product`
  ADD CONSTRAINT `product_code` FOREIGN KEY (`shop_id`) REFERENCES `shop` (`id`) ON DELETE CASCADE;



ALTER TABLE `product_photo`
  ADD CONSTRAINT `product_keyk` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `shpss_id` FOREIGN KEY (`shop_id`) REFERENCES `shop` (`id`) ON DELETE CASCADE;



ALTER TABLE `promokod`
  ADD CONSTRAINT `sho_id` FOREIGN KEY (`shop_id`) REFERENCES `shop` (`id`) ON DELETE CASCADE;



ALTER TABLE `promokod_user`
  ADD CONSTRAINT `promokod_id` FOREIGN KEY (`promokod_id`) REFERENCES `promokod` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `userp_key` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;



ALTER TABLE `rating_products`
  ADD CONSTRAINT `product_key` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE;



ALTER TABLE `saylanan_items`
  ADD CONSTRAINT `prodct_key` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `saylanan_id` FOREIGN KEY (`saylanan_id`) REFERENCES `saylanan` (`id`) ON DELETE CASCADE;



ALTER TABLE `service_product_photo`
  ADD CONSTRAINT `service_product_id` FOREIGN KEY (`service_product_id`) REFERENCES `service_product` (`id`) ON DELETE CASCADE;



ALTER TABLE `shop_top3_product`
  ADD CONSTRAINT `productp_key` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sph_k` FOREIGN KEY (`shop_id`) REFERENCES `shop` (`id`) ON DELETE CASCADE;



ALTER TABLE `shop_videos`
  ADD CONSTRAINT `sh_k` FOREIGN KEY (`shop_id`) REFERENCES `shop` (`id`) ON DELETE CASCADE;



ALTER TABLE `zurnal_items`
  ADD CONSTRAINT `zurnal_id` FOREIGN KEY (`zurnal_id`) REFERENCES `zurnal` (`id`) ON DELETE CASCADE;
