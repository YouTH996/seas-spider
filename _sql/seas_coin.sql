/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80028
 Source Host           : localhost:3306
 Source Schema         : seas

 Target Server Type    : MySQL
 Target Server Version : 80028
 File Encoding         : 65001

 Date: 04/07/2022 16:59:54
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for seas_coin
-- ----------------------------
DROP TABLE IF EXISTS `seas_coin`;
CREATE TABLE `seas_coin`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `coin_id` bigint(0) NULL DEFAULT NULL COMMENT '币ID',
  `coin_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '链接',
  `auction_starting_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '起始价(USD)',
  `last_trade_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '最后成交价(USD)',
  `max_quoted_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '最高标价(USD)',
  `auction_end_time` datetime(0) NULL DEFAULT NULL COMMENT '拍卖结束时间',
  `create_date` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代币表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of seas_coin
-- ----------------------------
INSERT INTO `seas_coin` VALUES (1, 5449, 'https://7seasnft.com/product-details-v1-5449', 290000.00, 290000.00, NULL, '2022-07-04 22:43:58', '2022-07-04 16:49:58');
INSERT INTO `seas_coin` VALUES (2, 4616, 'https://7seasnft.com/product-details-v1-4616', 277185.97, 277185.97, NULL, '2022-07-05 05:55:44', '2022-07-04 16:50:08');
INSERT INTO `seas_coin` VALUES (3, 4477, 'https://7seasnft.com/product-details-v1-4477', 179000.00, 179156.25, 187950.00, '2022-07-04 22:22:36', '2022-07-04 16:50:10');
INSERT INTO `seas_coin` VALUES (4, 4397, 'https://7seasnft.com/product-details-v1-4397', 195000.00, 195000.00, NULL, '2022-07-05 12:05:09', '2022-07-04 16:50:11');
INSERT INTO `seas_coin` VALUES (5, 556, 'https://7seasnft.com/product-details-v1-556', 1000000.00, 1000000.00, NULL, '2022-07-05 15:16:23', '2022-07-04 16:50:12');
INSERT INTO `seas_coin` VALUES (6, 4450, 'https://7seasnft.com/product-details-v1-4450', 147480.00, 159282.00, NULL, '2022-07-05 08:54:25', '2022-07-04 16:50:14');
INSERT INTO `seas_coin` VALUES (7, 3874, 'https://7seasnft.com/product-details-v1-3874', 283700.00, 283700.00, NULL, '2022-07-04 21:21:14', '2022-07-04 16:50:15');
INSERT INTO `seas_coin` VALUES (8, 9869, 'https://7seasnft.com/product-details-v1-9869', 140018.00, 140018.00, NULL, '2022-07-04 20:41:59', '2022-07-04 16:50:17');
INSERT INTO `seas_coin` VALUES (9, 7522, 'https://7seasnft.com/product-details-v1-7522', 371800.00, 371800.00, NULL, '2022-07-05 11:00:18', '2022-07-04 16:50:18');
INSERT INTO `seas_coin` VALUES (10, 7019, 'https://7seasnft.com/product-details-v1-7019', 63000.00, 91009.00, NULL, '2022-07-05 14:58:34', '2022-07-04 16:50:19');
INSERT INTO `seas_coin` VALUES (11, 4429, 'https://7seasnft.com/product-details-v1-4429', 154000.00, 154000.00, NULL, '2022-07-05 06:03:53', '2022-07-04 16:50:19');
INSERT INTO `seas_coin` VALUES (12, 6373, 'https://7seasnft.com/product-details-v1-6373', 199488.00, 199500.00, NULL, '2022-07-05 16:18:23', '2022-07-04 16:50:20');
INSERT INTO `seas_coin` VALUES (13, 5764, 'https://7seasnft.com/product-details-v1-5764', 257700.00, 257700.00, NULL, '2022-07-05 03:12:33', '2022-07-04 16:50:20');
INSERT INTO `seas_coin` VALUES (14, 4272, 'https://7seasnft.com/product-details-v1-4272', 177378.00, 177378.00, 197422.00, '2022-07-04 18:51:04', '2022-07-04 16:50:20');
INSERT INTO `seas_coin` VALUES (15, 4732, 'https://7seasnft.com/product-details-v1-4732', 169000.00, 169000.00, NULL, '2022-07-05 11:58:13', '2022-07-04 16:50:21');
INSERT INTO `seas_coin` VALUES (16, 2252, 'https://7seasnft.com/product-details-v1-2252', 119700.00, 119700.00, 125685.00, '2022-07-05 10:50:28', '2022-07-04 16:50:22');
INSERT INTO `seas_coin` VALUES (17, 10041, 'https://7seasnft.com/product-details-v1-10041', 171429.00, 180001.00, 180001.00, '2022-07-05 11:38:25', '2022-07-04 16:50:23');
INSERT INTO `seas_coin` VALUES (18, 7780, 'https://7seasnft.com/product-details-v1-7780', 111800.00, 111800.00, NULL, '2022-07-05 00:56:37', '2022-07-04 16:50:23');
INSERT INTO `seas_coin` VALUES (19, 8835, 'https://7seasnft.com/product-details-v1-8835', 130999.00, 130999.10, 170298.00, '2022-07-05 12:55:54', '2022-07-04 16:50:47');
INSERT INTO `seas_coin` VALUES (20, 3299, 'https://7seasnft.com/product-details-v1-3299', 161970.00, 161970.00, 170070.00, '2022-07-04 20:12:34', '2022-07-04 16:50:48');
INSERT INTO `seas_coin` VALUES (21, 6158, 'https://7seasnft.com/product-details-v1-6158', 160000.00, 165375.00, 170000.00, '2022-07-04 18:53:05', '2022-07-04 16:50:48');
INSERT INTO `seas_coin` VALUES (22, 6825, 'https://7seasnft.com/product-details-v1-6825', 159618.00, 159618.00, 170000.00, '2022-07-05 07:44:52', '2022-07-04 16:50:49');
INSERT INTO `seas_coin` VALUES (23, 5316, 'https://7seasnft.com/product-details-v1-5316', 131775.00, 131775.00, 170000.00, '2022-07-05 12:23:19', '2022-07-04 16:50:49');
INSERT INTO `seas_coin` VALUES (24, 5643, 'https://7seasnft.com/product-details-v1-5643', 130613.00, 130613.00, 169796.00, '2022-07-04 20:15:49', '2022-07-04 16:50:49');
INSERT INTO `seas_coin` VALUES (25, 4858, 'https://7seasnft.com/product-details-v1-4858', 157600.00, 157600.00, 168230.00, '2022-07-05 09:31:10', '2022-07-04 16:50:50');
INSERT INTO `seas_coin` VALUES (26, 2851, 'https://7seasnft.com/product-details-v1-2851', 150000.00, 150000.00, 161025.00, '2022-07-04 18:48:21', '2022-07-04 16:50:50');
INSERT INTO `seas_coin` VALUES (27, 10858, 'https://7seasnft.com/product-details-v1-10858', 139000.00, 139000.00, 160000.00, '2022-07-05 12:25:16', '2022-07-04 16:50:50');
INSERT INTO `seas_coin` VALUES (28, 5976, 'https://7seasnft.com/product-details-v1-5976', 150000.00, 150000.00, 159455.00, '2022-07-05 12:45:22', '2022-07-04 16:50:51');
INSERT INTO `seas_coin` VALUES (29, 5551, 'https://7seasnft.com/product-details-v1-5551', 135000.00, 135000.00, 158300.00, '2022-07-05 07:18:29', '2022-07-04 16:50:51');
INSERT INTO `seas_coin` VALUES (30, 1367, 'https://7seasnft.com/product-details-v1-1367', 150000.00, 156800.31, 157500.00, '2022-07-04 18:53:18', '2022-07-04 16:50:52');
INSERT INTO `seas_coin` VALUES (31, 5397, 'https://7seasnft.com/product-details-v1-5397', 150000.00, 150119.00, 157500.00, '2022-07-04 22:18:47', '2022-07-04 16:50:52');
INSERT INTO `seas_coin` VALUES (32, 4602, 'https://7seasnft.com/product-details-v1-4602', 147766.00, 147766.00, 155155.00, '2022-07-05 07:03:12', '2022-07-04 16:50:52');
INSERT INTO `seas_coin` VALUES (33, 5603, 'https://7seasnft.com/product-details-v1-5603', 138483.00, 138483.00, 155000.00, '2022-07-04 21:30:31', '2022-07-04 16:50:53');
INSERT INTO `seas_coin` VALUES (34, 5604, 'https://7seasnft.com/product-details-v1-5604', 145000.00, 145000.00, 155000.00, '2022-07-05 11:07:19', '2022-07-04 16:50:53');
INSERT INTO `seas_coin` VALUES (35, 6656, 'https://7seasnft.com/product-details-v1-6656', 141750.00, 141750.00, 152000.00, '2022-07-04 19:11:16', '2022-07-04 16:50:54');
INSERT INTO `seas_coin` VALUES (36, 5602, 'https://7seasnft.com/product-details-v1-5602', 5000.00, 5000.00, 151680.00, '2022-07-04 23:12:47', '2022-07-04 16:50:54');
INSERT INTO `seas_coin` VALUES (37, 5650, 'https://7seasnft.com/product-details-v1-5650', 143325.00, 143350.00, 150491.25, '2022-07-05 14:01:27', '2022-07-04 16:50:55');
INSERT INTO `seas_coin` VALUES (38, 5703, 'https://7seasnft.com/product-details-v1-5703', 136000.00, 136000.00, 150000.00, '2022-07-05 07:03:13', '2022-07-04 16:50:56');
INSERT INTO `seas_coin` VALUES (39, 2602, 'https://7seasnft.com/product-details-v1-2602', 141120.00, 141120.00, 150000.00, '2022-07-05 14:12:22', '2022-07-04 16:50:57');
INSERT INTO `seas_coin` VALUES (40, 2994, 'https://7seasnft.com/product-details-v1-2994', 127000.00, 127000.00, 150000.00, '2022-07-05 14:59:41', '2022-07-04 16:50:57');
INSERT INTO `seas_coin` VALUES (41, 435, 'https://7seasnft.com/product-details-v1-435', 86000.00, 86000.00, 149500.00, '2022-07-04 23:21:21', '2022-07-04 16:50:58');
INSERT INTO `seas_coin` VALUES (42, 5145, 'https://7seasnft.com/product-details-v1-5145', 142000.00, 142000.00, 149100.00, '2022-07-04 19:43:04', '2022-07-04 16:50:59');
INSERT INTO `seas_coin` VALUES (43, 4366, 'https://7seasnft.com/product-details-v1-4366', 141750.00, 141750.00, 148838.00, '2022-07-04 19:25:06', '2022-07-04 16:51:00');
INSERT INTO `seas_coin` VALUES (44, 8854, 'https://7seasnft.com/product-details-v1-8854', 127995.00, 127995.00, 148225.00, '2022-07-04 20:06:55', '2022-07-04 16:51:01');
INSERT INTO `seas_coin` VALUES (45, 425, 'https://7seasnft.com/product-details-v1-425', 139965.00, 139965.80, 147000.00, '2022-07-04 23:30:58', '2022-07-04 16:51:04');
INSERT INTO `seas_coin` VALUES (46, 469, 'https://7seasnft.com/product-details-v1-469', 138000.00, 138000.00, 146500.00, '2022-07-05 14:31:33', '2022-07-04 16:51:08');
INSERT INTO `seas_coin` VALUES (47, 362, 'https://7seasnft.com/product-details-v1-362', 126000.00, 126000.00, 141750.00, '2022-07-05 14:29:36', '2022-07-04 16:53:27');
INSERT INTO `seas_coin` VALUES (48, 13916, 'https://7seasnft.com/product-details-v1-13916', 134400.00, 134400.00, 141120.00, '2022-07-04 21:25:51', '2022-07-04 16:53:28');
INSERT INTO `seas_coin` VALUES (49, 365, 'https://7seasnft.com/product-details-v1-365', 115700.00, 115700.00, 141120.00, '2022-07-04 23:14:03', '2022-07-04 16:53:28');
INSERT INTO `seas_coin` VALUES (50, 5432, 'https://7seasnft.com/product-details-v1-5432', 134400.00, 134400.00, 141120.00, '2022-07-05 11:20:15', '2022-07-04 16:53:29');
INSERT INTO `seas_coin` VALUES (51, 486, 'https://7seasnft.com/product-details-v1-486', 127666.00, 127666.00, 140805.00, '2022-07-04 18:33:49', '2022-07-04 16:53:29');
INSERT INTO `seas_coin` VALUES (52, 433, 'https://7seasnft.com/product-details-v1-433', 50500.00, 50500.00, 140125.00, '2022-07-05 09:11:57', '2022-07-04 16:53:30');
INSERT INTO `seas_coin` VALUES (53, 5513, 'https://7seasnft.com/product-details-v1-5513', 125562.00, 125562.00, 140000.00, '2022-07-04 21:41:15', '2022-07-04 16:53:30');
INSERT INTO `seas_coin` VALUES (54, 5370, 'https://7seasnft.com/product-details-v1-5370', 105000.00, 105000.00, 140000.00, '2022-07-04 23:19:11', '2022-07-04 16:53:30');
INSERT INTO `seas_coin` VALUES (55, 5793, 'https://7seasnft.com/product-details-v1-5793', 125000.00, 131250.00, 140000.00, '2022-07-05 08:30:59', '2022-07-04 16:53:31');
INSERT INTO `seas_coin` VALUES (56, 8777, 'https://7seasnft.com/product-details-v1-8777', 131250.00, 131250.00, 140000.00, '2022-07-05 11:52:42', '2022-07-04 16:53:31');
INSERT INTO `seas_coin` VALUES (57, 5804, 'https://7seasnft.com/product-details-v1-5804', 125999.00, 126000.00, 139660.00, '2022-07-05 01:15:12', '2022-07-04 16:53:32');
INSERT INTO `seas_coin` VALUES (58, 454, 'https://7seasnft.com/product-details-v1-454', 108888.00, 108888.00, 139484.52, '2022-07-05 15:19:39', '2022-07-04 16:53:32');
INSERT INTO `seas_coin` VALUES (59, 9964, 'https://7seasnft.com/product-details-v1-9964', 93969.00, 93969.00, 139066.00, '2022-07-05 05:24:34', '2022-07-04 16:53:33');
INSERT INTO `seas_coin` VALUES (60, 6633, 'https://7seasnft.com/product-details-v1-6633', 129000.00, 129000.00, 139000.00, '2022-07-05 00:45:24', '2022-07-04 16:53:33');
INSERT INTO `seas_coin` VALUES (61, 5427, 'https://7seasnft.com/product-details-v1-5427', 121433.00, 131433.00, 139000.00, '2022-07-05 12:08:23', '2022-07-04 16:53:33');
INSERT INTO `seas_coin` VALUES (62, 5417, 'https://7seasnft.com/product-details-v1-5417', 126055.00, 126055.00, 138976.00, '2022-07-04 23:01:15', '2022-07-04 16:53:34');
INSERT INTO `seas_coin` VALUES (63, 14157, 'https://7seasnft.com/product-details-v1-14157', 129654.00, 129654.00, 138888.00, '2022-07-04 19:46:23', '2022-07-04 16:53:34');
INSERT INTO `seas_coin` VALUES (64, 5344, 'https://7seasnft.com/product-details-v1-5344', 131800.00, 131800.00, 138888.00, '2022-07-04 21:51:08', '2022-07-04 16:53:34');
INSERT INTO `seas_coin` VALUES (65, 378, 'https://7seasnft.com/product-details-v1-378', 100000.00, 100000.00, 138000.00, '2022-07-04 18:47:25', '2022-07-04 16:53:35');
INSERT INTO `seas_coin` VALUES (66, 5627, 'https://7seasnft.com/product-details-v1-5627', 103000.00, 103000.00, 137888.00, '2022-07-04 23:24:26', '2022-07-04 16:53:35');
INSERT INTO `seas_coin` VALUES (67, 5505, 'https://7seasnft.com/product-details-v1-5505', 80000.00, 80000.00, 137813.00, '2022-07-04 23:36:06', '2022-07-04 16:53:36');
INSERT INTO `seas_coin` VALUES (68, 5511, 'https://7seasnft.com/product-details-v1-5511', 99999.00, 109084.50, 137812.50, '2022-07-04 21:00:19', '2022-07-04 16:53:36');
INSERT INTO `seas_coin` VALUES (69, 419, 'https://7seasnft.com/product-details-v1-419', 131119.00, 139688.00, 137674.96, '2022-07-04 21:06:01', '2022-07-04 16:53:37');
INSERT INTO `seas_coin` VALUES (70, 10852, 'https://7seasnft.com/product-details-v1-10852', 131000.00, 131000.00, 137550.00, '2022-07-04 21:48:44', '2022-07-04 16:53:37');
INSERT INTO `seas_coin` VALUES (71, 5429, 'https://7seasnft.com/product-details-v1-5429', 14165.69, 14165.69, 137100.00, '2022-07-04 22:35:28', '2022-07-04 16:53:37');
INSERT INTO `seas_coin` VALUES (72, 8755, 'https://7seasnft.com/product-details-v1-8755', 100888.00, 100888.00, 136600.00, '2022-07-04 19:22:50', '2022-07-04 16:53:38');
INSERT INTO `seas_coin` VALUES (73, 5740, 'https://7seasnft.com/product-details-v1-5740', 130000.00, 130000.00, 136500.00, '2022-07-04 18:46:35', '2022-07-04 16:53:38');
INSERT INTO `seas_coin` VALUES (74, 5980, 'https://7seasnft.com/product-details-v1-5980', 130000.00, 137107.95, 136500.00, '2022-07-04 19:34:01', '2022-07-04 16:53:38');
INSERT INTO `seas_coin` VALUES (75, 5595, 'https://7seasnft.com/product-details-v1-5595', 99988.00, 100000.00, 136500.00, '2022-07-04 20:33:04', '2022-07-04 16:53:39');
INSERT INTO `seas_coin` VALUES (76, 5822, 'https://7seasnft.com/product-details-v1-5822', 26000.00, 26000.00, 136500.00, '2022-07-04 22:42:26', '2022-07-04 16:53:39');
INSERT INTO `seas_coin` VALUES (77, 5875, 'https://7seasnft.com/product-details-v1-5875', 5000.00, 5000.00, 136500.00, '2022-07-04 23:12:56', '2022-07-04 16:53:40');
INSERT INTO `seas_coin` VALUES (78, 5483, 'https://7seasnft.com/product-details-v1-5483', 130000.00, 130000.00, 136500.00, '2022-07-05 11:47:50', '2022-07-04 16:53:40');
INSERT INTO `seas_coin` VALUES (79, 5735, 'https://7seasnft.com/product-details-v1-5735', 129000.00, 129000.00, 135888.00, '2022-07-04 21:48:28', '2022-07-04 16:53:41');
INSERT INTO `seas_coin` VALUES (80, 5713, 'https://7seasnft.com/product-details-v1-5713', 98000.00, 98000.00, 135700.00, '2022-07-04 23:33:03', '2022-07-04 16:53:41');
INSERT INTO `seas_coin` VALUES (81, 9515, 'https://7seasnft.com/product-details-v1-9515', 125580.00, 125580.00, 135600.00, '2022-07-05 14:47:28', '2022-07-04 16:53:41');
INSERT INTO `seas_coin` VALUES (82, 5428, 'https://7seasnft.com/product-details-v1-5428', 105600.00, 105600.00, 135000.00, '2022-07-04 20:03:11', '2022-07-04 16:53:42');
INSERT INTO `seas_coin` VALUES (83, 5379, 'https://7seasnft.com/product-details-v1-5379', 103000.00, 103000.00, 135000.00, '2022-07-04 20:38:16', '2022-07-04 16:53:42');
INSERT INTO `seas_coin` VALUES (84, 5498, 'https://7seasnft.com/product-details-v1-5498', 84500.00, 84500.00, 135000.00, '2022-07-05 10:11:24', '2022-07-04 16:53:43');
INSERT INTO `seas_coin` VALUES (85, 10390, 'https://7seasnft.com/product-details-v1-10390', 5000.00, 5000.00, 135000.00, '2022-07-05 12:00:30', '2022-07-04 16:53:43');
INSERT INTO `seas_coin` VALUES (86, 477, 'https://7seasnft.com/product-details-v1-477', 120000.00, 120000.00, 135000.00, '2022-07-05 14:10:38', '2022-07-04 16:53:44');
INSERT INTO `seas_coin` VALUES (87, 5520, 'https://7seasnft.com/product-details-v1-5520', 106470.00, 106470.00, 134767.50, '2022-07-04 20:24:08', '2022-07-04 16:55:50');
INSERT INTO `seas_coin` VALUES (88, 5539, 'https://7seasnft.com/product-details-v1-5539', 114920.00, 114920.00, 134506.00, '2022-07-04 22:40:08', '2022-07-04 16:55:51');
INSERT INTO `seas_coin` VALUES (89, 10856, 'https://7seasnft.com/product-details-v1-10856', 120999.00, 120999.00, 133455.00, '2022-07-04 19:35:22', '2022-07-04 16:55:51');
INSERT INTO `seas_coin` VALUES (90, 14502, 'https://7seasnft.com/product-details-v1-14502', 120000.00, 120000.00, 132000.00, '2022-07-04 19:06:20', '2022-07-04 16:55:52');
INSERT INTO `seas_coin` VALUES (91, 448, 'https://7seasnft.com/product-details-v1-448', 93888.00, 93888.00, 132000.00, '2022-07-05 16:44:26', '2022-07-04 16:55:52');
INSERT INTO `seas_coin` VALUES (92, 2093, 'https://7seasnft.com/product-details-v1-2093', 77760.00, 77760.00, 131414.00, '2022-07-04 21:07:26', '2022-07-04 16:55:52');
INSERT INTO `seas_coin` VALUES (93, 8805, 'https://7seasnft.com/product-details-v1-8805', 90999.00, 90999.00, 131250.00, '2022-07-05 11:32:28', '2022-07-04 16:55:53');
INSERT INTO `seas_coin` VALUES (94, 6236, 'https://7seasnft.com/product-details-v1-6236', 100900.00, 100900.00, 131170.00, '2022-07-05 13:42:47', '2022-07-04 16:55:53');
INSERT INTO `seas_coin` VALUES (95, 4682, 'https://7seasnft.com/product-details-v1-4682', 121275.00, 121275.00, 129000.00, '2022-07-05 00:52:40', '2022-07-04 16:55:54');
INSERT INTO `seas_coin` VALUES (96, 4557, 'https://7seasnft.com/product-details-v1-4557', 98800.00, 98800.00, 128440.00, '2022-07-04 20:00:09', '2022-07-04 16:55:54');
INSERT INTO `seas_coin` VALUES (97, 12819, 'https://7seasnft.com/product-details-v1-12819', 108313.00, 108313.00, 126000.00, '2022-07-04 19:16:18', '2022-07-04 16:55:55');
INSERT INTO `seas_coin` VALUES (98, 2252, 'https://7seasnft.com/product-details-v1-2252', 119700.00, 119700.00, 125685.00, '2022-07-05 10:50:28', '2022-07-04 16:55:55');
INSERT INTO `seas_coin` VALUES (99, 3258, 'https://7seasnft.com/product-details-v1-3258', 103000.00, 103000.00, 122240.00, '2022-07-05 00:32:26', '2022-07-04 16:55:55');
INSERT INTO `seas_coin` VALUES (100, 13174, 'https://7seasnft.com/product-details-v1-13174', 100000.00, 100000.00, 120000.00, '2022-07-04 19:35:24', '2022-07-04 16:55:56');
INSERT INTO `seas_coin` VALUES (101, 9930, 'https://7seasnft.com/product-details-v1-9930', 95572.00, 95572.00, 120000.00, '2022-07-04 19:47:59', '2022-07-04 16:55:56');
INSERT INTO `seas_coin` VALUES (102, 721, 'https://7seasnft.com/product-details-v1-721', 112472.00, 112472.00, 120000.00, '2022-07-05 07:00:35', '2022-07-04 16:55:57');
INSERT INTO `seas_coin` VALUES (103, 6558, 'https://7seasnft.com/product-details-v1-6558', 94900.00, 94900.00, 120000.00, '2022-07-05 10:19:00', '2022-07-04 16:55:57');
INSERT INTO `seas_coin` VALUES (104, 4871, 'https://7seasnft.com/product-details-v1-4871', 107000.00, 107000.00, 117700.00, '2022-07-04 23:30:26', '2022-07-04 16:55:58');
INSERT INTO `seas_coin` VALUES (105, 8649, 'https://7seasnft.com/product-details-v1-8649', 111888.00, 117483.00, 117483.00, '2022-07-04 18:43:42', '2022-07-04 16:55:58');
INSERT INTO `seas_coin` VALUES (106, 4338, 'https://7seasnft.com/product-details-v1-4338', 110000.00, 110000.00, 117260.00, '2022-07-05 10:47:11', '2022-07-04 16:55:58');
INSERT INTO `seas_coin` VALUES (107, 865, 'https://7seasnft.com/product-details-v1-865', 90000.00, 95000.00, 117000.00, '2022-07-05 15:28:44', '2022-07-04 16:55:59');
INSERT INTO `seas_coin` VALUES (108, 2569, 'https://7seasnft.com/product-details-v1-2569', 109130.00, 109130.00, 116769.00, '2022-07-04 19:50:52', '2022-07-04 16:55:59');
INSERT INTO `seas_coin` VALUES (109, 6683, 'https://7seasnft.com/product-details-v1-6683', 106000.00, 116000.00, 116000.00, '2022-07-05 16:07:46', '2022-07-04 16:56:01');
INSERT INTO `seas_coin` VALUES (110, 3942, 'https://7seasnft.com/product-details-v1-3942', 107858.00, 107858.00, 115947.00, '2022-07-04 19:04:46', '2022-07-04 16:56:01');
INSERT INTO `seas_coin` VALUES (111, 12771, 'https://7seasnft.com/product-details-v1-12771', 110000.00, 110000.00, 115500.00, '2022-07-04 21:05:08', '2022-07-04 16:56:01');
INSERT INTO `seas_coin` VALUES (112, 5180, 'https://7seasnft.com/product-details-v1-5180', 107200.00, 107200.00, 114999.00, '2022-07-05 00:48:16', '2022-07-04 16:56:02');
INSERT INTO `seas_coin` VALUES (113, 6571, 'https://7seasnft.com/product-details-v1-6571', 104500.00, 104500.00, 114950.00, '2022-07-05 09:40:29', '2022-07-04 16:56:02');
INSERT INTO `seas_coin` VALUES (114, 923, 'https://7seasnft.com/product-details-v1-923', 105888.00, 105888.00, 114500.00, '2022-07-04 22:35:26', '2022-07-04 16:56:02');
INSERT INTO `seas_coin` VALUES (115, 912, 'https://7seasnft.com/product-details-v1-912', 87000.00, 87000.00, 113000.00, '2022-07-05 15:27:17', '2022-07-04 16:56:03');
INSERT INTO `seas_coin` VALUES (116, 4675, 'https://7seasnft.com/product-details-v1-4675', 500.00, 69615.00, 112665.00, '2022-07-05 00:35:30', '2022-07-04 16:56:03');
INSERT INTO `seas_coin` VALUES (117, 3822, 'https://7seasnft.com/product-details-v1-3822', 88188.00, 88188.00, 112233.00, '2022-07-04 19:30:35', '2022-07-04 16:56:04');
INSERT INTO `seas_coin` VALUES (118, 3803, 'https://7seasnft.com/product-details-v1-3803', 106000.00, 106000.00, 112000.00, '2022-07-05 12:08:04', '2022-07-04 16:56:04');
INSERT INTO `seas_coin` VALUES (119, 1248, 'https://7seasnft.com/product-details-v1-1248', 77888.00, 77888.00, 111930.00, '2022-07-04 19:06:59', '2022-07-04 16:56:04');
INSERT INTO `seas_coin` VALUES (120, 2789, 'https://7seasnft.com/product-details-v1-2789', 88500.00, 88500.00, 111210.00, '2022-07-05 07:24:13', '2022-07-04 16:56:05');
INSERT INTO `seas_coin` VALUES (121, 919, 'https://7seasnft.com/product-details-v1-919', 104628.00, 104628.00, 109860.00, '2022-07-04 18:44:58', '2022-07-04 16:56:05');
INSERT INTO `seas_coin` VALUES (122, 867, 'https://7seasnft.com/product-details-v1-867', 83800.00, 83800.00, 108940.00, '2022-07-05 00:17:05', '2022-07-04 16:56:05');
INSERT INTO `seas_coin` VALUES (123, 2942, 'https://7seasnft.com/product-details-v1-2942', 103419.00, 103419.00, 108590.00, '2022-07-04 19:20:24', '2022-07-04 16:56:06');
INSERT INTO `seas_coin` VALUES (124, 816, 'https://7seasnft.com/product-details-v1-816', 100800.28, 100800.28, 108360.00, '2022-07-04 18:59:45', '2022-07-04 16:56:06');
INSERT INTO `seas_coin` VALUES (125, 6078, 'https://7seasnft.com/product-details-v1-6078', 102496.00, 102496.00, 108026.00, '2022-07-05 12:53:58', '2022-07-04 16:56:07');
INSERT INTO `seas_coin` VALUES (126, 6064, 'https://7seasnft.com/product-details-v1-6064', 83000.00, 83000.00, 107900.00, '2022-07-05 00:10:43', '2022-07-04 16:56:08');
INSERT INTO `seas_coin` VALUES (127, 2274, 'https://7seasnft.com/product-details-v1-2274', 106166.00, 106166.00, NULL, '2022-07-05 11:45:23', '2022-07-04 16:58:26');
INSERT INTO `seas_coin` VALUES (128, 2412, 'https://7seasnft.com/product-details-v1-2412', 114660.00, 114660.00, NULL, '2022-07-05 08:32:44', '2022-07-04 16:58:29');
INSERT INTO `seas_coin` VALUES (129, 6054, 'https://7seasnft.com/product-details-v1-6054', 107500.00, 107500.00, NULL, '2022-07-05 08:27:56', '2022-07-04 16:58:30');
INSERT INTO `seas_coin` VALUES (130, 4182, 'https://7seasnft.com/product-details-v1-4182', 63000.00, 63000.00, 66150.00, '2022-07-05 10:31:31', '2022-07-04 16:58:30');
INSERT INTO `seas_coin` VALUES (131, 1649, 'https://7seasnft.com/product-details-v1-1649', 84000.00, 84000.00, NULL, '2022-07-05 07:05:24', '2022-07-04 16:58:33');
INSERT INTO `seas_coin` VALUES (132, 1848, 'https://7seasnft.com/product-details-v1-1848', 113476.17, 113476.17, NULL, '2022-07-05 09:30:44', '2022-07-04 16:58:35');
INSERT INTO `seas_coin` VALUES (133, 3605, 'https://7seasnft.com/product-details-v1-3605', 83000.00, 83000.00, NULL, '2022-07-05 12:57:46', '2022-07-04 16:58:36');
INSERT INTO `seas_coin` VALUES (134, 1373, 'https://7seasnft.com/product-details-v1-1373', 78000.00, 81000.00, 81900.00, '2022-07-05 09:30:39', '2022-07-04 16:58:38');
INSERT INTO `seas_coin` VALUES (135, 1323, 'https://7seasnft.com/product-details-v1-1323', 75000.00, 75000.00, 85000.00, '2022-07-05 15:34:49', '2022-07-04 16:58:38');
INSERT INTO `seas_coin` VALUES (136, 3171, 'https://7seasnft.com/product-details-v1-3171', 97332.55, 97332.55, NULL, '2022-07-04 23:07:51', '2022-07-04 16:58:39');
INSERT INTO `seas_coin` VALUES (137, 3019, 'https://7seasnft.com/product-details-v1-3019', 96679.00, 96679.00, NULL, '2022-07-04 20:31:22', '2022-07-04 16:58:40');
INSERT INTO `seas_coin` VALUES (138, 11199, 'https://7seasnft.com/product-details-v1-11199', 73500.00, 73500.00, NULL, '2022-07-05 15:39:00', '2022-07-04 16:58:41');
INSERT INTO `seas_coin` VALUES (139, 9636, 'https://7seasnft.com/product-details-v1-9636', 81000.00, 81000.00, NULL, '2022-07-05 09:42:00', '2022-07-04 16:58:42');

SET FOREIGN_KEY_CHECKS = 1;
