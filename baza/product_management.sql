/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100408
 Source Host           : localhost:3306
 Source Schema         : product_management

 Target Server Type    : MySQL
 Target Server Version : 100408
 File Encoding         : 65001

 Date: 06/07/2021 13:11:21
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer`  (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `last_name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `phone_number` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `email` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`customer_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES (3, 'Zorana', 'Krsmanovic', 'Cara Dusana 68', '60097', 'zzzoranakrsmanovic@gmai');
INSERT INTO `customer` VALUES (4, 'test', 'test', 'Neka adr', '012345677', 'test@gmail.com');
INSERT INTO `customer` VALUES (5, 'testkjlj', 'test', 'Neka adr', '012345677', 'test@gmail.com');
INSERT INTO `customer` VALUES (7, 'Jelena', 'Sekulic', 'Zarka Zrenjanina 68 , 23000 Zrenjanin', '+381600977297', 'nevenapesic@gmai.com');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `merchandiser` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `price` double NULL DEFAULT NULL,
  `product_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `product_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `units_in_stock` int(11) NULL DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `places` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dimensions` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`product_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (11, 'Srbija', 'Doggy kolekcija je izrađena od čvrstog i kvalitetnog materijala, što je neophodnost kada je izrada kreveta i jastuka u pitanju. Zadržali smo dizajn koji najviše volite, sa koskom koja im predstavlja i igračku i jastuk, i bojama koje su pravo osveženje naš', 'Duvo+', 23, 'assets\\product\\slika1.jpg', 'Krevet DOGGY lux', 23, '8DVf34', 'Zrenjanin', '30X40');
INSERT INTO `product` VALUES (14, 'Srbija', 'Doggy kolekcija je izrađena od čvrstog i kvalitetnog materijala, što je neophodnost kada je izrada kreveta i jastuka u pitanju. Zadržali smo dizajn koji najviše volite, sa koskom koja im predstavlja i igračku i jastuk, i bojama koje su pravo osveženje naš', 'Duvo+', 34, 'assets\\product\\slika4.jpg', 'Krevet DOGGY lg', 43, '23DCFy', 'Beograd', '60X70');
INSERT INTO `product` VALUES (15, 'Srbija', 'Doggy kolekcija je izrađena od čvrstog i kvalitetnog materijala, što je neophodnost kada je izrada kreveta i jastuka u pitanju. Zadržali smo dizajn koji najviše volite, sa koskom koja im predstavlja i igračku i jastuk, i bojama koje su pravo osveženje naš', 'Duvo+', 45, 'assets\\product\\slika5.jpg', 'Krevet DOGGY +', 45, '6RDF3e', 'Zrenjanin', '60X70');
INSERT INTO `product` VALUES (16, 'Srbija', 'Doggy kolekcija je izrađena od čvrstog i kvalitetnog materijala, što je neophodnost kada je izrada kreveta i jastuka u pitanju. Zadržali smo dizajn koji najviše volite, sa koskom koja im predstavlja i igračku i jastuk, i bojama koje su pravo osveženje naš', 'Dogs+', 45, 'assets\\product\\slika6.png', 'Plasticni krevet izmenjen +', 45, '6RDF7e', 'Zrenjanin', '60X70');

-- ----------------------------
-- Table structure for supplier
-- ----------------------------
DROP TABLE IF EXISTS `supplier`;
CREATE TABLE `supplier`  (
  `supplier_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `bill` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `phone_number` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `email` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`supplier_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of supplier
-- ----------------------------
INSERT INTO `supplier` VALUES (2, 'Dogs&Cats', 'U poslovanju', '252 84494940339 0', '+381698766543', 'dogs@gmail.com');
INSERT INTO `supplier` VALUES (4, 'Dogs&Cats', 'U poslovanju', '252 84494940339 0', '600977297', 'zzzoranakrsmanovic@gmail.com');

-- ----------------------------
-- Table structure for supplier_product
-- ----------------------------
DROP TABLE IF EXISTS `supplier_product`;
CREATE TABLE `supplier_product`  (
  `supplier_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `supplier_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`supplier_product_id`) USING BTREE,
  INDEX `fk_supplier_product_supplier_id`(`supplier_id`) USING BTREE,
  INDEX `fk_supplier_product_product_id`(`product_id`) USING BTREE,
  CONSTRAINT `fk_supplier_product_product_id` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_supplier_product_supplier_id` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`supplier_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'test@gmail.com', 'test');

SET FOREIGN_KEY_CHECKS = 1;
