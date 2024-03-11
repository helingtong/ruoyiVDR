/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50556
 Source Host           : localhost:3306
 Source Schema         : ry

 Target Server Type    : MySQL
 Target Server Version : 50556
 File Encoding         : 65001

 Date: 10/03/2024 14:08:48
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作 sub主子表操作）',
  `package_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '代码生成业务表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES (1, 'kt_mingming', '命名空间管理表', '', NULL, 'KtMingming', 'crud', 'com.ruoyi.wj', 'wj_mingming', 'wj_mingming', '命名空间管理', 'w', '0', '/', '{\"parentMenuId\":\"2001\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"注册准备操作\",\"treeCode\":\"\"}', 'admin', '2023-03-02 19:21:15', '', '2023-03-02 19:31:13', '');
INSERT INTO `gen_table` VALUES (3, 'kt_cibiao', '词表导入与管理表', '', NULL, 'KtCibiao', 'crud', 'com.ruoyi.cibiao', 'cibiao', 'manager', '词表导入与管理', 'ruoyi', '0', '/', '{\"parentMenuId\":\"2001\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"注册准备操作\",\"treeCode\":\"\"}', 'admin', '2023-03-03 10:37:56', '', '2023-03-03 10:40:34', '');
INSERT INTO `gen_table` VALUES (4, 'kt_shiyou', '石油领域词汇表', '', NULL, 'KtShiyou', 'crud', 'com.ruoyi.shiyou', 'shiyou', 'vocabulary', '石油领域词汇表', 'w', '0', '/', '{\"parentMenuId\":\"2001\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"注册准备操作\",\"treeCode\":\"\"}', 'admin', '2023-03-03 15:11:07', '', '2023-03-03 15:14:21', '');
INSERT INTO `gen_table` VALUES (8, 'kt_element', '数据元目录表', '', NULL, 'KtElement', 'crud', 'com.ruoyi.element', 'element', 'dictory', '数据元目录', 'w', '0', '/', '{\"parentMenuId\":\"2004\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"数据源目录\",\"treeCode\":\"\"}', 'admin', '2023-03-05 09:06:20', '', '2023-03-05 09:08:38', '');
INSERT INTO `gen_table` VALUES (9, 'kt_school', '数据元概念注册', '', NULL, 'KtSchool', 'crud', 'com.ruoyi.data', 'data', 'register', '数据元概念注册', 'ruoyi', '0', '/', '{\"parentMenuId\":\"2003\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"描述类概念注册\",\"treeCode\":\"\"}', 'admin', '2023-03-05 21:09:16', '', '2023-03-05 21:11:29', '');
INSERT INTO `gen_table` VALUES (10, 'kt_mean', '值含义注册表', '', NULL, 'KtMean', 'crud', 'com.ruoyi.concept', 'concept', 'register', '概念域注册', 'w', '0', '/', '{\"parentMenuId\":\"2003\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"描述类概念注册\",\"treeCode\":\"\"}', 'admin', '2023-03-07 15:35:17', '', '2023-03-07 15:37:24', '');
INSERT INTO `gen_table` VALUES (13, 'kt_edge', '关系查询表', '', NULL, 'KtEdge', 'crud', 'com.ruoyi.edge', 'edge', 'search', '关系注册', 'w', '0', '/', '{\"parentMenuId\":\"2002\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"基础类概念注册\",\"treeCode\":\"\"}', 'admin', '2023-03-09 11:26:01', '', '2023-03-09 11:31:42', '');

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 86 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '代码生成业务表字段' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES (1, '1', 'mm_id', 'mm_id', 'bigint(20)', 'Long', 'mmId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-03-02 19:21:15', NULL, '2023-03-02 19:31:13');
INSERT INTO `gen_table_column` VALUES (2, '1', 'prefix', 'Prefix', 'varchar(500)', 'String', 'prefix', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'textarea', '', 2, 'admin', '2023-03-02 19:21:15', NULL, '2023-03-02 19:31:13');
INSERT INTO `gen_table_column` VALUES (3, '1', 'namespace', 'Namespace', 'varchar(500)', 'String', 'namespace', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'textarea', '', 3, 'admin', '2023-03-02 19:21:15', NULL, '2023-03-02 19:31:13');
INSERT INTO `gen_table_column` VALUES (4, '1', 'authority', 'Authority', 'varchar(500)', 'String', 'authority', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'textarea', '', 4, 'admin', '2023-03-02 19:21:15', NULL, '2023-03-02 19:31:13');
INSERT INTO `gen_table_column` VALUES (5, '1', 'reference', 'Reference', 'varchar(500)', 'String', 'reference', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'textarea', '', 5, 'admin', '2023-03-02 19:21:15', NULL, '2023-03-02 19:31:13');
INSERT INTO `gen_table_column` VALUES (12, '3', 'cb_id', 'cb_id', 'bigint(20)', 'Long', 'cbId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-03-03 10:37:57', NULL, '2023-03-03 10:40:34');
INSERT INTO `gen_table_column` VALUES (13, '3', 'name', 'Name', 'varchar(500)', 'String', 'name', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'textarea', '', 2, 'admin', '2023-03-03 10:37:57', NULL, '2023-03-03 10:40:34');
INSERT INTO `gen_table_column` VALUES (14, '3', 'type', 'Type', 'varchar(500)', 'String', 'type', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', '', 3, 'admin', '2023-03-03 10:37:57', NULL, '2023-03-03 10:40:34');
INSERT INTO `gen_table_column` VALUES (15, '3', 'comment', 'Comment', 'varchar(500)', 'String', 'comment', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'textarea', '', 4, 'admin', '2023-03-03 10:37:57', NULL, '2023-03-03 10:40:34');
INSERT INTO `gen_table_column` VALUES (16, '3', 'domain', 'Domain', 'varchar(500)', 'String', 'domain', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'textarea', '', 5, 'admin', '2023-03-03 10:37:57', NULL, '2023-03-03 10:40:34');
INSERT INTO `gen_table_column` VALUES (17, '3', 'range', 'Range', 'varchar(500)', 'String', 'range', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'textarea', '', 6, 'admin', '2023-03-03 10:37:57', NULL, '2023-03-03 10:40:34');
INSERT INTO `gen_table_column` VALUES (18, '4', 'sy_id', 'sy_id', 'bigint(20)', 'Long', 'syId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-03-03 15:11:08', NULL, '2023-03-03 15:14:21');
INSERT INTO `gen_table_column` VALUES (19, '4', '词汇表名称', '词汇表名称', 'varchar(500)', 'String', '词汇表名称', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'textarea', '', 2, 'admin', '2023-03-03 15:11:08', NULL, '2023-03-03 15:14:21');
INSERT INTO `gen_table_column` VALUES (20, '4', '英文名称', '英文名称', 'varchar(500)', 'String', '英文名称', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'textarea', '', 3, 'admin', '2023-03-03 15:11:08', NULL, '2023-03-03 15:14:21');
INSERT INTO `gen_table_column` VALUES (21, '4', '中文名称', '中文名称', 'varchar(500)', 'String', '中文名称', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'textarea', '', 4, 'admin', '2023-03-03 15:11:08', NULL, '2023-03-03 15:14:21');
INSERT INTO `gen_table_column` VALUES (22, '4', '英文解释', '英文解释', 'varchar(500)', 'String', '英文解释', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'textarea', '', 5, 'admin', '2023-03-03 15:11:08', NULL, '2023-03-03 15:14:21');
INSERT INTO `gen_table_column` VALUES (52, '8', '编号', '编号', 'bigint(20)', 'Long', '编号', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-03-05 09:06:20', NULL, '2023-03-05 09:08:38');
INSERT INTO `gen_table_column` VALUES (53, '8', '数据元名称', '数据元名称', 'varchar(500)', 'String', '数据元名称', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'textarea', '', 2, 'admin', '2023-03-05 09:06:20', NULL, '2023-03-05 09:08:38');
INSERT INTO `gen_table_column` VALUES (54, '8', '对象类限定词', '对象类限定词', 'varchar(500)', 'String', '对象类限定词', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'textarea', '', 3, 'admin', '2023-03-05 09:06:20', NULL, '2023-03-05 09:08:38');
INSERT INTO `gen_table_column` VALUES (55, '8', '对象类', '对象类', 'varchar(500)', 'String', '对象类', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'textarea', '', 4, 'admin', '2023-03-05 09:06:20', NULL, '2023-03-05 09:08:38');
INSERT INTO `gen_table_column` VALUES (56, '8', '特性类限定词', '特性类限定词', 'varchar(500)', 'String', '特性类限定词', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'textarea', '', 5, 'admin', '2023-03-05 09:06:20', NULL, '2023-03-05 09:08:38');
INSERT INTO `gen_table_column` VALUES (57, '8', '特性类', '特性类', 'varchar(500)', 'String', '特性类', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'textarea', '', 6, 'admin', '2023-03-05 09:06:20', NULL, '2023-03-05 09:08:38');
INSERT INTO `gen_table_column` VALUES (58, '8', '表示类', '表示类', 'varchar(500)', 'String', '表示类', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'textarea', '', 7, 'admin', '2023-03-05 09:06:20', NULL, '2023-03-05 09:08:38');
INSERT INTO `gen_table_column` VALUES (59, '8', '计量单位', '计量单位', 'varchar(500)', 'String', '计量单位', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'textarea', '', 8, 'admin', '2023-03-05 09:06:20', NULL, '2023-03-05 09:08:38');
INSERT INTO `gen_table_column` VALUES (60, '9', 'sc_id', '学校表的主键ID', 'int(8)', 'Integer', 'scId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-03-05 21:09:16', NULL, '2023-03-05 21:11:29');
INSERT INTO `gen_table_column` VALUES (61, '9', 'sc_name', '学校名称', 'varchar(32)', 'String', 'scName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2023-03-05 21:09:16', NULL, '2023-03-05 21:11:29');
INSERT INTO `gen_table_column` VALUES (62, '9', 'a_id', '所属区域外键', 'int(8)', 'Integer', 'aId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-03-05 21:09:16', NULL, '2023-03-05 21:11:29');
INSERT INTO `gen_table_column` VALUES (63, '10', '编号', '编号', 'bigint(20)', 'Long', '编号', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-03-07 15:35:17', NULL, '2023-03-07 15:37:24');
INSERT INTO `gen_table_column` VALUES (64, '10', '值含义', '值含义', 'varchar(500)', 'String', '值含义', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'textarea', '', 2, 'admin', '2023-03-07 15:35:17', NULL, '2023-03-07 15:37:24');
INSERT INTO `gen_table_column` VALUES (79, '13', 'link_id', 'link_id', 'bigint(20)', 'Long', 'linkId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-03-09 11:26:01', NULL, '2023-03-09 11:31:42');
INSERT INTO `gen_table_column` VALUES (80, '13', 'l_id', 'l_id', 'varchar(50)', 'String', 'lId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-03-09 11:26:01', NULL, '2023-03-09 11:31:42');
INSERT INTO `gen_table_column` VALUES (81, '13', 'source', 'source', 'varchar(500)', 'String', 'source', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'textarea', '', 3, 'admin', '2023-03-09 11:26:01', NULL, '2023-03-09 11:31:42');
INSERT INTO `gen_table_column` VALUES (82, '13', 'relation', 'relation', 'varchar(500)', 'String', 'relation', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'textarea', '', 4, 'admin', '2023-03-09 11:26:01', NULL, '2023-03-09 11:31:42');
INSERT INTO `gen_table_column` VALUES (83, '13', 'end_role', 'end_role', 'varchar(500)', 'String', 'endRole', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'textarea', '', 5, 'admin', '2023-03-09 11:26:01', NULL, '2023-03-09 11:31:42');
INSERT INTO `gen_table_column` VALUES (84, '13', 'end', 'end', 'varchar(500)', 'String', 'end', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'textarea', '', 6, 'admin', '2023-03-09 11:26:01', NULL, '2023-03-09 11:31:42');
INSERT INTO `gen_table_column` VALUES (85, '13', '同义名称', '同义名称', 'varchar(500)', 'String', '同义名称', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'textarea', '', 7, 'admin', '2023-03-09 11:26:01', NULL, '2023-03-09 11:31:42');

-- ----------------------------
-- Table structure for kt_cibiao
-- ----------------------------
DROP TABLE IF EXISTS `kt_cibiao`;
CREATE TABLE `kt_cibiao`  (
  `cb_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'cb_id',
  `name` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'Name',
  `type` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'Type',
  `comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'Comment',
  `domain` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'Domain',
  `range` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'Range',
  PRIMARY KEY (`cb_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 218 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '词表导入与管理表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of kt_cibiao
-- ----------------------------
INSERT INTO `kt_cibiao` VALUES (1, 'rdfs:Resource', 'Class', 'The class resource, everything.', 'rdf:Property', 'rdfs:Class');
INSERT INTO `kt_cibiao` VALUES (2, 'rdfs:Literal', 'Class', 'The class of literal values, e.g. textual strings and integers.', 'rdfs:Class', 'rdf:Property');
INSERT INTO `kt_cibiao` VALUES (3, 'rdf:langString', 'Class', 'The class of language-tagged string literal values.', 'rdf:Property', 'rdfs:Class');
INSERT INTO `kt_cibiao` VALUES (4, 'rdf:HTML', 'Class', 'The class of HTML literal values.', 'rdfs:Resource', 'rdfs:Resource');
INSERT INTO `kt_cibiao` VALUES (5, 'rdf:XMLLiteral', 'Class', 'The class of XML literal values.', 'rdf:Property', 'rdf:Property');
INSERT INTO `kt_cibiao` VALUES (6, 'rdfs:Class', 'Class', 'The class of classes.', 'rdfs:Class', 'rdfs:Resource');
INSERT INTO `kt_cibiao` VALUES (7, 'rdf:Property', 'Class', 'The class of RDF properties.', 'rdf:Property', 'rdfs:Resource');
INSERT INTO `kt_cibiao` VALUES (11, 'rdf:Seq', 'Class', 'The class of ordered containers.', 'rdfs:Class', 'rdfs:Class');
INSERT INTO `kt_cibiao` VALUES (12, 'rdf:Alt', 'Class', 'The class of containers of alternatives.', 'rdf:Property', 'rdfs:Resource');
INSERT INTO `kt_cibiao` VALUES (13, 'rdfs:Container', 'Class', 'The class of RDF containers.', 'rdf:Property', 'rdfs:Literal');
INSERT INTO `kt_cibiao` VALUES (14, 'rdfs:ContainerMembershipProperty', 'Class', 'The class of container membership properties, rdf:_1, rdf:_2, ..., all of which are sub-properties of \'member\'.', 'rdf:Property', 'rdfs:Class');
INSERT INTO `kt_cibiao` VALUES (15, 'rdf:List', 'Class', 'The class of RDF Lists.', 'rdf:Property', 'rdfs:Resource');
INSERT INTO `kt_cibiao` VALUES (16, 'rdf:type', 'Property', 'The subject is an instance of a class.', 'rdfs:Resource', 'rdfs:Class');
INSERT INTO `kt_cibiao` VALUES (17, 'rdfs:subClassOf', 'Property', 'The subject is a subclass of a class.', 'rdfs:Class', 'rdfs:Class');
INSERT INTO `kt_cibiao` VALUES (18, 'rdfs:subPropertyOf', 'Property', 'The subject is a subproperty of a property.', 'rdf:Property', 'rdf:Property');
INSERT INTO `kt_cibiao` VALUES (19, 'rdfs:domain', 'Property', 'A domain of the subject property.', 'rdf:Property', 'rdfs:Class');
INSERT INTO `kt_cibiao` VALUES (20, 'rdfs:range', 'Property', 'A range of the subject property.', 'rdf:Property', 'rdfs:Class');
INSERT INTO `kt_cibiao` VALUES (21, 'rdfs:label', 'Property', 'A human-readable name for the subject.', 'rdfs:Resource', 'rdfs:Literal');
INSERT INTO `kt_cibiao` VALUES (22, 'rdfs:comment', 'Property', 'A description of the subject resource.', 'rdfs:Resource', 'rdfs:Literal');
INSERT INTO `kt_cibiao` VALUES (23, 'rdfs:member', 'Property', 'A member of the subject resource.', 'rdfs:Resource', 'rdfs:Resource');
INSERT INTO `kt_cibiao` VALUES (24, 'rdf:first', 'Property', 'The first item in the subject RDF list.', 'rdf:List', 'rdfs:Resource');
INSERT INTO `kt_cibiao` VALUES (25, 'rdf:rest', 'Property', 'The rest of the subject RDF list after the first item.', 'rdf:List', 'rdf:List');
INSERT INTO `kt_cibiao` VALUES (26, 'rdfs:seeAlso', 'Property', 'Further information about the subject resource.', 'rdfs:Resource', 'rdfs:Resource');
INSERT INTO `kt_cibiao` VALUES (27, 'rdfs:isDefinedBy', 'Property', 'The definition of the subject resource.', 'rdfs:Resource', 'rdfs:Resource');
INSERT INTO `kt_cibiao` VALUES (28, 'rdf:value', 'Property', 'Idiomatic property used for structured values.', 'rdfs:Resource', 'rdfs:Resource');
INSERT INTO `kt_cibiao` VALUES (29, 'rdf:subject', 'Property', 'The subject of the subject RDF statement.', 'rdf:Statement', 'rdfs:Resource');
INSERT INTO `kt_cibiao` VALUES (30, 'rdf:predicate', 'Property', 'The predicate of the subject RDF statement.', 'rdf:Statement', 'rdfs:Resource');
INSERT INTO `kt_cibiao` VALUES (31, 'rdf:object', 'Property', 'The object of the subject RDF statement.', 'rdf:Statement', 'rdfs:Resource');
INSERT INTO `kt_cibiao` VALUES (32, 'rdfs:Resource', 'Class', 'The class resource, everything.', 'rdf:Property', 'rdfs:Class');
INSERT INTO `kt_cibiao` VALUES (33, 'rdfs:Literal', 'Class', 'The class of literal values, e.g. textual strings and integers.', 'rdfs:Class', 'rdf:Property');
INSERT INTO `kt_cibiao` VALUES (34, 'rdf:langString', 'Class', 'The class of language-tagged string literal values.', 'rdf:Property', 'rdfs:Class');
INSERT INTO `kt_cibiao` VALUES (35, 'rdf:HTML', 'Class', 'The class of HTML literal values.', 'rdfs:Resource', 'rdfs:Resource');
INSERT INTO `kt_cibiao` VALUES (36, 'rdf:XMLLiteral', 'Class', 'The class of XML literal values.', 'rdf:Property', 'rdf:Property');
INSERT INTO `kt_cibiao` VALUES (37, 'rdfs:Class', 'Class', 'The class of classes.', 'rdfs:Class', 'rdfs:Resource');
INSERT INTO `kt_cibiao` VALUES (38, 'rdf:Property', 'Class', 'The class of RDF properties.', 'rdf:Property', 'rdfs:Resource');
INSERT INTO `kt_cibiao` VALUES (39, 'rdfs:Datatype', 'Class', 'The class of RDF datatypes.', 'rdfs:Class', 'rdf:Property');
INSERT INTO `kt_cibiao` VALUES (40, 'rdf:Statement', 'Class', 'The class of RDF statements.', 'rdf:Property', 'rdfs:Resource');
INSERT INTO `kt_cibiao` VALUES (41, 'rdf:Bag', 'Class', 'The class of unordered containers.', 'rdfs:Class', 'rdfs:Class');
INSERT INTO `kt_cibiao` VALUES (42, 'rdf:Seq', 'Class', 'The class of ordered containers.', 'rdfs:Class', 'rdfs:Class');
INSERT INTO `kt_cibiao` VALUES (43, 'rdf:Alt', 'Class', 'The class of containers of alternatives.', 'rdf:Property', 'rdfs:Resource');
INSERT INTO `kt_cibiao` VALUES (44, 'rdfs:Container', 'Class', 'The class of RDF containers.', 'rdf:Property', 'rdfs:Literal');
INSERT INTO `kt_cibiao` VALUES (45, 'rdfs:ContainerMembershipProperty', 'Class', 'The class of container membership properties, rdf:_1, rdf:_2, ..., all of which are sub-properties of \'member\'.', 'rdf:Property', 'rdfs:Class');
INSERT INTO `kt_cibiao` VALUES (46, 'rdf:List', 'Class', 'The class of RDF Lists.', 'rdf:Property', 'rdfs:Resource');
INSERT INTO `kt_cibiao` VALUES (47, 'rdf:type', 'Property', 'The subject is an instance of a class.', 'rdfs:Resource', 'rdfs:Class');
INSERT INTO `kt_cibiao` VALUES (48, 'rdfs:subClassOf', 'Property', 'The subject is a subclass of a class.', 'rdfs:Class', 'rdfs:Class');
INSERT INTO `kt_cibiao` VALUES (49, 'rdfs:subPropertyOf', 'Property', 'The subject is a subproperty of a property.', 'rdf:Property', 'rdf:Property');
INSERT INTO `kt_cibiao` VALUES (50, 'rdfs:domain', 'Property', 'A domain of the subject property.', 'rdf:Property', 'rdfs:Class');
INSERT INTO `kt_cibiao` VALUES (51, 'rdfs:range', 'Property', 'A range of the subject property.', 'rdf:Property', 'rdfs:Class');
INSERT INTO `kt_cibiao` VALUES (52, 'rdfs:label', 'Property', 'A human-readable name for the subject.', 'rdfs:Resource', 'rdfs:Literal');
INSERT INTO `kt_cibiao` VALUES (53, 'rdfs:comment', 'Property', 'A description of the subject resource.', 'rdfs:Resource', 'rdfs:Literal');
INSERT INTO `kt_cibiao` VALUES (54, 'rdfs:member', 'Property', 'A member of the subject resource.', 'rdfs:Resource', 'rdfs:Resource');
INSERT INTO `kt_cibiao` VALUES (55, 'rdf:first', 'Property', 'The first item in the subject RDF list.', 'rdf:List', 'rdfs:Resource');
INSERT INTO `kt_cibiao` VALUES (56, 'rdf:rest', 'Property', 'The rest of the subject RDF list after the first item.', 'rdf:List', 'rdf:List');
INSERT INTO `kt_cibiao` VALUES (57, 'rdfs:seeAlso', 'Property', 'Further information about the subject resource.', 'rdfs:Resource', 'rdfs:Resource');
INSERT INTO `kt_cibiao` VALUES (58, 'rdfs:isDefinedBy', 'Property', 'The definition of the subject resource.', 'rdfs:Resource', 'rdfs:Resource');
INSERT INTO `kt_cibiao` VALUES (59, 'rdf:value', 'Property', 'Idiomatic property used for structured values.', 'rdfs:Resource', 'rdfs:Resource');
INSERT INTO `kt_cibiao` VALUES (60, 'rdf:subject', 'Property', 'The subject of the subject RDF statement.', 'rdf:Statement', 'rdfs:Resource');
INSERT INTO `kt_cibiao` VALUES (61, 'rdf:predicate', 'Property', 'The predicate of the subject RDF statement.', 'rdf:Statement', 'rdfs:Resource');
INSERT INTO `kt_cibiao` VALUES (62, 'rdf:object', 'Property', 'The object of the subject RDF statement.', 'rdf:Statement', 'rdfs:Resource');
INSERT INTO `kt_cibiao` VALUES (63, 'rdfs:Resource', 'Class', 'The class resource, everything.', 'rdf:Property', 'rdfs:Class');
INSERT INTO `kt_cibiao` VALUES (64, 'rdfs:Literal', 'Class', 'The class of literal values, e.g. textual strings and integers.', 'rdfs:Class', 'rdf:Property');
INSERT INTO `kt_cibiao` VALUES (65, 'rdf:langString', 'Class', 'The class of language-tagged string literal values.', 'rdf:Property', 'rdfs:Class');
INSERT INTO `kt_cibiao` VALUES (66, 'rdf:HTML', 'Class', 'The class of HTML literal values.', 'rdfs:Resource', 'rdfs:Resource');
INSERT INTO `kt_cibiao` VALUES (67, 'rdf:XMLLiteral', 'Class', 'The class of XML literal values.', 'rdf:Property', 'rdf:Property');
INSERT INTO `kt_cibiao` VALUES (68, 'rdfs:Class', 'Class', 'The class of classes.', 'rdfs:Class', 'rdfs:Resource');
INSERT INTO `kt_cibiao` VALUES (69, 'rdf:Property', 'Class', 'The class of RDF properties.', 'rdf:Property', 'rdfs:Resource');
INSERT INTO `kt_cibiao` VALUES (70, 'rdfs:Datatype', 'Class', 'The class of RDF datatypes.', 'rdfs:Class', 'rdf:Property');
INSERT INTO `kt_cibiao` VALUES (71, 'rdf:Statement', 'Class', 'The class of RDF statements.', 'rdf:Property', 'rdfs:Resource');
INSERT INTO `kt_cibiao` VALUES (72, 'rdf:Bag', 'Class', 'The class of unordered containers.', 'rdfs:Class', 'rdfs:Class');
INSERT INTO `kt_cibiao` VALUES (73, 'rdf:Seq', 'Class', 'The class of ordered containers.', 'rdfs:Class', 'rdfs:Class');
INSERT INTO `kt_cibiao` VALUES (74, 'rdf:Alt', 'Class', 'The class of containers of alternatives.', 'rdf:Property', 'rdfs:Resource');
INSERT INTO `kt_cibiao` VALUES (75, 'rdfs:Container', 'Class', 'The class of RDF containers.', 'rdf:Property', 'rdfs:Literal');
INSERT INTO `kt_cibiao` VALUES (76, 'rdfs:ContainerMembershipProperty', 'Class', 'The class of container membership properties, rdf:_1, rdf:_2, ..., all of which are sub-properties of \'member\'.', 'rdf:Property', 'rdfs:Class');
INSERT INTO `kt_cibiao` VALUES (77, 'rdf:List', 'Class', 'The class of RDF Lists.', 'rdf:Property', 'rdfs:Resource');
INSERT INTO `kt_cibiao` VALUES (78, 'rdf:type', 'Property', 'The subject is an instance of a class.', 'rdfs:Resource', 'rdfs:Class');
INSERT INTO `kt_cibiao` VALUES (79, 'rdfs:subClassOf', 'Property', 'The subject is a subclass of a class.', 'rdfs:Class', 'rdfs:Class');
INSERT INTO `kt_cibiao` VALUES (80, 'rdfs:subPropertyOf', 'Property', 'The subject is a subproperty of a property.', 'rdf:Property', 'rdf:Property');
INSERT INTO `kt_cibiao` VALUES (81, 'rdfs:domain', 'Property', 'A domain of the subject property.', 'rdf:Property', 'rdfs:Class');
INSERT INTO `kt_cibiao` VALUES (82, 'rdfs:range', 'Property', 'A range of the subject property.', 'rdf:Property', 'rdfs:Class');
INSERT INTO `kt_cibiao` VALUES (83, 'rdfs:label', 'Property', 'A human-readable name for the subject.', 'rdfs:Resource', 'rdfs:Literal');
INSERT INTO `kt_cibiao` VALUES (84, 'rdfs:comment', 'Property', 'A description of the subject resource.', 'rdfs:Resource', 'rdfs:Literal');
INSERT INTO `kt_cibiao` VALUES (85, 'rdfs:member', 'Property', 'A member of the subject resource.', 'rdfs:Resource', 'rdfs:Resource');
INSERT INTO `kt_cibiao` VALUES (86, 'rdf:first', 'Property', 'The first item in the subject RDF list.', 'rdf:List', 'rdfs:Resource');
INSERT INTO `kt_cibiao` VALUES (87, 'rdf:rest', 'Property', 'The rest of the subject RDF list after the first item.', 'rdf:List', 'rdf:List');
INSERT INTO `kt_cibiao` VALUES (88, 'rdfs:seeAlso', 'Property', 'Further information about the subject resource.', 'rdfs:Resource', 'rdfs:Resource');
INSERT INTO `kt_cibiao` VALUES (89, 'rdfs:isDefinedBy', 'Property', 'The definition of the subject resource.', 'rdfs:Resource', 'rdfs:Resource');
INSERT INTO `kt_cibiao` VALUES (90, 'rdf:value', 'Property', 'Idiomatic property used for structured values.', 'rdfs:Resource', 'rdfs:Resource');
INSERT INTO `kt_cibiao` VALUES (91, 'rdf:subject', 'Property', 'The subject of the subject RDF statement.', 'rdf:Statement', 'rdfs:Resource');
INSERT INTO `kt_cibiao` VALUES (92, 'rdf:predicate', 'Property', 'The predicate of the subject RDF statement.', 'rdf:Statement', 'rdfs:Resource');
INSERT INTO `kt_cibiao` VALUES (93, 'rdf:object', 'Property', 'The object of the subject RDF statement.', 'rdf:Statement', 'rdfs:Resource');
INSERT INTO `kt_cibiao` VALUES (94, 'rdfs:Resource', 'Class', 'The class resource, everything.', 'rdf:Property', 'rdfs:Class');
INSERT INTO `kt_cibiao` VALUES (95, 'rdfs:Literal', 'Class', 'The class of literal values, e.g. textual strings and integers.', 'rdfs:Class', 'rdf:Property');
INSERT INTO `kt_cibiao` VALUES (96, 'rdf:langString', 'Class', 'The class of language-tagged string literal values.', 'rdf:Property', 'rdfs:Class');
INSERT INTO `kt_cibiao` VALUES (97, 'rdf:HTML', 'Class', 'The class of HTML literal values.', 'rdfs:Resource', 'rdfs:Resource');
INSERT INTO `kt_cibiao` VALUES (98, 'rdf:XMLLiteral', 'Class', 'The class of XML literal values.', 'rdf:Property', 'rdf:Property');
INSERT INTO `kt_cibiao` VALUES (99, 'rdfs:Class', 'Class', 'The class of classes.', 'rdfs:Class', 'rdfs:Resource');
INSERT INTO `kt_cibiao` VALUES (100, 'rdf:Property', 'Class', 'The class of RDF properties.', 'rdf:Property', 'rdfs:Resource');
INSERT INTO `kt_cibiao` VALUES (101, 'rdfs:Datatype', 'Class', 'The class of RDF datatypes.', 'rdfs:Class', 'rdf:Property');
INSERT INTO `kt_cibiao` VALUES (102, 'rdf:Statement', 'Class', 'The class of RDF statements.', 'rdf:Property', 'rdfs:Resource');
INSERT INTO `kt_cibiao` VALUES (103, 'rdf:Bag', 'Class', 'The class of unordered containers.', 'rdfs:Class', 'rdfs:Class');
INSERT INTO `kt_cibiao` VALUES (104, 'rdf:Seq', 'Class', 'The class of ordered containers.', 'rdfs:Class', 'rdfs:Class');
INSERT INTO `kt_cibiao` VALUES (105, 'rdf:Alt', 'Class', 'The class of containers of alternatives.', 'rdf:Property', 'rdfs:Resource');
INSERT INTO `kt_cibiao` VALUES (106, 'rdfs:Container', 'Class', 'The class of RDF containers.', 'rdf:Property', 'rdfs:Literal');
INSERT INTO `kt_cibiao` VALUES (107, 'rdfs:ContainerMembershipProperty', 'Class', 'The class of container membership properties, rdf:_1, rdf:_2, ..., all of which are sub-properties of \'member\'.', 'rdf:Property', 'rdfs:Class');
INSERT INTO `kt_cibiao` VALUES (108, 'rdf:List', 'Class', 'The class of RDF Lists.', 'rdf:Property', 'rdfs:Resource');
INSERT INTO `kt_cibiao` VALUES (109, 'rdf:type', 'Property', 'The subject is an instance of a class.', 'rdfs:Resource', 'rdfs:Class');
INSERT INTO `kt_cibiao` VALUES (110, 'rdfs:subClassOf', 'Property', 'The subject is a subclass of a class.', 'rdfs:Class', 'rdfs:Class');
INSERT INTO `kt_cibiao` VALUES (111, 'rdfs:subPropertyOf', 'Property', 'The subject is a subproperty of a property.', 'rdf:Property', 'rdf:Property');
INSERT INTO `kt_cibiao` VALUES (112, 'rdfs:domain', 'Property', 'A domain of the subject property.', 'rdf:Property', 'rdfs:Class');
INSERT INTO `kt_cibiao` VALUES (113, 'rdfs:range', 'Property', 'A range of the subject property.', 'rdf:Property', 'rdfs:Class');
INSERT INTO `kt_cibiao` VALUES (114, 'rdfs:label', 'Property', 'A human-readable name for the subject.', 'rdfs:Resource', 'rdfs:Literal');
INSERT INTO `kt_cibiao` VALUES (115, 'rdfs:comment', 'Property', 'A description of the subject resource.', 'rdfs:Resource', 'rdfs:Literal');
INSERT INTO `kt_cibiao` VALUES (116, 'rdfs:member', 'Property', 'A member of the subject resource.', 'rdfs:Resource', 'rdfs:Resource');
INSERT INTO `kt_cibiao` VALUES (117, 'rdf:first', 'Property', 'The first item in the subject RDF list.', 'rdf:List', 'rdfs:Resource');
INSERT INTO `kt_cibiao` VALUES (118, 'rdf:rest', 'Property', 'The rest of the subject RDF list after the first item.', 'rdf:List', 'rdf:List');
INSERT INTO `kt_cibiao` VALUES (119, 'rdfs:seeAlso', 'Property', 'Further information about the subject resource.', 'rdfs:Resource', 'rdfs:Resource');
INSERT INTO `kt_cibiao` VALUES (120, 'rdfs:isDefinedBy', 'Property', 'The definition of the subject resource.', 'rdfs:Resource', 'rdfs:Resource');
INSERT INTO `kt_cibiao` VALUES (121, 'rdf:value', 'Property', 'Idiomatic property used for structured values.', 'rdfs:Resource', 'rdfs:Resource');
INSERT INTO `kt_cibiao` VALUES (122, 'rdf:subject', 'Property', 'The subject of the subject RDF statement.', 'rdf:Statement', 'rdfs:Resource');
INSERT INTO `kt_cibiao` VALUES (123, 'rdf:predicate', 'Property', 'The predicate of the subject RDF statement.', 'rdf:Statement', 'rdfs:Resource');
INSERT INTO `kt_cibiao` VALUES (124, 'rdf:object', 'Property', 'The object of the subject RDF statement.', 'rdf:Statement', 'rdfs:Resource');
INSERT INTO `kt_cibiao` VALUES (125, 'rdfs:Resource', 'Class', 'The class resource, everything.', 'rdf:Property', 'rdfs:Class');
INSERT INTO `kt_cibiao` VALUES (126, 'rdfs:Literal', 'Class', 'The class of literal values, e.g. textual strings and integers.', 'rdfs:Class', 'rdf:Property');
INSERT INTO `kt_cibiao` VALUES (127, 'rdf:langString', 'Class', 'The class of language-tagged string literal values.', 'rdf:Property', 'rdfs:Class');
INSERT INTO `kt_cibiao` VALUES (128, 'rdf:HTML', 'Class', 'The class of HTML literal values.', 'rdfs:Resource', 'rdfs:Resource');
INSERT INTO `kt_cibiao` VALUES (129, 'rdf:XMLLiteral', 'Class', 'The class of XML literal values.', 'rdf:Property', 'rdf:Property');
INSERT INTO `kt_cibiao` VALUES (130, 'rdfs:Class', 'Class', 'The class of classes.', 'rdfs:Class', 'rdfs:Resource');
INSERT INTO `kt_cibiao` VALUES (131, 'rdf:Property', 'Class', 'The class of RDF properties.', 'rdf:Property', 'rdfs:Resource');
INSERT INTO `kt_cibiao` VALUES (132, 'rdfs:Datatype', 'Class', 'The class of RDF datatypes.', 'rdfs:Class', 'rdf:Property');
INSERT INTO `kt_cibiao` VALUES (133, 'rdf:Statement', 'Class', 'The class of RDF statements.', 'rdf:Property', 'rdfs:Resource');
INSERT INTO `kt_cibiao` VALUES (134, 'rdf:Bag', 'Class', 'The class of unordered containers.', 'rdfs:Class', 'rdfs:Class');
INSERT INTO `kt_cibiao` VALUES (135, 'rdf:Seq', 'Class', 'The class of ordered containers.', 'rdfs:Class', 'rdfs:Class');
INSERT INTO `kt_cibiao` VALUES (136, 'rdf:Alt', 'Class', 'The class of containers of alternatives.', 'rdf:Property', 'rdfs:Resource');
INSERT INTO `kt_cibiao` VALUES (137, 'rdfs:Container', 'Class', 'The class of RDF containers.', 'rdf:Property', 'rdfs:Literal');
INSERT INTO `kt_cibiao` VALUES (138, 'rdfs:ContainerMembershipProperty', 'Class', 'The class of container membership properties, rdf:_1, rdf:_2, ..., all of which are sub-properties of \'member\'.', 'rdf:Property', 'rdfs:Class');
INSERT INTO `kt_cibiao` VALUES (139, 'rdf:List', 'Class', 'The class of RDF Lists.', 'rdf:Property', 'rdfs:Resource');
INSERT INTO `kt_cibiao` VALUES (140, 'rdf:type', 'Property', 'The subject is an instance of a class.', 'rdfs:Resource', 'rdfs:Class');
INSERT INTO `kt_cibiao` VALUES (141, 'rdfs:subClassOf', 'Property', 'The subject is a subclass of a class.', 'rdfs:Class', 'rdfs:Class');
INSERT INTO `kt_cibiao` VALUES (142, 'rdfs:subPropertyOf', 'Property', 'The subject is a subproperty of a property.', 'rdf:Property', 'rdf:Property');
INSERT INTO `kt_cibiao` VALUES (143, 'rdfs:domain', 'Property', 'A domain of the subject property.', 'rdf:Property', 'rdfs:Class');
INSERT INTO `kt_cibiao` VALUES (144, 'rdfs:range', 'Property', 'A range of the subject property.', 'rdf:Property', 'rdfs:Class');
INSERT INTO `kt_cibiao` VALUES (145, 'rdfs:label', 'Property', 'A human-readable name for the subject.', 'rdfs:Resource', 'rdfs:Literal');
INSERT INTO `kt_cibiao` VALUES (146, 'rdfs:comment', 'Property', 'A description of the subject resource.', 'rdfs:Resource', 'rdfs:Literal');
INSERT INTO `kt_cibiao` VALUES (147, 'rdfs:member', 'Property', 'A member of the subject resource.', 'rdfs:Resource', 'rdfs:Resource');
INSERT INTO `kt_cibiao` VALUES (148, 'rdf:first', 'Property', 'The first item in the subject RDF list.', 'rdf:List', 'rdfs:Resource');
INSERT INTO `kt_cibiao` VALUES (149, 'rdf:rest', 'Property', 'The rest of the subject RDF list after the first item.', 'rdf:List', 'rdf:List');
INSERT INTO `kt_cibiao` VALUES (150, 'rdfs:seeAlso', 'Property', 'Further information about the subject resource.', 'rdfs:Resource', 'rdfs:Resource');
INSERT INTO `kt_cibiao` VALUES (151, 'rdfs:isDefinedBy', 'Property', 'The definition of the subject resource.', 'rdfs:Resource', 'rdfs:Resource');
INSERT INTO `kt_cibiao` VALUES (152, 'rdf:value', 'Property', 'Idiomatic property used for structured values.', 'rdfs:Resource', 'rdfs:Resource');
INSERT INTO `kt_cibiao` VALUES (153, 'rdf:subject', 'Property', 'The subject of the subject RDF statement.', 'rdf:Statement', 'rdfs:Resource');
INSERT INTO `kt_cibiao` VALUES (154, 'rdf:predicate', 'Property', 'The predicate of the subject RDF statement.', 'rdf:Statement', 'rdfs:Resource');
INSERT INTO `kt_cibiao` VALUES (155, 'rdf:object', 'Property', 'The object of the subject RDF statement.', 'rdf:Statement', 'rdfs:Resource');
INSERT INTO `kt_cibiao` VALUES (156, 'rdfs:Resource', 'Class', 'The class resource, everything.', 'rdf:Property', 'rdfs:Class');
INSERT INTO `kt_cibiao` VALUES (157, 'rdfs:Literal', 'Class', 'The class of literal values, e.g. textual strings and integers.', 'rdfs:Class', 'rdf:Property');
INSERT INTO `kt_cibiao` VALUES (158, 'rdf:langString', 'Class', 'The class of language-tagged string literal values.', 'rdf:Property', 'rdfs:Class');
INSERT INTO `kt_cibiao` VALUES (159, 'rdf:HTML', 'Class', 'The class of HTML literal values.', 'rdfs:Resource', 'rdfs:Resource');
INSERT INTO `kt_cibiao` VALUES (160, 'rdf:XMLLiteral', 'Class', 'The class of XML literal values.', 'rdf:Property', 'rdf:Property');
INSERT INTO `kt_cibiao` VALUES (161, 'rdfs:Class', 'Class', 'The class of classes.', 'rdfs:Class', 'rdfs:Resource');
INSERT INTO `kt_cibiao` VALUES (162, 'rdf:Property', 'Class', 'The class of RDF properties.', 'rdf:Property', 'rdfs:Resource');
INSERT INTO `kt_cibiao` VALUES (163, 'rdfs:Datatype', 'Class', 'The class of RDF datatypes.', 'rdfs:Class', 'rdf:Property');
INSERT INTO `kt_cibiao` VALUES (164, 'rdf:Statement', 'Class', 'The class of RDF statements.', 'rdf:Property', 'rdfs:Resource');
INSERT INTO `kt_cibiao` VALUES (165, 'rdf:Bag', 'Class', 'The class of unordered containers.', 'rdfs:Class', 'rdfs:Class');
INSERT INTO `kt_cibiao` VALUES (166, 'rdf:Seq', 'Class', 'The class of ordered containers.', 'rdfs:Class', 'rdfs:Class');
INSERT INTO `kt_cibiao` VALUES (167, 'rdf:Alt', 'Class', 'The class of containers of alternatives.', 'rdf:Property', 'rdfs:Resource');
INSERT INTO `kt_cibiao` VALUES (168, 'rdfs:Container', 'Class', 'The class of RDF containers.', 'rdf:Property', 'rdfs:Literal');
INSERT INTO `kt_cibiao` VALUES (169, 'rdfs:ContainerMembershipProperty', 'Class', 'The class of container membership properties, rdf:_1, rdf:_2, ..., all of which are sub-properties of \'member\'.', 'rdf:Property', 'rdfs:Class');
INSERT INTO `kt_cibiao` VALUES (170, 'rdf:List', 'Class', 'The class of RDF Lists.', 'rdf:Property', 'rdfs:Resource');
INSERT INTO `kt_cibiao` VALUES (171, 'rdf:type', 'Property', 'The subject is an instance of a class.', 'rdfs:Resource', 'rdfs:Class');
INSERT INTO `kt_cibiao` VALUES (172, 'rdfs:subClassOf', 'Property', 'The subject is a subclass of a class.', 'rdfs:Class', 'rdfs:Class');
INSERT INTO `kt_cibiao` VALUES (173, 'rdfs:subPropertyOf', 'Property', 'The subject is a subproperty of a property.', 'rdf:Property', 'rdf:Property');
INSERT INTO `kt_cibiao` VALUES (174, 'rdfs:domain', 'Property', 'A domain of the subject property.', 'rdf:Property', 'rdfs:Class');
INSERT INTO `kt_cibiao` VALUES (175, 'rdfs:range', 'Property', 'A range of the subject property.', 'rdf:Property', 'rdfs:Class');
INSERT INTO `kt_cibiao` VALUES (176, 'rdfs:label', 'Property', 'A human-readable name for the subject.', 'rdfs:Resource', 'rdfs:Literal');
INSERT INTO `kt_cibiao` VALUES (177, 'rdfs:comment', 'Property', 'A description of the subject resource.', 'rdfs:Resource', 'rdfs:Literal');
INSERT INTO `kt_cibiao` VALUES (178, 'rdfs:member', 'Property', 'A member of the subject resource.', 'rdfs:Resource', 'rdfs:Resource');
INSERT INTO `kt_cibiao` VALUES (179, 'rdf:first', 'Property', 'The first item in the subject RDF list.', 'rdf:List', 'rdfs:Resource');
INSERT INTO `kt_cibiao` VALUES (180, 'rdf:rest', 'Property', 'The rest of the subject RDF list after the first item.', 'rdf:List', 'rdf:List');
INSERT INTO `kt_cibiao` VALUES (181, 'rdfs:seeAlso', 'Property', 'Further information about the subject resource.', 'rdfs:Resource', 'rdfs:Resource');
INSERT INTO `kt_cibiao` VALUES (182, 'rdfs:isDefinedBy', 'Property', 'The definition of the subject resource.', 'rdfs:Resource', 'rdfs:Resource');
INSERT INTO `kt_cibiao` VALUES (183, 'rdf:value', 'Property', 'Idiomatic property used for structured values.', 'rdfs:Resource', 'rdfs:Resource');
INSERT INTO `kt_cibiao` VALUES (184, 'rdf:subject', 'Property', 'The subject of the subject RDF statement.', 'rdf:Statement', 'rdfs:Resource');
INSERT INTO `kt_cibiao` VALUES (185, 'rdf:predicate', 'Property', 'The predicate of the subject RDF statement.', 'rdf:Statement', 'rdfs:Resource');
INSERT INTO `kt_cibiao` VALUES (186, 'rdf:object', 'Property', 'The object of the subject RDF statement.', 'rdf:Statement', 'rdfs:Resource');
INSERT INTO `kt_cibiao` VALUES (187, 'rdfs:Resource', 'Class', 'The class resource, everything.', 'rdf:Property', 'rdfs:Class');
INSERT INTO `kt_cibiao` VALUES (188, 'rdfs:Literal', 'Class', 'The class of literal values, e.g. textual strings and integers.', 'rdfs:Class', 'rdf:Property');
INSERT INTO `kt_cibiao` VALUES (189, 'rdf:langString', 'Class', 'The class of language-tagged string literal values.', 'rdf:Property', 'rdfs:Class');
INSERT INTO `kt_cibiao` VALUES (190, 'rdf:HTML', 'Class', 'The class of HTML literal values.', 'rdfs:Resource', 'rdfs:Resource');
INSERT INTO `kt_cibiao` VALUES (191, 'rdf:XMLLiteral', 'Class', 'The class of XML literal values.', 'rdf:Property', 'rdf:Property');
INSERT INTO `kt_cibiao` VALUES (192, 'rdfs:Class', 'Class', 'The class of classes.', 'rdfs:Class', 'rdfs:Resource');
INSERT INTO `kt_cibiao` VALUES (193, 'rdf:Property', 'Class', 'The class of RDF properties.', 'rdf:Property', 'rdfs:Resource');
INSERT INTO `kt_cibiao` VALUES (194, 'rdfs:Datatype', 'Class', 'The class of RDF datatypes.', 'rdfs:Class', 'rdf:Property');
INSERT INTO `kt_cibiao` VALUES (195, 'rdf:Statement', 'Class', 'The class of RDF statements.', 'rdf:Property', 'rdfs:Resource');
INSERT INTO `kt_cibiao` VALUES (196, 'rdf:Bag', 'Class', 'The class of unordered containers.', 'rdfs:Class', 'rdfs:Class');
INSERT INTO `kt_cibiao` VALUES (197, 'rdf:Seq', 'Class', 'The class of ordered containers.', 'rdfs:Class', 'rdfs:Class');
INSERT INTO `kt_cibiao` VALUES (198, 'rdf:Alt', 'Class', 'The class of containers of alternatives.', 'rdf:Property', 'rdfs:Resource');
INSERT INTO `kt_cibiao` VALUES (199, 'rdfs:Container', 'Class', 'The class of RDF containers.', 'rdf:Property', 'rdfs:Literal');
INSERT INTO `kt_cibiao` VALUES (200, 'rdfs:ContainerMembershipProperty', 'Class', 'The class of container membership properties, rdf:_1, rdf:_2, ..., all of which are sub-properties of \'member\'.', 'rdf:Property', 'rdfs:Class');
INSERT INTO `kt_cibiao` VALUES (201, 'rdf:List', 'Class', 'The class of RDF Lists.', 'rdf:Property', 'rdfs:Resource');
INSERT INTO `kt_cibiao` VALUES (202, 'rdf:type', 'Property', 'The subject is an instance of a class.', 'rdfs:Resource', 'rdfs:Class');
INSERT INTO `kt_cibiao` VALUES (203, 'rdfs:subClassOf', 'Property', 'The subject is a subclass of a class.', 'rdfs:Class', 'rdfs:Class');
INSERT INTO `kt_cibiao` VALUES (204, 'rdfs:subPropertyOf', 'Property', 'The subject is a subproperty of a property.', 'rdf:Property', 'rdf:Property');
INSERT INTO `kt_cibiao` VALUES (205, 'rdfs:domain', 'Property', 'A domain of the subject property.', 'rdf:Property', 'rdfs:Class');
INSERT INTO `kt_cibiao` VALUES (206, 'rdfs:range', 'Property', 'A range of the subject property.', 'rdf:Property', 'rdfs:Class');
INSERT INTO `kt_cibiao` VALUES (207, 'rdfs:label', 'Property', 'A human-readable name for the subject.', 'rdfs:Resource', 'rdfs:Literal');
INSERT INTO `kt_cibiao` VALUES (208, 'rdfs:comment', 'Property', 'A description of the subject resource.', 'rdfs:Resource', 'rdfs:Literal');
INSERT INTO `kt_cibiao` VALUES (209, 'rdfs:member', 'Property', 'A member of the subject resource.', 'rdfs:Resource', 'rdfs:Resource');
INSERT INTO `kt_cibiao` VALUES (210, 'rdf:first', 'Property', 'The first item in the subject RDF list.', 'rdf:List', 'rdfs:Resource');
INSERT INTO `kt_cibiao` VALUES (211, 'rdf:rest', 'Property', 'The rest of the subject RDF list after the first item.', 'rdf:List', 'rdf:List');
INSERT INTO `kt_cibiao` VALUES (212, 'rdfs:seeAlso', 'Property', 'Further information about the subject resource.', 'rdfs:Resource', 'rdfs:Resource');
INSERT INTO `kt_cibiao` VALUES (213, 'rdfs:isDefinedBy', 'Property', 'The definition of the subject resource.', 'rdfs:Resource', 'rdfs:Resource');
INSERT INTO `kt_cibiao` VALUES (214, 'rdf:value', 'Property', 'Idiomatic property used for structured values.', 'rdfs:Resource', 'rdfs:Resource');
INSERT INTO `kt_cibiao` VALUES (215, 'rdf:subject', 'Property', 'The subject of the subject RDF statement.', 'rdf:Statement', 'rdfs:Resource');
INSERT INTO `kt_cibiao` VALUES (216, 'rdf:predicate', 'Property', 'The predicate of the subject RDF statement.', 'rdf:Statement', 'rdfs:Resource');
INSERT INTO `kt_cibiao` VALUES (217, 'rdf:object', 'Property', 'The object of the subject RDF statement.', 'rdf:Statement', 'rdfs:Resource');

-- ----------------------------
-- Table structure for kt_edge
-- ----------------------------
DROP TABLE IF EXISTS `kt_edge`;
CREATE TABLE `kt_edge`  (
  `link_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'link_id',
  `l_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'l_id',
  `source` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'source',
  `relation` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'relation',
  `end_role` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'end_role',
  `end` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'end',
  `同义名称` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '同义名称',
  PRIMARY KEY (`link_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 161 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '关系查询表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of kt_edge
-- ----------------------------
INSERT INTO `kt_edge` VALUES (1, '1', 'petro', 'class-subsumption', 'subclass', 'Petro:ExplorationWell', '预探井');
INSERT INTO `kt_edge` VALUES (2, '1', 'petro', 'class-subsumption', 'rdfs:subClassOf', 'POSC:Well', '井');
INSERT INTO `kt_edge` VALUES (3, '2', 'petro', 'class-subsumption', 'subclass', 'petro:LoggingOperation', '录井作业');
INSERT INTO `kt_edge` VALUES (4, '2', 'petro', 'class-subsumption', 'rdfs:subClassOf', 'petro:Operation', '作业');
INSERT INTO `kt_edge` VALUES (5, '3', 'foaf', 'class-subsumption', 'subclass', 'foaf:Person', '负责人');
INSERT INTO `kt_edge` VALUES (6, '3', 'foaf', 'class-subsumption', 'rdfs:subClassOf', 'foaf:Agent', '主体类');
INSERT INTO `kt_edge` VALUES (7, '4', 'foaf', 'class-subsumption', 'subclass', 'foaf:Organization', '机构');
INSERT INTO `kt_edge` VALUES (8, '4', 'foaf', 'class-subsumption', 'rdfs:subClassOf', 'foaf:Agent', '主体类');
INSERT INTO `kt_edge` VALUES (9, '5', 'POSC', 'class-subsumption', 'subclass', 'POSC:general_facility', '通用设备');
INSERT INTO `kt_edge` VALUES (10, '5', 'POSC', 'class-subsumption', 'rdfs:subClassOf', 'POSC:Facility', '设备');
INSERT INTO `kt_edge` VALUES (11, '6', 'POSC', 'class-subsumption', 'subclass', 'POSC:Well', '井');
INSERT INTO `kt_edge` VALUES (12, '6', 'POSC', 'class-subsumption', 'rdfs:subClassOf', 'POSC:Facility', '设备');
INSERT INTO `kt_edge` VALUES (13, '7', 'POSC', 'class-subsumption', 'subclass', 'POSC:Wellbore', '井筒');
INSERT INTO `kt_edge` VALUES (14, '7', 'POSC', 'class-subsumption', 'rdfs:subClassOf', 'POSC:Facility', '设备');
INSERT INTO `kt_edge` VALUES (15, '8', 'POSC', 'class-subsumption', 'subclass', 'POSC:Pipeline', '管道');
INSERT INTO `kt_edge` VALUES (16, '8', 'POSC', 'class-subsumption', 'rdfs:subClassOf', 'POSC:General_facility', '通用设备');
INSERT INTO `kt_edge` VALUES (17, '9', 'POSC', 'class-subsumption', 'subclass', 'POSC:Wellhead', '井头');
INSERT INTO `kt_edge` VALUES (18, '9', 'POSC', 'class-subsumption', 'rdfs:subClassOf', 'POSC:General_facility', '通用设备');
INSERT INTO `kt_edge` VALUES (19, '10', 'POSC', 'class-subsumption', 'subclass', 'POSC:Drilling_rig', '钻井平台');
INSERT INTO `kt_edge` VALUES (20, '10', 'POSC', 'class-subsumption', 'rdfs:subClassOf', 'POSC:General_facility', '通用设备');
INSERT INTO `kt_edge` VALUES (21, '11', 'POSC', 'property-subsumption', 'subProperty', 'POSC: pty_ pressure _property', '压力');
INSERT INTO `kt_edge` VALUES (22, '11', 'POSC', 'property-subsumption', 'rdfs:subPropertyOf', 'owl:topDataProperty', '顶层数据属性');
INSERT INTO `kt_edge` VALUES (23, '12', 'POSC', 'property-subsumption', 'subProperty', 'POSC:pty_abandonment_pressure', '废弃压力');
INSERT INTO `kt_edge` VALUES (24, '12', 'POSC', 'property-subsumption', 'rdfs:subPropertyOf', 'POSC:pty_ pressure _property', '压力');
INSERT INTO `kt_edge` VALUES (25, '13', 'POSC', 'Association-relation', 'ObjectProperty', 'POSC:Wellbore', '井筒');
INSERT INTO `kt_edge` VALUES (26, '13', 'POSC', 'Association-relation', 'POSC:has_core', 'POSC:Core', '岩心');
INSERT INTO `kt_edge` VALUES (27, '14', 'POSC', 'Association-relation', 'ObjectProperty', 'POSC:Reservoir', '油藏');
INSERT INTO `kt_edge` VALUES (28, '14', 'POSC', 'Association-relation', 'POSC:has_block', 'POSC: Block', '区块');
INSERT INTO `kt_edge` VALUES (29, '15', 'POSC', 'Association-relation', 'ObjectProperty', 'POSC:Reservoir', '油藏');
INSERT INTO `kt_edge` VALUES (30, '15', 'POSC', 'Association-relation', 'POSC:has_well', 'POSC:Well', '井');
INSERT INTO `kt_edge` VALUES (31, '16', 'POSC', 'Association-relation', 'ObjectProperty', 'POSC: Block', '区块');
INSERT INTO `kt_edge` VALUES (32, '16', 'POSC', 'Association-relation', 'POSC:has_well', 'POSC:Well', '井');
INSERT INTO `kt_edge` VALUES (33, '17', 'POSC', 'Association-relation', 'ObjectProperty', 'POSC:Wellbore', '井筒');
INSERT INTO `kt_edge` VALUES (34, '17', 'POSC', 'Association-relation', 'POSC:has_wellLog', 'POSC:WellLog', '测井');
INSERT INTO `kt_edge` VALUES (35, '18', 'petro', 'Association-relation', 'ObjectProperty', 'petro:Operation', '作业');
INSERT INTO `kt_edge` VALUES (36, '18', 'petro', 'Association-relation', 'petro:isManagerOf', 'foaf:Person', '负责人');
INSERT INTO `kt_edge` VALUES (37, '19', 'petro', 'Association-relation', 'ObjectProperty', 'petro:Operation', '作业');
INSERT INTO `kt_edge` VALUES (38, '19', 'petro', 'Association-relation', 'petro:isApplicationOf', 'POSC:Facility', '设备');
INSERT INTO `kt_edge` VALUES (39, '20', 'POSC', 'class-subsumption', 'subclass', 'POSC:Low-permeable Reservoir', '低渗透油藏');
INSERT INTO `kt_edge` VALUES (40, '20', 'POSC', 'class-subsumption', 'rdfs:subClassOf', 'POSC:Reservoir ', '油藏');
INSERT INTO `kt_edge` VALUES (41, '1', 'petro', 'class-subsumption', 'subclass', 'Petro:ExplorationWell', '预探井');
INSERT INTO `kt_edge` VALUES (42, '1', 'petro', 'class-subsumption', 'rdfs:subClassOf', 'POSC:Well', '井');
INSERT INTO `kt_edge` VALUES (43, '2', 'petro', 'class-subsumption', 'subclass', 'petro:LoggingOperation', '录井作业');
INSERT INTO `kt_edge` VALUES (44, '2', 'petro', 'class-subsumption', 'rdfs:subClassOf', 'petro:Operation', '作业');
INSERT INTO `kt_edge` VALUES (45, '3', 'foaf', 'class-subsumption', 'subclass', 'foaf:Person', '负责人');
INSERT INTO `kt_edge` VALUES (46, '3', 'foaf', 'class-subsumption', 'rdfs:subClassOf', 'foaf:Agent', '主体类');
INSERT INTO `kt_edge` VALUES (47, '4', 'foaf', 'class-subsumption', 'subclass', 'foaf:Organization', '机构');
INSERT INTO `kt_edge` VALUES (48, '4', 'foaf', 'class-subsumption', 'rdfs:subClassOf', 'foaf:Agent', '主体类');
INSERT INTO `kt_edge` VALUES (49, '5', 'POSC', 'class-subsumption', 'subclass', 'POSC:general_facility', '通用设备');
INSERT INTO `kt_edge` VALUES (50, '5', 'POSC', 'class-subsumption', 'rdfs:subClassOf', 'POSC:Facility', '设备');
INSERT INTO `kt_edge` VALUES (51, '6', 'POSC', 'class-subsumption', 'subclass', 'POSC:Well', '井');
INSERT INTO `kt_edge` VALUES (52, '6', 'POSC', 'class-subsumption', 'rdfs:subClassOf', 'POSC:Facility', '设备');
INSERT INTO `kt_edge` VALUES (53, '7', 'POSC', 'class-subsumption', 'subclass', 'POSC:Wellbore', '井筒');
INSERT INTO `kt_edge` VALUES (54, '7', 'POSC', 'class-subsumption', 'rdfs:subClassOf', 'POSC:Facility', '设备');
INSERT INTO `kt_edge` VALUES (55, '8', 'POSC', 'class-subsumption', 'subclass', 'POSC:Pipeline', '管道');
INSERT INTO `kt_edge` VALUES (56, '8', 'POSC', 'class-subsumption', 'rdfs:subClassOf', 'POSC:General_facility', '通用设备');
INSERT INTO `kt_edge` VALUES (57, '9', 'POSC', 'class-subsumption', 'subclass', 'POSC:Wellhead', '井头');
INSERT INTO `kt_edge` VALUES (58, '9', 'POSC', 'class-subsumption', 'rdfs:subClassOf', 'POSC:General_facility', '通用设备');
INSERT INTO `kt_edge` VALUES (59, '10', 'POSC', 'class-subsumption', 'subclass', 'POSC:Drilling_rig', '钻井平台');
INSERT INTO `kt_edge` VALUES (60, '10', 'POSC', 'class-subsumption', 'rdfs:subClassOf', 'POSC:General_facility', '通用设备');
INSERT INTO `kt_edge` VALUES (61, '11', 'POSC', 'property-subsumption', 'subProperty', 'POSC: pty_ pressure _property', '压力');
INSERT INTO `kt_edge` VALUES (62, '11', 'POSC', 'property-subsumption', 'rdfs:subPropertyOf', 'owl:topDataProperty', '顶层数据属性');
INSERT INTO `kt_edge` VALUES (63, '12', 'POSC', 'property-subsumption', 'subProperty', 'POSC:pty_abandonment_pressure', '废弃压力');
INSERT INTO `kt_edge` VALUES (64, '12', 'POSC', 'property-subsumption', 'rdfs:subPropertyOf', 'POSC:pty_ pressure _property', '压力');
INSERT INTO `kt_edge` VALUES (65, '13', 'POSC', 'Association-relation', 'ObjectProperty', 'POSC:Wellbore', '井筒');
INSERT INTO `kt_edge` VALUES (66, '13', 'POSC', 'Association-relation', 'POSC:has_core', 'POSC:Core', '岩心');
INSERT INTO `kt_edge` VALUES (67, '14', 'POSC', 'Association-relation', 'ObjectProperty', 'POSC:Reservoir', '油藏');
INSERT INTO `kt_edge` VALUES (68, '14', 'POSC', 'Association-relation', 'POSC:has_block', 'POSC: Block', '区块');
INSERT INTO `kt_edge` VALUES (69, '15', 'POSC', 'Association-relation', 'ObjectProperty', 'POSC:Reservoir', '油藏');
INSERT INTO `kt_edge` VALUES (70, '15', 'POSC', 'Association-relation', 'POSC:has_well', 'POSC:Well', '井');
INSERT INTO `kt_edge` VALUES (71, '16', 'POSC', 'Association-relation', 'ObjectProperty', 'POSC: Block', '区块');
INSERT INTO `kt_edge` VALUES (72, '16', 'POSC', 'Association-relation', 'POSC:has_well', 'POSC:Well', '井');
INSERT INTO `kt_edge` VALUES (73, '17', 'POSC', 'Association-relation', 'ObjectProperty', 'POSC:Wellbore', '井筒');
INSERT INTO `kt_edge` VALUES (74, '17', 'POSC', 'Association-relation', 'POSC:has_wellLog', 'POSC:WellLog', '测井');
INSERT INTO `kt_edge` VALUES (75, '18', 'petro', 'Association-relation', 'ObjectProperty', 'petro:Operation', '作业');
INSERT INTO `kt_edge` VALUES (76, '18', 'petro', 'Association-relation', 'petro:isManagerOf', 'foaf:Person', '负责人');
INSERT INTO `kt_edge` VALUES (77, '19', 'petro', 'Association-relation', 'ObjectProperty', 'petro:Operation', '作业');
INSERT INTO `kt_edge` VALUES (78, '19', 'petro', 'Association-relation', 'petro:isApplicationOf', 'POSC:Facility', '设备');
INSERT INTO `kt_edge` VALUES (79, '20', 'POSC', 'class-subsumption', 'subclass', 'POSC:Low-permeable Reservoir', '低渗透油藏');
INSERT INTO `kt_edge` VALUES (80, '20', 'POSC', 'class-subsumption', 'rdfs:subClassOf', 'POSC:Reservoir ', '油藏');
INSERT INTO `kt_edge` VALUES (81, '1', 'petro', 'class-subsumption', 'subclass', 'Petro:ExplorationWell', '预探井');
INSERT INTO `kt_edge` VALUES (82, '1', 'petro', 'class-subsumption', 'rdfs:subClassOf', 'POSC:Well', '井');
INSERT INTO `kt_edge` VALUES (83, '2', 'petro', 'class-subsumption', 'subclass', 'petro:LoggingOperation', '录井作业');
INSERT INTO `kt_edge` VALUES (84, '2', 'petro', 'class-subsumption', 'rdfs:subClassOf', 'petro:Operation', '作业');
INSERT INTO `kt_edge` VALUES (85, '3', 'foaf', 'class-subsumption', 'subclass', 'foaf:Person', '负责人');
INSERT INTO `kt_edge` VALUES (86, '3', 'foaf', 'class-subsumption', 'rdfs:subClassOf', 'foaf:Agent', '主体类');
INSERT INTO `kt_edge` VALUES (87, '4', 'foaf', 'class-subsumption', 'subclass', 'foaf:Organization', '机构');
INSERT INTO `kt_edge` VALUES (88, '4', 'foaf', 'class-subsumption', 'rdfs:subClassOf', 'foaf:Agent', '主体类');
INSERT INTO `kt_edge` VALUES (89, '5', 'POSC', 'class-subsumption', 'subclass', 'POSC:general_facility', '通用设备');
INSERT INTO `kt_edge` VALUES (90, '5', 'POSC', 'class-subsumption', 'rdfs:subClassOf', 'POSC:Facility', '设备');
INSERT INTO `kt_edge` VALUES (91, '6', 'POSC', 'class-subsumption', 'subclass', 'POSC:Well', '井');
INSERT INTO `kt_edge` VALUES (92, '6', 'POSC', 'class-subsumption', 'rdfs:subClassOf', 'POSC:Facility', '设备');
INSERT INTO `kt_edge` VALUES (93, '7', 'POSC', 'class-subsumption', 'subclass', 'POSC:Wellbore', '井筒');
INSERT INTO `kt_edge` VALUES (94, '7', 'POSC', 'class-subsumption', 'rdfs:subClassOf', 'POSC:Facility', '设备');
INSERT INTO `kt_edge` VALUES (95, '8', 'POSC', 'class-subsumption', 'subclass', 'POSC:Pipeline', '管道');
INSERT INTO `kt_edge` VALUES (96, '8', 'POSC', 'class-subsumption', 'rdfs:subClassOf', 'POSC:General_facility', '通用设备');
INSERT INTO `kt_edge` VALUES (97, '9', 'POSC', 'class-subsumption', 'subclass', 'POSC:Wellhead', '井头');
INSERT INTO `kt_edge` VALUES (98, '9', 'POSC', 'class-subsumption', 'rdfs:subClassOf', 'POSC:General_facility', '通用设备');
INSERT INTO `kt_edge` VALUES (99, '10', 'POSC', 'class-subsumption', 'subclass', 'POSC:Drilling_rig', '钻井平台');
INSERT INTO `kt_edge` VALUES (100, '10', 'POSC', 'class-subsumption', 'rdfs:subClassOf', 'POSC:General_facility', '通用设备');
INSERT INTO `kt_edge` VALUES (101, '11', 'POSC', 'property-subsumption', 'subProperty', 'POSC: pty_ pressure _property', '压力');
INSERT INTO `kt_edge` VALUES (102, '11', 'POSC', 'property-subsumption', 'rdfs:subPropertyOf', 'owl:topDataProperty', '顶层数据属性');
INSERT INTO `kt_edge` VALUES (103, '12', 'POSC', 'property-subsumption', 'subProperty', 'POSC:pty_abandonment_pressure', '废弃压力');
INSERT INTO `kt_edge` VALUES (104, '12', 'POSC', 'property-subsumption', 'rdfs:subPropertyOf', 'POSC:pty_ pressure _property', '压力');
INSERT INTO `kt_edge` VALUES (105, '13', 'POSC', 'Association-relation', 'ObjectProperty', 'POSC:Wellbore', '井筒');
INSERT INTO `kt_edge` VALUES (106, '13', 'POSC', 'Association-relation', 'POSC:has_core', 'POSC:Core', '岩心');
INSERT INTO `kt_edge` VALUES (107, '14', 'POSC', 'Association-relation', 'ObjectProperty', 'POSC:Reservoir', '油藏');
INSERT INTO `kt_edge` VALUES (108, '14', 'POSC', 'Association-relation', 'POSC:has_block', 'POSC: Block', '区块');
INSERT INTO `kt_edge` VALUES (109, '15', 'POSC', 'Association-relation', 'ObjectProperty', 'POSC:Reservoir', '油藏');
INSERT INTO `kt_edge` VALUES (110, '15', 'POSC', 'Association-relation', 'POSC:has_well', 'POSC:Well', '井');
INSERT INTO `kt_edge` VALUES (111, '16', 'POSC', 'Association-relation', 'ObjectProperty', 'POSC: Block', '区块');
INSERT INTO `kt_edge` VALUES (112, '16', 'POSC', 'Association-relation', 'POSC:has_well', 'POSC:Well', '井');
INSERT INTO `kt_edge` VALUES (113, '17', 'POSC', 'Association-relation', 'ObjectProperty', 'POSC:Wellbore', '井筒');
INSERT INTO `kt_edge` VALUES (114, '17', 'POSC', 'Association-relation', 'POSC:has_wellLog', 'POSC:WellLog', '测井');
INSERT INTO `kt_edge` VALUES (115, '18', 'petro', 'Association-relation', 'ObjectProperty', 'petro:Operation', '作业');
INSERT INTO `kt_edge` VALUES (116, '18', 'petro', 'Association-relation', 'petro:isManagerOf', 'foaf:Person', '负责人');
INSERT INTO `kt_edge` VALUES (117, '19', 'petro', 'Association-relation', 'ObjectProperty', 'petro:Operation', '作业');
INSERT INTO `kt_edge` VALUES (118, '19', 'petro', 'Association-relation', 'petro:isApplicationOf', 'POSC:Facility', '设备');
INSERT INTO `kt_edge` VALUES (119, '20', 'POSC', 'class-subsumption', 'subclass', 'POSC:Low-permeable Reservoir', '低渗透油藏');
INSERT INTO `kt_edge` VALUES (120, '20', 'POSC', 'class-subsumption', 'rdfs:subClassOf', 'POSC:Reservoir ', '油藏');
INSERT INTO `kt_edge` VALUES (121, '1', 'petro', 'class-subsumption', 'subclass', 'Petro:ExplorationWell', '预探井');
INSERT INTO `kt_edge` VALUES (122, '1', 'petro', 'class-subsumption', 'rdfs:subClassOf', 'POSC:Well', '井');
INSERT INTO `kt_edge` VALUES (123, '2', 'petro', 'class-subsumption', 'subclass', 'petro:LoggingOperation', '录井作业');
INSERT INTO `kt_edge` VALUES (124, '2', 'petro', 'class-subsumption', 'rdfs:subClassOf', 'petro:Operation', '作业');
INSERT INTO `kt_edge` VALUES (125, '3', 'foaf', 'class-subsumption', 'subclass', 'foaf:Person', '负责人');
INSERT INTO `kt_edge` VALUES (126, '3', 'foaf', 'class-subsumption', 'rdfs:subClassOf', 'foaf:Agent', '主体类');
INSERT INTO `kt_edge` VALUES (127, '4', 'foaf', 'class-subsumption', 'subclass', 'foaf:Organization', '机构');
INSERT INTO `kt_edge` VALUES (128, '4', 'foaf', 'class-subsumption', 'rdfs:subClassOf', 'foaf:Agent', '主体类');
INSERT INTO `kt_edge` VALUES (129, '5', 'POSC', 'class-subsumption', 'subclass', 'POSC:general_facility', '通用设备');
INSERT INTO `kt_edge` VALUES (130, '5', 'POSC', 'class-subsumption', 'rdfs:subClassOf', 'POSC:Facility', '设备');
INSERT INTO `kt_edge` VALUES (131, '6', 'POSC', 'class-subsumption', 'subclass', 'POSC:Well', '井');
INSERT INTO `kt_edge` VALUES (132, '6', 'POSC', 'class-subsumption', 'rdfs:subClassOf', 'POSC:Facility', '设备');
INSERT INTO `kt_edge` VALUES (133, '7', 'POSC', 'class-subsumption', 'subclass', 'POSC:Wellbore', '井筒');
INSERT INTO `kt_edge` VALUES (134, '7', 'POSC', 'class-subsumption', 'rdfs:subClassOf', 'POSC:Facility', '设备');
INSERT INTO `kt_edge` VALUES (135, '8', 'POSC', 'class-subsumption', 'subclass', 'POSC:Pipeline', '管道');
INSERT INTO `kt_edge` VALUES (136, '8', 'POSC', 'class-subsumption', 'rdfs:subClassOf', 'POSC:General_facility', '通用设备');
INSERT INTO `kt_edge` VALUES (137, '9', 'POSC', 'class-subsumption', 'subclass', 'POSC:Wellhead', '井头');
INSERT INTO `kt_edge` VALUES (138, '9', 'POSC', 'class-subsumption', 'rdfs:subClassOf', 'POSC:General_facility', '通用设备');
INSERT INTO `kt_edge` VALUES (139, '10', 'POSC', 'class-subsumption', 'subclass', 'POSC:Drilling_rig', '钻井平台');
INSERT INTO `kt_edge` VALUES (140, '10', 'POSC', 'class-subsumption', 'rdfs:subClassOf', 'POSC:General_facility', '通用设备');
INSERT INTO `kt_edge` VALUES (141, '11', 'POSC', 'property-subsumption', 'subProperty', 'POSC: pty_ pressure _property', '压力');
INSERT INTO `kt_edge` VALUES (142, '11', 'POSC', 'property-subsumption', 'rdfs:subPropertyOf', 'owl:topDataProperty', '顶层数据属性');
INSERT INTO `kt_edge` VALUES (143, '12', 'POSC', 'property-subsumption', 'subProperty', 'POSC:pty_abandonment_pressure', '废弃压力');
INSERT INTO `kt_edge` VALUES (144, '12', 'POSC', 'property-subsumption', 'rdfs:subPropertyOf', 'POSC:pty_ pressure _property', '压力');
INSERT INTO `kt_edge` VALUES (145, '13', 'POSC', 'Association-relation', 'ObjectProperty', 'POSC:Wellbore', '井筒');
INSERT INTO `kt_edge` VALUES (146, '13', 'POSC', 'Association-relation', 'POSC:has_core', 'POSC:Core', '岩心');
INSERT INTO `kt_edge` VALUES (147, '14', 'POSC', 'Association-relation', 'ObjectProperty', 'POSC:Reservoir', '油藏');
INSERT INTO `kt_edge` VALUES (148, '14', 'POSC', 'Association-relation', 'POSC:has_block', 'POSC: Block', '区块');
INSERT INTO `kt_edge` VALUES (149, '15', 'POSC', 'Association-relation', 'ObjectProperty', 'POSC:Reservoir', '油藏');
INSERT INTO `kt_edge` VALUES (150, '15', 'POSC', 'Association-relation', 'POSC:has_well', 'POSC:Well', '井');
INSERT INTO `kt_edge` VALUES (151, '16', 'POSC', 'Association-relation', 'ObjectProperty', 'POSC: Block', '区块');
INSERT INTO `kt_edge` VALUES (152, '16', 'POSC', 'Association-relation', 'POSC:has_well', 'POSC:Well', '井');
INSERT INTO `kt_edge` VALUES (153, '17', 'POSC', 'Association-relation', 'ObjectProperty', 'POSC:Wellbore', '井筒');
INSERT INTO `kt_edge` VALUES (154, '17', 'POSC', 'Association-relation', 'POSC:has_wellLog', 'POSC:WellLog', '测井');
INSERT INTO `kt_edge` VALUES (155, '18', 'petro', 'Association-relation', 'ObjectProperty', 'petro:Operation', '作业');
INSERT INTO `kt_edge` VALUES (156, '18', 'petro', 'Association-relation', 'petro:isManagerOf', 'foaf:Person', '负责人');
INSERT INTO `kt_edge` VALUES (157, '19', 'petro', 'Association-relation', 'ObjectProperty', 'petro:Operation', '作业');
INSERT INTO `kt_edge` VALUES (158, '19', 'petro', 'Association-relation', 'petro:isApplicationOf', 'POSC:Facility', '设备');
INSERT INTO `kt_edge` VALUES (159, '20', 'POSC', 'class-subsumption', 'subclass', 'POSC:Low-permeable Reservoir', '低渗透油藏');
INSERT INTO `kt_edge` VALUES (160, '20', 'POSC', 'class-subsumption', 'rdfs:subClassOf', 'POSC:Reservoir ', '油藏');

-- ----------------------------
-- Table structure for kt_element
-- ----------------------------
DROP TABLE IF EXISTS `kt_element`;
CREATE TABLE `kt_element`  (
  `编号` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `数据元名称` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '数据元名称',
  `对象类限定词` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '对象类限定词',
  `对象类` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '对象类',
  `特性类限定词` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '特性类限定词',
  `特性类` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '特性类',
  `表示类` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '表示类',
  `计量单位` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '计量单位',
  PRIMARY KEY (`编号`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 110 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '数据元目录表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of kt_element
-- ----------------------------
INSERT INTO `kt_element` VALUES (1, '采油井原油日产量', '采油井', '原油', '日', '产量', '产量（值）', 'T/D');
INSERT INTO `kt_element` VALUES (2, '生产层有效渗透率', '无', '生产层', '有效', '渗透率', '渗透率（值）', 'mD');
INSERT INTO `kt_element` VALUES (3, '井垂直深度', '无', '井', '垂直', '深度', '深度（值）', '米');
INSERT INTO `kt_element` VALUES (4, '井名', '无', '井', '无', '名称', '名称（字符串）', '无');
INSERT INTO `kt_element` VALUES (5, '项目负责人姓名', '项目', '负责人', '无', '姓名', '名称（字符串）', '无');
INSERT INTO `kt_element` VALUES (6, '项目负责人职位', '项目', '负责人', '无', '职位', '职位（字符串）', '无');
INSERT INTO `kt_element` VALUES (7, '录井报告日期', '录井', '报告', '无', '日期', '时间（日期）', '年/月/日');
INSERT INTO `kt_element` VALUES (8, '测试项目费用', '测试', '项目', '无', '费用', '金额（值）', '元');
INSERT INTO `kt_element` VALUES (9, '射孔密度', '无', '射孔', '无', '密度', '密度（值）', '孔/米');
INSERT INTO `kt_element` VALUES (10, '原油密度', '无', '原油', '无', '密度', '密度（值）', 'kg/m3');
INSERT INTO `kt_element` VALUES (11, '生产层有效渗透率', '无', '生产层', '有效', '渗透率', '渗透率（值）', 'mD');
INSERT INTO `kt_element` VALUES (12, '井垂直深度', '无', '井', '垂直', '深度', '深度（值）', '米');
INSERT INTO `kt_element` VALUES (13, '井名', '无', '井', '无', '名称', '名称（字符串）', '无');
INSERT INTO `kt_element` VALUES (14, '项目负责人姓名', '项目', '负责人', '无', '姓名', '名称（字符串）', '无');
INSERT INTO `kt_element` VALUES (15, '项目负责人职位', '项目', '负责人', '无', '职位', '职位（字符串）', '无');
INSERT INTO `kt_element` VALUES (16, '录井报告日期', '录井', '报告', '无', '日期', '时间（日期）', '年/月/日');
INSERT INTO `kt_element` VALUES (17, '测试项目费用', '测试', '项目', '无', '费用', '金额（值）', '元');
INSERT INTO `kt_element` VALUES (18, '射孔密度', '无', '射孔', '无', '密度', '密度（值）', '孔/米');
INSERT INTO `kt_element` VALUES (19, '采油井原油日产量', '采油井', '原油', '日', '产量', '产量（值）', 'T/D');
INSERT INTO `kt_element` VALUES (20, '采油井原油日产量', '采油井', '原油', '日', '产量', '产量（值）', 'T/D');
INSERT INTO `kt_element` VALUES (21, '生产层有效渗透率', '无', '生产层', '有效', '渗透率', '渗透率（值）', 'mD');
INSERT INTO `kt_element` VALUES (22, '井垂直深度', '无', '井', '垂直', '深度', '深度（值）', '米');
INSERT INTO `kt_element` VALUES (23, '井名', '无', '井', '无', '名称', '名称（字符串）', '无');
INSERT INTO `kt_element` VALUES (24, '项目负责人姓名', '项目', '负责人', '无', '姓名', '名称（字符串）', '无');
INSERT INTO `kt_element` VALUES (25, '项目负责人职位', '项目', '负责人', '无', '职位', '职位（字符串）', '无');
INSERT INTO `kt_element` VALUES (26, '录井报告日期', '录井', '报告', '无', '日期', '时间（日期）', '年/月/日');
INSERT INTO `kt_element` VALUES (27, '测试项目费用', '测试', '项目', '无', '费用', '金额（值）', '元');
INSERT INTO `kt_element` VALUES (28, '射孔密度', '无', '射孔', '无', '密度', '密度（值）', '孔/米');
INSERT INTO `kt_element` VALUES (29, '原油密度', '无', '原油', '无', '密度', '密度（值）', 'kg/m3');
INSERT INTO `kt_element` VALUES (30, '采油井原油日产量', '采油井', '原油', '日', '产量', '产量（值）', 'T/D');
INSERT INTO `kt_element` VALUES (31, '生产层有效渗透率', '无', '生产层', '有效', '渗透率', '渗透率（值）', 'mD');
INSERT INTO `kt_element` VALUES (32, '井垂直深度', '无', '井', '垂直', '深度', '深度（值）', '米');
INSERT INTO `kt_element` VALUES (33, '井名', '无', '井', '无', '名称', '名称（字符串）', '无');
INSERT INTO `kt_element` VALUES (34, '项目负责人姓名', '项目', '负责人', '无', '姓名', '名称（字符串）', '无');
INSERT INTO `kt_element` VALUES (35, '项目负责人职位', '项目', '负责人', '无', '职位', '职位（字符串）', '无');
INSERT INTO `kt_element` VALUES (36, '录井报告日期', '录井', '报告', '无', '日期', '时间（日期）', '年/月/日');
INSERT INTO `kt_element` VALUES (37, '测试项目费用', '测试', '项目', '无', '费用', '金额（值）', '元');
INSERT INTO `kt_element` VALUES (38, '射孔密度', '无', '射孔', '无', '密度', '密度（值）', '孔/米');
INSERT INTO `kt_element` VALUES (39, '原油密度', '无', '原油', '无', '密度', '密度（值）', 'kg/m3');
INSERT INTO `kt_element` VALUES (40, '采油井原油日产量', '采油井', '原油', '日', '产量', '产量（值）', 'T/D');
INSERT INTO `kt_element` VALUES (41, '生产层有效渗透率', '无', '生产层', '有效', '渗透率', '渗透率（值）', 'mD');
INSERT INTO `kt_element` VALUES (42, '井垂直深度', '无', '井', '垂直', '深度', '深度（值）', '米');
INSERT INTO `kt_element` VALUES (43, '井名', '无', '井', '无', '名称', '名称（字符串）', '无');
INSERT INTO `kt_element` VALUES (44, '项目负责人姓名', '项目', '负责人', '无', '姓名', '名称（字符串）', '无');
INSERT INTO `kt_element` VALUES (45, '项目负责人职位', '项目', '负责人', '无', '职位', '职位（字符串）', '无');
INSERT INTO `kt_element` VALUES (46, '录井报告日期', '录井', '报告', '无', '日期', '时间（日期）', '年/月/日');
INSERT INTO `kt_element` VALUES (47, '测试项目费用', '测试', '项目', '无', '费用', '金额（值）', '元');
INSERT INTO `kt_element` VALUES (48, '射孔密度', '无', '射孔', '无', '密度', '密度（值）', '孔/米');
INSERT INTO `kt_element` VALUES (49, '原油密度', '无', '原油', '无', '密度', '密度（值）', 'kg/m3');
INSERT INTO `kt_element` VALUES (50, '采油井原油日产量', '采油井', '原油', '日', '产量', '产量（值）', 'T/D');
INSERT INTO `kt_element` VALUES (51, '生产层有效渗透率', '无', '生产层', '有效', '渗透率', '渗透率（值）', 'mD');
INSERT INTO `kt_element` VALUES (52, '井垂直深度', '无', '井', '垂直', '深度', '深度（值）', '米');
INSERT INTO `kt_element` VALUES (53, '井名', '无', '井', '无', '名称', '名称（字符串）', '无');
INSERT INTO `kt_element` VALUES (54, '项目负责人姓名', '项目', '负责人', '无', '姓名', '名称（字符串）', '无');
INSERT INTO `kt_element` VALUES (55, '项目负责人职位', '项目', '负责人', '无', '职位', '职位（字符串）', '无');
INSERT INTO `kt_element` VALUES (56, '录井报告日期', '录井', '报告', '无', '日期', '时间（日期）', '年/月/日');
INSERT INTO `kt_element` VALUES (57, '测试项目费用', '测试', '项目', '无', '费用', '金额（值）', '元');
INSERT INTO `kt_element` VALUES (58, '射孔密度', '无', '射孔', '无', '密度', '密度（值）', '孔/米');
INSERT INTO `kt_element` VALUES (59, '原油密度', '无', '原油', '无', '密度', '密度（值）', 'kg/m3');
INSERT INTO `kt_element` VALUES (60, '采油井原油日产量', '采油井', '原油', '日', '产量', '产量（值）', 'T/D');
INSERT INTO `kt_element` VALUES (61, '生产层有效渗透率', '无', '生产层', '有效', '渗透率', '渗透率（值）', 'mD');
INSERT INTO `kt_element` VALUES (62, '井垂直深度', '无', '井', '垂直', '深度', '深度（值）', '米');
INSERT INTO `kt_element` VALUES (63, '井名', '无', '井', '无', '名称', '名称（字符串）', '无');
INSERT INTO `kt_element` VALUES (64, '项目负责人姓名', '项目', '负责人', '无', '姓名', '名称（字符串）', '无');
INSERT INTO `kt_element` VALUES (65, '项目负责人职位', '项目', '负责人', '无', '职位', '职位（字符串）', '无');
INSERT INTO `kt_element` VALUES (66, '录井报告日期', '录井', '报告', '无', '日期', '时间（日期）', '年/月/日');
INSERT INTO `kt_element` VALUES (67, '测试项目费用', '测试', '项目', '无', '费用', '金额（值）', '元');
INSERT INTO `kt_element` VALUES (68, '射孔密度', '无', '射孔', '无', '密度', '密度（值）', '孔/米');
INSERT INTO `kt_element` VALUES (69, '原油密度', '无', '原油', '无', '密度', '密度（值）', 'kg/m3');
INSERT INTO `kt_element` VALUES (70, '采油井原油日产量', '采油井', '原油', '日', '产量', '产量（值）', 'T/D');
INSERT INTO `kt_element` VALUES (71, '生产层有效渗透率', '无', '生产层', '有效', '渗透率', '渗透率（值）', 'mD');
INSERT INTO `kt_element` VALUES (72, '井垂直深度', '无', '井', '垂直', '深度', '深度（值）', '米');
INSERT INTO `kt_element` VALUES (73, '井名', '无', '井', '无', '名称', '名称（字符串）', '无');
INSERT INTO `kt_element` VALUES (74, '项目负责人姓名', '项目', '负责人', '无', '姓名', '名称（字符串）', '无');
INSERT INTO `kt_element` VALUES (75, '项目负责人职位', '项目', '负责人', '无', '职位', '职位（字符串）', '无');
INSERT INTO `kt_element` VALUES (76, '录井报告日期', '录井', '报告', '无', '日期', '时间（日期）', '年/月/日');
INSERT INTO `kt_element` VALUES (77, '测试项目费用', '测试', '项目', '无', '费用', '金额（值）', '元');
INSERT INTO `kt_element` VALUES (78, '射孔密度', '无', '射孔', '无', '密度', '密度（值）', '孔/米');
INSERT INTO `kt_element` VALUES (79, '原油密度', '无', '原油', '无', '密度', '密度（值）', 'kg/m3');
INSERT INTO `kt_element` VALUES (80, '采油井原油日产量', '采油井', '原油', '日', '产量', '产量（值）', 'T/D');
INSERT INTO `kt_element` VALUES (81, '生产层有效渗透率', '无', '生产层', '有效', '渗透率', '渗透率（值）', 'mD');
INSERT INTO `kt_element` VALUES (82, '井垂直深度', '无', '井', '垂直', '深度', '深度（值）', '米');
INSERT INTO `kt_element` VALUES (83, '井名', '无', '井', '无', '名称', '名称（字符串）', '无');
INSERT INTO `kt_element` VALUES (84, '项目负责人姓名', '项目', '负责人', '无', '姓名', '名称（字符串）', '无');
INSERT INTO `kt_element` VALUES (85, '项目负责人职位', '项目', '负责人', '无', '职位', '职位（字符串）', '无');
INSERT INTO `kt_element` VALUES (86, '录井报告日期', '录井', '报告', '无', '日期', '时间（日期）', '年/月/日');
INSERT INTO `kt_element` VALUES (87, '测试项目费用', '测试', '项目', '无', '费用', '金额（值）', '元');
INSERT INTO `kt_element` VALUES (88, '射孔密度', '无', '射孔', '无', '密度', '密度（值）', '孔/米');
INSERT INTO `kt_element` VALUES (89, '原油密度', '无', '原油', '无', '密度', '密度（值）', 'kg/m3');
INSERT INTO `kt_element` VALUES (90, '采油井原油日产量', '采油井', '原油', '日', '产量', '产量（值）', 'T/D');
INSERT INTO `kt_element` VALUES (91, '生产层有效渗透率', '无', '生产层', '有效', '渗透率', '渗透率（值）', 'mD');
INSERT INTO `kt_element` VALUES (92, '井垂直深度', '无', '井', '垂直', '深度', '深度（值）', '米');
INSERT INTO `kt_element` VALUES (93, '井名', '无', '井', '无', '名称', '名称（字符串）', '无');
INSERT INTO `kt_element` VALUES (94, '项目负责人姓名', '项目', '负责人', '无', '姓名', '名称（字符串）', '无');
INSERT INTO `kt_element` VALUES (95, '项目负责人职位', '项目', '负责人', '无', '职位', '职位（字符串）', '无');
INSERT INTO `kt_element` VALUES (96, '录井报告日期', '录井', '报告', '无', '日期', '时间（日期）', '年/月/日');
INSERT INTO `kt_element` VALUES (97, '测试项目费用', '测试', '项目', '无', '费用', '金额（值）', '元');
INSERT INTO `kt_element` VALUES (98, '射孔密度', '无', '射孔', '无', '密度', '密度（值）', '孔/米');
INSERT INTO `kt_element` VALUES (99, '原油密度', '无', '原油', '无', '密度', '密度（值）', 'kg/m3');
INSERT INTO `kt_element` VALUES (100, '采油井原油日产量', '采油井', '原油', '日', '产量', '产量（值）', 'T/D');
INSERT INTO `kt_element` VALUES (101, '生产层有效渗透率', '无', '生产层', '有效', '渗透率', '渗透率（值）', 'mD');
INSERT INTO `kt_element` VALUES (102, '井垂直深度', '无', '井', '垂直', '深度', '深度（值）', '米');
INSERT INTO `kt_element` VALUES (103, '井名', '无', '井', '无', '名称', '名称（字符串）', '无');
INSERT INTO `kt_element` VALUES (104, '项目负责人姓名', '项目', '负责人', '无', '姓名', '名称（字符串）', '无');
INSERT INTO `kt_element` VALUES (105, '项目负责人职位', '项目', '负责人', '无', '职位', '职位（字符串）', '无');
INSERT INTO `kt_element` VALUES (106, '录井报告日期', '录井', '报告', '无', '日期', '时间（日期）', '年/月/日');
INSERT INTO `kt_element` VALUES (107, '测试项目费用', '测试', '项目', '无', '费用', '金额（值）', '元');
INSERT INTO `kt_element` VALUES (108, '射孔密度', '无', '射孔', '无', '密度', '密度（值）', '孔/米');
INSERT INTO `kt_element` VALUES (109, '原油密度', '无', '原油', '无', '密度', '密度（值）', 'kg/m3');

-- ----------------------------
-- Table structure for kt_mean
-- ----------------------------
DROP TABLE IF EXISTS `kt_mean`;
CREATE TABLE `kt_mean`  (
  `编号` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `值含义` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '值含义',
  PRIMARY KEY (`编号`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '值含义注册表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of kt_mean
-- ----------------------------
INSERT INTO `kt_mean` VALUES (1, '伽马测井');
INSERT INTO `kt_mean` VALUES (2, '井径测井');
INSERT INTO `kt_mean` VALUES (3, '自然电位测井');

-- ----------------------------
-- Table structure for kt_mingming
-- ----------------------------
DROP TABLE IF EXISTS `kt_mingming`;
CREATE TABLE `kt_mingming`  (
  `mm_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'mm_id',
  `prefix` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'Prefix',
  `namespace` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'Namespace',
  `authority` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'Authority',
  `reference` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'Reference',
  PRIMARY KEY (`mm_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '命名空间管理表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of kt_mingming
-- ----------------------------
INSERT INTO `kt_mingming` VALUES (1, 'foaf', 'http://xmlns.com/foaf/0.1/', 'W3C', 'https://www.w3.org/TR/vocab-org/#bib-FOAF');
INSERT INTO `kt_mingming` VALUES (3, 'prov', 'http://www.w3.org/ns/prov#', 'W3C', 'https://www.w3.org/TR/vocab-org/#bib-prov-o');
INSERT INTO `kt_mingming` VALUES (4, 'org', 'http://www.w3.org/ns/org#', 'W3C', 'https://www.w3.org/TR/vocab-org/#bib-RDF-SCHEMA');
INSERT INTO `kt_mingming` VALUES (5, 'owl', 'http://www.w3.org/2002/07/owl#', 'W3C', 'https://www.w3.org/TR/vocab-org/#bib-OWL2-PRIMER');
INSERT INTO `kt_mingming` VALUES (7, 'rdf', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#', 'W3C', 'https://www.w3.org/TR/vocab-org/#bib-RDF-CONCEPTS');
INSERT INTO `kt_mingming` VALUES (8, 'dct', 'http://purl.org/dc/terms/', 'W3C', 'https://www.w3.org/TR/vocab-org/#bib-DC11');
INSERT INTO `kt_mingming` VALUES (9, 'PIDD', 'https://pidx.org/standards/', 'PIDD', 'https://pidx.org/standards/');
INSERT INTO `kt_mingming` VALUES (10, 'POSC', 'http://w3.energistics.org/archive/Epicentre/', 'POSC', 'http://w3.energistics.org/archive/Epicentre/Epicentre_v3.0/index.html');
INSERT INTO `kt_mingming` VALUES (11, 'petro', 'https://www.cupdst.org/2022/12/petro#', 'E&P CUP', 'https://pidx.org/standards/');
INSERT INTO `kt_mingming` VALUES (12, 'rdfs', 'http://www.w3.org/2000/01/rdf-schema#', 'W3C', 'https://www.w3.org/TR/vocab-org/#bib-RDF-SCHEMA');
INSERT INTO `kt_mingming` VALUES (13, 'skos', 'http://www.w3.org/2004/02/skos/core#', 'W3C', 'https://www.w3.org/TR/vocab-org/#bib-SKOS-REFERENCE');

-- ----------------------------
-- Table structure for kt_school
-- ----------------------------
DROP TABLE IF EXISTS `kt_school`;
CREATE TABLE `kt_school`  (
  `sc_id` int(8) NOT NULL AUTO_INCREMENT COMMENT '学校表的主键ID',
  `sc_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学校名称',
  `a_id` int(8) NULL DEFAULT NULL COMMENT '所属区域外键',
  PRIMARY KEY (`sc_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 158 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of kt_school
-- ----------------------------
INSERT INTO `kt_school` VALUES (1, '东城区第1中学', 1);
INSERT INTO `kt_school` VALUES (2, '东城区第2中学', 1);
INSERT INTO `kt_school` VALUES (3, '东城区第3中学', 1);
INSERT INTO `kt_school` VALUES (4, '东城区第4中学', 1);
INSERT INTO `kt_school` VALUES (5, '东城区第5中学', 1);
INSERT INTO `kt_school` VALUES (6, '西城区第1中学', 2);
INSERT INTO `kt_school` VALUES (7, '西城区第2中学', 2);
INSERT INTO `kt_school` VALUES (8, '西城区第3中学', 2);
INSERT INTO `kt_school` VALUES (9, '西城区第4中学', 2);
INSERT INTO `kt_school` VALUES (10, '西城区第5中学', 2);
INSERT INTO `kt_school` VALUES (11, '西城区第6中学', 2);
INSERT INTO `kt_school` VALUES (12, '西城区第7中学', 2);
INSERT INTO `kt_school` VALUES (13, '西城区第8中学', 2);
INSERT INTO `kt_school` VALUES (14, '西城区第9中学', 2);
INSERT INTO `kt_school` VALUES (15, '朝阳区第1中学', 3);
INSERT INTO `kt_school` VALUES (16, '朝阳区第2中学', 3);
INSERT INTO `kt_school` VALUES (17, '朝阳区第3中学', 3);
INSERT INTO `kt_school` VALUES (18, '朝阳区第4中学', 3);
INSERT INTO `kt_school` VALUES (19, '朝阳区第5中学', 3);
INSERT INTO `kt_school` VALUES (20, '朝阳区第6中学', 3);
INSERT INTO `kt_school` VALUES (21, '朝阳区第7中学', 3);
INSERT INTO `kt_school` VALUES (22, '朝阳区第8中学', 3);
INSERT INTO `kt_school` VALUES (23, '朝阳区第9中学', 3);
INSERT INTO `kt_school` VALUES (24, '朝阳区第10中学', 3);
INSERT INTO `kt_school` VALUES (25, '朝阳区第11中学', 3);
INSERT INTO `kt_school` VALUES (26, '丰台区第1中学', 4);
INSERT INTO `kt_school` VALUES (27, '丰台区第2中学', 4);
INSERT INTO `kt_school` VALUES (28, '丰台区第3中学', 4);
INSERT INTO `kt_school` VALUES (29, '丰台区第4中学', 4);
INSERT INTO `kt_school` VALUES (30, '丰台区第5中学', 4);
INSERT INTO `kt_school` VALUES (31, '丰台区第6中学', 4);
INSERT INTO `kt_school` VALUES (32, '丰台区第7中学', 4);
INSERT INTO `kt_school` VALUES (33, '丰台区第8中学', 4);
INSERT INTO `kt_school` VALUES (34, '丰台区第9中学', 4);
INSERT INTO `kt_school` VALUES (35, '丰台区第10中学', 4);
INSERT INTO `kt_school` VALUES (36, '丰台区第11中学', 4);
INSERT INTO `kt_school` VALUES (37, '丰台区第12中学', 4);
INSERT INTO `kt_school` VALUES (38, '丰台区第13中学', 4);
INSERT INTO `kt_school` VALUES (39, '丰台区第14中学', 4);
INSERT INTO `kt_school` VALUES (40, '石景山区第1中学', 5);
INSERT INTO `kt_school` VALUES (41, '石景山区第2中学', 5);
INSERT INTO `kt_school` VALUES (42, '石景山区第3中学', 5);
INSERT INTO `kt_school` VALUES (43, '石景山区第4中学', 5);
INSERT INTO `kt_school` VALUES (44, '石景山区第5中学', 5);
INSERT INTO `kt_school` VALUES (45, '石景山区第6中学', 5);
INSERT INTO `kt_school` VALUES (46, '海淀区第1中学', 6);
INSERT INTO `kt_school` VALUES (47, '海淀区第2中学', 6);
INSERT INTO `kt_school` VALUES (48, '海淀区第3中学', 6);
INSERT INTO `kt_school` VALUES (49, '海淀区第4中学', 6);
INSERT INTO `kt_school` VALUES (50, '海淀区第5中学', 6);
INSERT INTO `kt_school` VALUES (51, '顺义区第1中学', 7);
INSERT INTO `kt_school` VALUES (52, '顺义区第2中学', 7);
INSERT INTO `kt_school` VALUES (53, '顺义区第3中学', 7);
INSERT INTO `kt_school` VALUES (54, '顺义区第4中学', 7);
INSERT INTO `kt_school` VALUES (55, '顺义区第5中学', 7);
INSERT INTO `kt_school` VALUES (56, '顺义区第6中学', 7);
INSERT INTO `kt_school` VALUES (57, '顺义区第7中学', 7);
INSERT INTO `kt_school` VALUES (58, '顺义区第8中学', 7);
INSERT INTO `kt_school` VALUES (59, '顺义区第9中学', 7);
INSERT INTO `kt_school` VALUES (60, '通州区第1中学', 8);
INSERT INTO `kt_school` VALUES (61, '通州区第2中学', 8);
INSERT INTO `kt_school` VALUES (62, '通州区第3中学', 8);
INSERT INTO `kt_school` VALUES (63, '通州区第4中学', 8);
INSERT INTO `kt_school` VALUES (64, '通州区第5中学', 8);
INSERT INTO `kt_school` VALUES (65, '通州区第6中学', 8);
INSERT INTO `kt_school` VALUES (66, '通州区第7中学', 8);
INSERT INTO `kt_school` VALUES (67, '通州区第8中学', 8);
INSERT INTO `kt_school` VALUES (68, '通州区第9中学', 8);
INSERT INTO `kt_school` VALUES (69, '大兴区第1中学', 9);
INSERT INTO `kt_school` VALUES (70, '大兴区第2中学', 9);
INSERT INTO `kt_school` VALUES (71, '大兴区第3中学', 9);
INSERT INTO `kt_school` VALUES (72, '大兴区第4中学', 9);
INSERT INTO `kt_school` VALUES (73, '大兴区第5中学', 9);
INSERT INTO `kt_school` VALUES (74, '大兴区第6中学', 9);
INSERT INTO `kt_school` VALUES (75, '大兴区第7中学', 9);
INSERT INTO `kt_school` VALUES (76, '大兴区第8中学', 9);
INSERT INTO `kt_school` VALUES (77, '大兴区第9中学', 9);
INSERT INTO `kt_school` VALUES (78, '大兴区第10中学', 9);
INSERT INTO `kt_school` VALUES (79, '房山区第1中学', 10);
INSERT INTO `kt_school` VALUES (80, '房山区第2中学', 10);
INSERT INTO `kt_school` VALUES (81, '房山区第3中学', 10);
INSERT INTO `kt_school` VALUES (82, '房山区第4中学', 10);
INSERT INTO `kt_school` VALUES (83, '房山区第5中学', 10);
INSERT INTO `kt_school` VALUES (84, '房山区第6中学', 10);
INSERT INTO `kt_school` VALUES (85, '房山区第7中学', 10);
INSERT INTO `kt_school` VALUES (86, '房山区第8中学', 10);
INSERT INTO `kt_school` VALUES (87, '房山区第9中学', 10);
INSERT INTO `kt_school` VALUES (88, '门头沟区第1中学', 11);
INSERT INTO `kt_school` VALUES (89, '门头沟区第2中学', 11);
INSERT INTO `kt_school` VALUES (90, '门头沟区第3中学', 11);
INSERT INTO `kt_school` VALUES (91, '门头沟区第4中学', 11);
INSERT INTO `kt_school` VALUES (92, '门头沟区第5中学', 11);
INSERT INTO `kt_school` VALUES (93, '门头沟区第6中学', 11);
INSERT INTO `kt_school` VALUES (94, '门头沟区第7中学', 11);
INSERT INTO `kt_school` VALUES (95, '门头沟区第8中学', 11);
INSERT INTO `kt_school` VALUES (96, '门头沟区第9中学', 11);
INSERT INTO `kt_school` VALUES (97, '门头沟区第10中学', 11);
INSERT INTO `kt_school` VALUES (98, '门头沟区第11中学', 11);
INSERT INTO `kt_school` VALUES (99, '门头沟区第12中学', 11);
INSERT INTO `kt_school` VALUES (100, '门头沟区第13中学', 11);
INSERT INTO `kt_school` VALUES (101, '昌平区第1中学', 12);
INSERT INTO `kt_school` VALUES (102, '昌平区第2中学', 12);
INSERT INTO `kt_school` VALUES (103, '昌平区第3中学', 12);
INSERT INTO `kt_school` VALUES (104, '昌平区第4中学', 12);
INSERT INTO `kt_school` VALUES (105, '昌平区第5中学', 12);
INSERT INTO `kt_school` VALUES (106, '昌平区第6中学', 12);
INSERT INTO `kt_school` VALUES (107, '昌平区第7中学', 12);
INSERT INTO `kt_school` VALUES (108, '昌平区第8中学', 12);
INSERT INTO `kt_school` VALUES (109, '平谷区第1中学', 13);
INSERT INTO `kt_school` VALUES (110, '平谷区第2中学', 13);
INSERT INTO `kt_school` VALUES (111, '平谷区第3中学', 13);
INSERT INTO `kt_school` VALUES (112, '平谷区第4中学', 13);
INSERT INTO `kt_school` VALUES (113, '平谷区第5中学', 13);
INSERT INTO `kt_school` VALUES (114, '平谷区第6中学', 13);
INSERT INTO `kt_school` VALUES (115, '平谷区第7中学', 13);
INSERT INTO `kt_school` VALUES (116, '平谷区第8中学', 13);
INSERT INTO `kt_school` VALUES (117, '平谷区第9中学', 13);
INSERT INTO `kt_school` VALUES (118, '平谷区第10中学', 13);
INSERT INTO `kt_school` VALUES (119, '平谷区第11中学', 13);
INSERT INTO `kt_school` VALUES (120, '平谷区第12中学', 13);
INSERT INTO `kt_school` VALUES (121, '密云区第1中学', 14);
INSERT INTO `kt_school` VALUES (122, '密云区第2中学', 14);
INSERT INTO `kt_school` VALUES (123, '密云区第3中学', 14);
INSERT INTO `kt_school` VALUES (124, '密云区第4中学', 14);
INSERT INTO `kt_school` VALUES (125, '密云区第5中学', 14);
INSERT INTO `kt_school` VALUES (126, '密云区第6中学', 14);
INSERT INTO `kt_school` VALUES (127, '密云区第7中学', 14);
INSERT INTO `kt_school` VALUES (128, '密云区第8中学', 14);
INSERT INTO `kt_school` VALUES (129, '密云区第9中学', 14);
INSERT INTO `kt_school` VALUES (130, '密云区第10中学', 14);
INSERT INTO `kt_school` VALUES (131, '密云区第11中学', 14);
INSERT INTO `kt_school` VALUES (132, '密云区第12中学', 14);
INSERT INTO `kt_school` VALUES (133, '密云区第13中学', 14);
INSERT INTO `kt_school` VALUES (134, '密云区第14中学', 14);
INSERT INTO `kt_school` VALUES (135, '怀柔区第1中学', 15);
INSERT INTO `kt_school` VALUES (136, '怀柔区第2中学', 15);
INSERT INTO `kt_school` VALUES (137, '怀柔区第3中学', 15);
INSERT INTO `kt_school` VALUES (138, '怀柔区第4中学', 15);
INSERT INTO `kt_school` VALUES (139, '怀柔区第5中学', 15);
INSERT INTO `kt_school` VALUES (140, '怀柔区第6中学', 15);
INSERT INTO `kt_school` VALUES (141, '怀柔区第7中学', 15);
INSERT INTO `kt_school` VALUES (142, '怀柔区第8中学', 15);
INSERT INTO `kt_school` VALUES (143, '怀柔区第9中学', 15);
INSERT INTO `kt_school` VALUES (144, '怀柔区第10中学', 15);
INSERT INTO `kt_school` VALUES (145, '延庆区第1中学', 16);
INSERT INTO `kt_school` VALUES (146, '延庆区第2中学', 16);
INSERT INTO `kt_school` VALUES (147, '延庆区第3中学', 16);
INSERT INTO `kt_school` VALUES (148, '延庆区第4中学', 16);
INSERT INTO `kt_school` VALUES (149, '延庆区第5中学', 16);
INSERT INTO `kt_school` VALUES (150, '延庆区第6中学', 16);
INSERT INTO `kt_school` VALUES (151, '延庆区第7中学', 16);
INSERT INTO `kt_school` VALUES (152, '延庆区第8中学', 16);
INSERT INTO `kt_school` VALUES (153, '延庆区第9中学', 16);
INSERT INTO `kt_school` VALUES (154, '延庆区第10中学', 16);
INSERT INTO `kt_school` VALUES (155, '延庆区第11中学', 16);
INSERT INTO `kt_school` VALUES (156, '延庆区第12中学', 16);
INSERT INTO `kt_school` VALUES (157, '延庆区第13中学', 16);

-- ----------------------------
-- Table structure for kt_shiyou
-- ----------------------------
DROP TABLE IF EXISTS `kt_shiyou`;
CREATE TABLE `kt_shiyou`  (
  `sy_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'sy_id',
  `词汇表名称` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '词汇表名称',
  `英文名称` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '英文名称',
  `中文名称` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '中文名称',
  `英文解释` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '英文解释',
  PRIMARY KEY (`sy_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 616 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '石油领域词汇表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of kt_shiyou
-- ----------------------------
INSERT INTO `kt_shiyou` VALUES (1, 'PIDD', 'Abandoned Date', '报废日期', 'The date a well, well completion or field was abandoned');
INSERT INTO `kt_shiyou` VALUES (2, 'PIDD', 'Abandonment Pressure', '废弃压力', 'The pressure at which a reservoir was, or is, expected to be abandoned.');
INSERT INTO `kt_shiyou` VALUES (3, 'PIDD', 'Absolute Permeability', '绝对渗透率', 'A measure of the ability of a single fluid; e.g., water, gas or oil, to flow through a rock sample when the sample is saturated with that single fluid.');
INSERT INTO `kt_shiyou` VALUES (4, 'PIDD', 'Absolute Porosity', '绝对孔隙度', 'The percentage of the total bulk volume of a rock sample that is composed of pore spaces or voids.');
INSERT INTO `kt_shiyou` VALUES (5, 'PIDD', 'Accelerator (cement)', '促凝剂（水泥）', 'SEE: Cement Accelerator.');
INSERT INTO `kt_shiyou` VALUES (6, 'PIDD', 'Acid Fracturing', '酸化压裂', 'The process of opening cracks in reservoir rock by using a combination of oil and acid under high pressure.');
INSERT INTO `kt_shiyou` VALUES (7, 'PIDD', 'Acoustic Log', '声波测井', 'A well log recording one or more specific characteristics of acoustic waves propagated in or around the borehole. Typical measurements are interval transit time, acoustic velocity and compressional or shear wave amplitude.');
INSERT INTO `kt_shiyou` VALUES (8, 'PIDD', 'Address', '地址', 'The location at which someone or something may be found.');
INSERT INTO `kt_shiyou` VALUES (9, 'PIDD', 'Agitator', '搅拌器', 'A motor-driven paddle or blade used to mix liquids and solids.');
INSERT INTO `kt_shiyou` VALUES (10, 'PIDD', 'Annular Packer', '环空封隔器', 'A mechanism that seals off annular pressure between the outside diameter (OD) of a suspended tubular member or hanger and the inside diameter (ID) of the head or thru spool which the tubular member passes or hanger is suspended.');
INSERT INTO `kt_shiyou` VALUES (11, 'PIDD', 'API', '美国石油学会', 'SEE: American Petroleum Institute.');
INSERT INTO `kt_shiyou` VALUES (12, 'PIDD', 'Beam Well', '抽油井', 'A well having fluid lifted by rods and a pump actuated by a beam pumping unit.');
INSERT INTO `kt_shiyou` VALUES (13, 'PIDD', 'Bed Name', '岩层名称', 'The name of a lithostratigraphic bed.');
INSERT INTO `kt_shiyou` VALUES (14, 'PIDD', 'Beginning Test Date', '开始测试日期', 'The date that the identified test was started. Tests include drillstem test, formation test, reservoir limits, etc.');
INSERT INTO `kt_shiyou` VALUES (15, 'PIDD', 'Blind Sidetrack', '无定向侧钻', 'SEE: Sidetrack; Uncontrolled Sidetrack.');
INSERT INTO `kt_shiyou` VALUES (16, 'PIDD', 'Boll Weevil', '新工作人员', 'An inexperienced rig or oil field employee. Sometimes the word is shortened simply to weevil.');
INSERT INTO `kt_shiyou` VALUES (17, 'PIDD', 'Borehole', '井眼、井筒、裸眼井', 'A physical hole created by boring or drilling. The term borehole is used in a descriptive sense, as in borehole axis, borehole diameter, borehole effect (on wireline log response), borehole caving and borehole televiewer.');
INSERT INTO `kt_shiyou` VALUES (18, 'PIDD', 'Borehole Azimuth Angle', '井眼方位角', 'The angle between north and the projection of the borehole axis onto a horizontal plane. Angle is referred to either true north, magnetic north, or grid north.');
INSERT INTO `kt_shiyou` VALUES (19, 'PIDD', 'Borehole Course', '井筒轨迹', 'The path of the axis of the borehole over an interval length.');
INSERT INTO `kt_shiyou` VALUES (20, 'PIDD', 'Borehole Diameter', '井径', 'Measurement of the diameter of the borehole.');
INSERT INTO `kt_shiyou` VALUES (21, 'PIDD', 'Bottom Water', '底水', 'Water occurring in a producing reservoir below the oil or gas in the reservoir.');
INSERT INTO `kt_shiyou` VALUES (22, 'PIDD', 'Bottomhole', '井底', 'Bottomhole is used to describe a position along a wellbore path that is usually at or near a terminus of an open borehole. Bottomhole is also used to describe equipment used at these positions, or physical conditions or agreements related to these positions.');
INSERT INTO `kt_shiyou` VALUES (23, 'PIDD', 'Brake', '刹车、制动器', 'A device used for retarding or stopping motion or holding.');
INSERT INTO `kt_shiyou` VALUES (24, 'PIDD', 'Caliper Log', '井径测井', '(1) A record of the diameter of the borehole or the internal diameter of tubular goods. The log indicates undue enlargement of the borehole due to caving, washout, or other causes.(2) Section gauge log: made from tools with many fingers used to measure the corrosion of casing and tubing.');
INSERT INTO `kt_shiyou` VALUES (25, 'PIDD', 'Cased Hole', '下套管井', 'A wellbore segment within which casing has been run.');
INSERT INTO `kt_shiyou` VALUES (26, 'PIDD', 'Casing', '套管', 'Steel pipe installed in the wellbore of a well as drilling progresses. The functions of casing are: (a) to prevent the wall of the borehhole from caving into the wellbore during drilling; (b) to provide control of the well if it tries to blow out; (c) to limit fluid production to the wellbore segment that was perforated or left open.');
INSERT INTO `kt_shiyou` VALUES (27, 'PIDD', 'Casing Cement', '套管水泥', 'Cement used to hold the casing in place in the borehole.');
INSERT INTO `kt_shiyou` VALUES (28, 'PIDD', 'Casing Cementing Movement', '套管固井动作', 'The type of pipe movement used during cementing to improve cement bonding to the formation wall; e.g., reciprocate; rotate.');
INSERT INTO `kt_shiyou` VALUES (29, 'PIDD', 'Casing String', '套管柱', 'The casing run into a wellbore; e.g., surface string; intermediate string; production string.');
INSERT INTO `kt_shiyou` VALUES (30, 'PIDD', 'Country', '国家、地区', 'Major political division of the topography, biology, or culture of an area.');
INSERT INTO `kt_shiyou` VALUES (31, 'PIDD', 'Country Abbreviation', '国家缩写', 'The abbreviation for a country.');
INSERT INTO `kt_shiyou` VALUES (32, 'PIDD', 'Country Code', '国家代码', 'An indicator to identify sovereign nations, colonies, areas independent in terms of internal affairs but under the protection of another country, overseas territories, and dependencies of other countries.');
INSERT INTO `kt_shiyou` VALUES (33, 'PIDD', 'Country Name', '国家名称', 'A name that identifies a country.');
INSERT INTO `kt_shiyou` VALUES (34, 'PIDD', 'Country Subdivision', '国家行政区划', 'A territory governed as an administrative or political unit of a country; e.g., state; province.');
INSERT INTO `kt_shiyou` VALUES (35, 'PIDD', 'County Name', '县名', 'The name of the county or parish, within a state.');
INSERT INTO `kt_shiyou` VALUES (36, 'PIDD', 'County Name Abbreviation', '县名缩写', 'Abbreviated name of a county or parish.');
INSERT INTO `kt_shiyou` VALUES (37, 'PIDD', 'Couplant', '耦合剂', 'A material (usually a liquid) used between ultrasonic transducer and the test specimen to conduct ultrasonic energy between them.');
INSERT INTO `kt_shiyou` VALUES (38, 'PIDD', 'Coupling', '接箍', 'A mechanical means for joining two sections of riser pipe in end to end engagement.');
INSERT INTO `kt_shiyou` VALUES (39, 'PIDD', 'Coupling Mill End', '匹配的接箍端', 'The end of the pipe to which the coupling is applied at the mill. Also referred to as: The box end of integral joint pipe.');
INSERT INTO `kt_shiyou` VALUES (40, 'PIDD', 'Coupling Outside Diameter Value', '接箍外径值', 'The outside diameter of the given coupling type.');
INSERT INTO `kt_shiyou` VALUES (41, 'PIDD', 'Coupling Preload', '接箍预负荷', 'Compressive bearing load developed between pin and box members at their interface. This is accomplished by elastic deformation during makeup of the coupling.');
INSERT INTO `kt_shiyou` VALUES (42, 'PIDD', 'Coupling Strength Value', '接箍强度值', 'The pressure required to yield the given coupling type.');
INSERT INTO `kt_shiyou` VALUES (43, 'PIDD', 'Coupon', '试样', 'Small metal strips which are exposed to corrosive systems for the purpose of determining nature and severity of corrosion.');
INSERT INTO `kt_shiyou` VALUES (44, 'PIDD', 'Course Displacement Value', '路线位移值', 'The course length multiplied by the displacement.');
INSERT INTO `kt_shiyou` VALUES (45, 'PIDD', 'Course Length', '路线长度', 'The measured length between survey points.');
INSERT INTO `kt_shiyou` VALUES (46, 'PIDD', 'Coutler Counter', '电子计数器', 'An electronic device used in measuring the finer sizes of clastic sedimentary particles; e.g., silt; clay.');
INSERT INTO `kt_shiyou` VALUES (47, 'PIDD', 'Coverage', '覆盖', 'SEE: Nominal Fold.');
INSERT INTO `kt_shiyou` VALUES (48, 'PIDD', 'CPA', '加拿大石油协会', 'SEE: Canadian Petroleum Association.');
INSERT INTO `kt_shiyou` VALUES (49, 'PIDD', 'CPI Unit', '波纹板除油装置', 'SEE: Corrugated Plate Interceptor Unit.');
INSERT INTO `kt_shiyou` VALUES (50, 'PIDD', 'Crack', '裂缝，裂隙', '(1) A stress induced separation of the metal which, without any other influence, is insufficient in extent to cause complete rupture of the material.(2) A planar discontinuity formed by separation of previously continous material.');
INSERT INTO `kt_shiyou` VALUES (51, 'PIDD', 'Cracker', '柔性接头', 'Bottomhole assembly in which single joints of drill string can be run between drill collars to produce a limber assembly.');
INSERT INTO `kt_shiyou` VALUES (52, 'PIDD', 'Cracking', '裂解，裂化', 'A conversion process that breaks big molecules into smaller ones by using heat, pressure and catalysts. Lighter oils can be made from the heavier products of the distillation process. Two types of cracking processes are thermal cracking and catalytic cracking.');
INSERT INTO `kt_shiyou` VALUES (53, 'PIDD', 'Crater', '陷坑', 'A large sink hole or cavity around a wellbore origin. Sometimes accompanies a violent blowout during which the surface surrounding the wellbore origin drops.');
INSERT INTO `kt_shiyou` VALUES (54, 'PIDD', 'Crawler', '管内移动器，清管器', 'SEE: Pig.');
INSERT INTO `kt_shiyou` VALUES (55, 'PIDD', 'Creaming Of Emulsion', '乳状液的分移', 'The settling or rising of the particles of the dispersed phase of an emulsion as observed by a difference in color shading of the layers formed. This can be either upward or downward creaming, depending upon the relative densities of the continuous and dispersed phases.');
INSERT INTO `kt_shiyou` VALUES (56, 'PIDD', 'Created Fracture', '压裂、人工裂缝', 'An induced fracture by means of hydraulic or mechanical pressure exerted on the formation.');
INSERT INTO `kt_shiyou` VALUES (57, 'PIDD', 'Credit Reference Number', '信用参考数', 'The number assigned to a credit.');
INSERT INTO `kt_shiyou` VALUES (58, 'PIDD', 'Credit Taken Amount', '信用得到的数量', 'The amount of credit applied to reported amounts.');
INSERT INTO `kt_shiyou` VALUES (59, 'PIDD', 'Creep', '蠕变', '(1) Time dependent increase in strain during a state of constant stress.(2) The gradual deformation of metals or plastics under loads applied for a long time.');
INSERT INTO `kt_shiyou` VALUES (60, 'PIDD', 'Crest', '高点、顶', '(1) The highest point of a given stratum in any vertical section of a fold.(2) The top of a thread.');
INSERT INTO `kt_shiyou` VALUES (61, 'PIDD', 'Crest Clearance', '顶间，隙', 'The distance between the crest and root of mating threads.');
INSERT INTO `kt_shiyou` VALUES (62, 'PIDD', 'Crest Truncation', '顶截距', 'The distance between the sharp crest (crest apex) and the finished crest.');
INSERT INTO `kt_shiyou` VALUES (63, 'PIDD', 'Cricondenbar', '临界凝析压力', 'The maximum pressure at which a vapor phase can exist in a multi-phase fluid system.');
INSERT INTO `kt_shiyou` VALUES (64, 'PIDD', 'Cricondentherm', '临界凝析温度', 'The maximum temperature at which a liquid phase can exist in a multi-phase fluid system.');
INSERT INTO `kt_shiyou` VALUES (65, 'PIDD', 'Crippled Bit', '跛钻头', 'By removing one cone, a drilling bit is crippled and made to act erratically. Such bits have been used for deviation drilling.');
INSERT INTO `kt_shiyou` VALUES (66, 'PIDD', 'Critical Angle', '临界角', 'The smallest angle of incidence in which a sonic, electromagnetic, or optic wave that strikes an interface will be totally reflected.');
INSERT INTO `kt_shiyou` VALUES (67, 'PIDD', 'Critical Flaw', '临界裂纹', 'A defect which is capable of causing a failure.');
INSERT INTO `kt_shiyou` VALUES (68, 'PIDD', 'Critical Flow', '临界流', 'The rate at which the velocity through an orifice or small opening has reached it\'s maximum, and remains a constant. The rate of flow is directly proportional to upstream pressure, and changes only with upstream pressure. Downstream pressure has no effect on flow rate when critical flow velocity is obtained.');
INSERT INTO `kt_shiyou` VALUES (69, 'PIDD', 'Critical Flow Prover', '临界流量计', 'A steel tube 12\" long with provisions for installing an orifice plate at one end. Two sizes are available, either 2\" or 4\" internal diameter. Two connections are provided on tube one for a thermometer bulb and the other for connecting a pressure recording meter.');
INSERT INTO `kt_shiyou` VALUES (70, 'PIDD', 'Critical Gas Saturation', '临界气饱和度', 'The lowest gas saturation in the reservoir rock at which gas will flow. When the gas saturation is less than the critical value, the permeability to gas is zero.');
INSERT INTO `kt_shiyou` VALUES (71, 'PIDD', 'Critical Pressure Measurement', '临界压力测量', 'The pressure at which a vapor turns to a liquid at the critcal temperature.');
INSERT INTO `kt_shiyou` VALUES (72, 'PIDD', 'Critical Saturation', '临界饱和度', 'The saturation of a fluid phase that must be exceeded for that phase to become mobile.');
INSERT INTO `kt_shiyou` VALUES (73, 'PIDD', 'Critical Temperature', '临界温度', 'The temperature above which a particular substance exists only as a gas no matter what the pressure.');
INSERT INTO `kt_shiyou` VALUES (74, 'PIDD', 'Critical Velocity', '临界速度', 'That velocity at the transitional point between laminar and turbulent types of fluid flow. This point occurs in the transitional range of Reynolds numbers of approximately 2,000 to 3,000.');
INSERT INTO `kt_shiyou` VALUES (75, 'PIDD', 'Critical Volume', '临界体积', 'The inverse of density at the critical point of a fluid, describing the volume occupied by a fluid of unit mass.');
INSERT INTO `kt_shiyou` VALUES (76, 'PIDD', 'Critical Z-factor', '临界Ｚ因数', 'The real gas deviation factor at the critical point.');
INSERT INTO `kt_shiyou` VALUES (77, 'PIDD', 'Crooked Hole', '弯井', 'SEE: Crooked Wellbore.');
INSERT INTO `kt_shiyou` VALUES (78, 'PIDD', 'Crooked Hole Area', '弯井区', 'An area where the drilling tends to produce wells with crooked wellbores.');
INSERT INTO `kt_shiyou` VALUES (79, 'PIDD', 'Crooked Hole Tendency', '弯井趋势', 'A characteristic of the rocks, bottomhole assembly, or drilling practices to cause a crooked wellbore to be drilled.');
INSERT INTO `kt_shiyou` VALUES (80, 'PIDD', 'Crooked Wellbore', '弯曲的井筒', 'A wellbore path that has numerous unintentional deviations from the vertical.');
INSERT INTO `kt_shiyou` VALUES (81, 'PIDD', 'Cross', '四通，十字管', 'A pressure containing fitting with a minimum of four openings. Usually all four openings are at 90 degrees to one another. Crosses may be threaded or flanged.');
INSERT INTO `kt_shiyou` VALUES (82, 'PIDD', 'Cross Assignment', '相互转让', 'When several producers, either voluntarily or by state regulation, pool acreages to form a unit. They may cross-assign their leases to one another, creating a common obligation to each royalty owner.');
INSERT INTO `kt_shiyou` VALUES (83, 'PIDD', 'Cross Head', '十字头', 'In an integral reciprocating compressor, the connecting piece which transposes oscillating motion of the connecting rod into horizontal motion of the compressor piston rod.');
INSERT INTO `kt_shiyou` VALUES (84, 'PIDD', 'Cross Talk', '道间感应，串音', 'An unwanted condition in which acoustic energy is coupled from the transmitting crystal to the receiving crystal without propagating along the intended path through the material.');
INSERT INTO `kt_shiyou` VALUES (85, 'PIDD', 'Cross Threaded', '错扣', 'Male and female threads do not match.');
INSERT INTO `kt_shiyou` VALUES (86, 'PIDD', 'Crosscorrelation', '互相关', 'A statistical process in which the similarity of the two waveforms from a seismic source is calculated as a function of the time shift or lag between the waveforms.');
INSERT INTO `kt_shiyou` VALUES (87, 'PIDD', 'Crossline', '横测线', 'The direction orthogonal to the inline direction.');
INSERT INTO `kt_shiyou` VALUES (88, 'PIDD', 'Crossline Traverse', '横测线穿程', 'A collection of seismic traces from a 3D survey in which the bin node inline index remains constant.');
INSERT INTO `kt_shiyou` VALUES (89, 'PIDD', 'Crossover Flange', '转换法兰，跨接法兰', 'A double or single studded adapter flange with a restricted area sealing means and with a top connection pressure rating above that of the lower connection.');
INSERT INTO `kt_shiyou` VALUES (90, 'PIDD', 'Crossover Point', '交点', 'In multiple layer spooling of rope on a drum, the point of rope contact where the rope crosses the preceding rope layer.');
INSERT INTO `kt_shiyou` VALUES (91, 'PIDD', 'Crossover Seat', '转换阀座', 'A special seat for a gas lift valve which directs the pressure applied at the nose of the gas lift valve to the bellows and the pressure applied to the holes in the side of the valve to the underside of the seat. It is used most often in fluid operated valves.');
INSERT INTO `kt_shiyou` VALUES (92, 'PIDD', 'Crossover Spool', '转换套管头', 'Flanged equipment with a restricted area sealing means, at or near the face of its lower flange. Crossover spools are also provided with suitable means to suspend and seal around an inner string of casing or tubing. A crossover spool has a top connection with a pressure rating above that of the lower connection.');
INSERT INTO `kt_shiyou` VALUES (93, 'PIDD', 'Crossplot', '交会图', 'A plot of one parameter versus another.');
INSERT INTO `kt_shiyou` VALUES (94, 'PIDD', 'Crowd The Bit', '聚合（加重）钻头', 'Term used to indicate that more weight is applied to the bit than needed for efficient drilling. A crowded bit will usually increase the inclination or cause an azimuth change.');
INSERT INTO `kt_shiyou` VALUES (95, 'PIDD', 'Crown', '拱高', 'The curvature of the screen deck or the difference in elevation between the high and low points.');
INSERT INTO `kt_shiyou` VALUES (96, 'PIDD', 'Crown Block', '天车', 'Sheaves (pulley wheels) and supporting beams on top of a derrick.');
INSERT INTO `kt_shiyou` VALUES (97, 'PIDD', 'Crown Valve', '（采油树）顶阀', 'The uppermost valve on the vertical bore of the christmas tree above the flowline outlet.');
INSERT INTO `kt_shiyou` VALUES (98, 'PIDD', 'Crude Oil', '原油', 'A mixture of varying proportions of hydrocarbons, natural gas, and entrained sediments and water. Crude oil exists in the liquid phase in natural underground reservoirs and remains a liquid at atmospheric pressure and 60 degrees Fahrenheit.');
INSERT INTO `kt_shiyou` VALUES (99, 'PIDD', 'Crude Oil Characterization Factor', '原油特性因素', 'The characterization factor developed by United States Bureau of Mines (USBM) for crude oils, defined as the cube root of the molal average boiling point (degrees Rankine) divided by the specific gravity at 60 degrees Fahrenheit.');
INSERT INTO `kt_shiyou` VALUES (100, 'PIDD', 'Crude Oil Posting Amount', '原油标注价', 'The maximum price payable based on crude oil postings. (Flat rate contracts only).');
INSERT INTO `kt_shiyou` VALUES (101, 'PIDD', 'Crusher', '破碎机', 'Equipment used to break, pound, or grind larger objects into smaller fragments.');
INSERT INTO `kt_shiyou` VALUES (102, 'PIDD', 'Cryogenics', '深冷技术', 'Technique utilizing extremely low temperatures to produce natural gas liquids from a raw gas stream.');
INSERT INTO `kt_shiyou` VALUES (103, 'PIDD', 'Crystal', '晶体', '(1) A piezoelectric element in a probe or search unit.(2) (Mineralogical) A homogeneous, solid body of a chemical element, compound or isomorphous mixture, having a regularly repeating atomic structure that may be externally apparent as plane faces.');
INSERT INTO `kt_shiyou` VALUES (104, 'PIDD', 'Cumulative Displacement Value', '累积位移值', 'The sum of the displacement through the current reading.');
INSERT INTO `kt_shiyou` VALUES (105, 'PIDD', 'Cumulative Fatigue Damage', '累积疲劳损伤', 'The total of fatigue damage caused by repeated cyclic stresses.');
INSERT INTO `kt_shiyou` VALUES (106, 'PIDD', 'Cumulative Gas Production Volume', '累积产气量容积', 'The total amount of gas produced from the property/well/ reservoir from the beginning of production through a specific production date or until abandonment.');
INSERT INTO `kt_shiyou` VALUES (107, 'PIDD', 'Cumulative Oil Production Volume', '累积产油量容积', 'The total amount of oil or condensate produced from the reservoir within the well from the beginning of production through the specified production date or until the reservoir was abandoned.');
INSERT INTO `kt_shiyou` VALUES (108, 'PIDD', 'Cumulative Water Production Volume', '累积产水量容积', 'The total amount of water produced from the property/well/ reservoir from the beginning of production through a specified production date or until abandonment.');
INSERT INTO `kt_shiyou` VALUES (109, 'PIDD', 'Cupronickel', '铜镍合金，白铜', 'An alloy of copper (70 percent or over) and nickel.');
INSERT INTO `kt_shiyou` VALUES (110, 'PIDD', 'Curing', '养护', 'Aging of cement specimens under specified conditions.');
INSERT INTO `kt_shiyou` VALUES (111, 'PIDD', 'Curing Atmospheric Pressure', '养护大气压力', 'The aging of cement specimens for test purposes at normal atmospheric pressure of 14.7 psi (1 kg/cm2) at sea level and temperature below about 200 F (93.3 C), for a designated period of time under certain given conditions of temperature and humidity. Also referred to as: Curing Pressure.');
INSERT INTO `kt_shiyou` VALUES (112, 'PIDD', 'Current Authorization Cost', '目前核准费用', 'Cost associated with this appropriation/AFE number.');
INSERT INTO `kt_shiyou` VALUES (113, 'PIDD', 'Current Overpayment Gross Amount', '目前多付总额', 'The balance of the gross value for an accounting lease associated with an overpayment that has not yet been recovered.');
INSERT INTO `kt_shiyou` VALUES (114, 'PIDD', 'Current Reservoir Depth', '目前储层深度', 'Measured depth of present reservoir.');
INSERT INTO `kt_shiyou` VALUES (115, 'PIDD', 'Current Reservoir Name', '目前储层名称', 'The name of the present reservoir to which the well is completed.');
INSERT INTO `kt_shiyou` VALUES (116, 'PIDD', 'Current Tax Due Amount', '目前应交税款数', 'The tax calculated and due in the current reporting period.');
INSERT INTO `kt_shiyou` VALUES (117, 'PIDD', 'Current Value Balance Amount', '目前价值平衡额', 'The total accumulated value tracked against a bonus, advanced rental, or overpayment.');
INSERT INTO `kt_shiyou` VALUES (118, 'PIDD', 'Current Well Activity Date', '目前井的作业日期', 'The start date of the current well site activity.');
INSERT INTO `kt_shiyou` VALUES (119, 'PIDD', 'Current Well Activity Type', '目前井的作业类型', 'The current activity for the well. Reports of activities are accompanied by a start date, which defines when the well began the activity.');
INSERT INTO `kt_shiyou` VALUES (120, 'PIDD', 'Curvature In The Horizontal Plane', '水平面上的（井筒）曲率', 'Projection of the curvature of the wellbore onto a horizontal plane.');
INSERT INTO `kt_shiyou` VALUES (121, 'PIDD', 'Curvature In The Vertical Plane', '垂直面上的（井筒）曲率', 'Projection of the curvature of the wellbore onto a vertical plane.');
INSERT INTO `kt_shiyou` VALUES (122, 'PIDD', 'Cushion', '垫层', 'Water, drilling fluid, or nonflammable gas placed inside of the drill pipe or tubing to control both annular and formation pressure.');
INSERT INTO `kt_shiyou` VALUES (123, 'PIDD', 'Cushion Fluid Type', '垫层流体类型', 'The type of cushion fluid; e.g., water; drilling fluid; gas.');
INSERT INTO `kt_shiyou` VALUES (124, 'PIDD', 'Abandoned Date', '报废日期', 'The date a well, well completion or field was abandoned');
INSERT INTO `kt_shiyou` VALUES (125, 'PIDD', 'Abandonment Pressure', '废弃压力', 'The pressure at which a reservoir was, or is, expected to be abandoned.');
INSERT INTO `kt_shiyou` VALUES (126, 'PIDD', 'Absolute Permeability', '绝对渗透率', 'A measure of the ability of a single fluid; e.g., water, gas or oil, to flow through a rock sample when the sample is saturated with that single fluid.');
INSERT INTO `kt_shiyou` VALUES (127, 'PIDD', 'Absolute Porosity', '绝对孔隙度', 'The percentage of the total bulk volume of a rock sample that is composed of pore spaces or voids.');
INSERT INTO `kt_shiyou` VALUES (128, 'PIDD', 'Accelerator (cement)', '促凝剂（水泥）', 'SEE: Cement Accelerator.');
INSERT INTO `kt_shiyou` VALUES (129, 'PIDD', 'Acid Fracturing', '酸化压裂', 'The process of opening cracks in reservoir rock by using a combination of oil and acid under high pressure.');
INSERT INTO `kt_shiyou` VALUES (130, 'PIDD', 'Acoustic Log', '声波测井', 'A well log recording one or more specific characteristics of acoustic waves propagated in or around the borehole. Typical measurements are interval transit time, acoustic velocity and compressional or shear wave amplitude.');
INSERT INTO `kt_shiyou` VALUES (131, 'PIDD', 'Address', '地址', 'The location at which someone or something may be found.');
INSERT INTO `kt_shiyou` VALUES (132, 'PIDD', 'Agitator', '搅拌器', 'A motor-driven paddle or blade used to mix liquids and solids.');
INSERT INTO `kt_shiyou` VALUES (133, 'PIDD', 'Annular Packer', '环空封隔器', 'A mechanism that seals off annular pressure between the outside diameter (OD) of a suspended tubular member or hanger and the inside diameter (ID) of the head or thru spool which the tubular member passes or hanger is suspended.');
INSERT INTO `kt_shiyou` VALUES (134, 'PIDD', 'API', '美国石油学会', 'SEE: American Petroleum Institute.');
INSERT INTO `kt_shiyou` VALUES (135, 'PIDD', 'Beam Well', '抽油井', 'A well having fluid lifted by rods and a pump actuated by a beam pumping unit.');
INSERT INTO `kt_shiyou` VALUES (136, 'PIDD', 'Bed Name', '岩层名称', 'The name of a lithostratigraphic bed.');
INSERT INTO `kt_shiyou` VALUES (137, 'PIDD', 'Beginning Test Date', '开始测试日期', 'The date that the identified test was started. Tests include drillstem test, formation test, reservoir limits, etc.');
INSERT INTO `kt_shiyou` VALUES (138, 'PIDD', 'Blind Sidetrack', '无定向侧钻', 'SEE: Sidetrack; Uncontrolled Sidetrack.');
INSERT INTO `kt_shiyou` VALUES (139, 'PIDD', 'Boll Weevil', '新工作人员', 'An inexperienced rig or oil field employee. Sometimes the word is shortened simply to weevil.');
INSERT INTO `kt_shiyou` VALUES (140, 'PIDD', 'Borehole', '井眼、井筒、裸眼井', 'A physical hole created by boring or drilling. The term borehole is used in a descriptive sense, as in borehole axis, borehole diameter, borehole effect (on wireline log response), borehole caving and borehole televiewer.');
INSERT INTO `kt_shiyou` VALUES (141, 'PIDD', 'Borehole Azimuth Angle', '井眼方位角', 'The angle between north and the projection of the borehole axis onto a horizontal plane. Angle is referred to either true north, magnetic north, or grid north.');
INSERT INTO `kt_shiyou` VALUES (142, 'PIDD', 'Borehole Course', '井筒轨迹', 'The path of the axis of the borehole over an interval length.');
INSERT INTO `kt_shiyou` VALUES (143, 'PIDD', 'Borehole Diameter', '井径', 'Measurement of the diameter of the borehole.');
INSERT INTO `kt_shiyou` VALUES (144, 'PIDD', 'Bottom Water', '底水', 'Water occurring in a producing reservoir below the oil or gas in the reservoir.');
INSERT INTO `kt_shiyou` VALUES (145, 'PIDD', 'Bottomhole', '井底', 'Bottomhole is used to describe a position along a wellbore path that is usually at or near a terminus of an open borehole. Bottomhole is also used to describe equipment used at these positions, or physical conditions or agreements related to these positions.');
INSERT INTO `kt_shiyou` VALUES (146, 'PIDD', 'Brake', '刹车、制动器', 'A device used for retarding or stopping motion or holding.');
INSERT INTO `kt_shiyou` VALUES (147, 'PIDD', 'Caliper Log', '井径测井', '(1) A record of the diameter of the borehole or the internal diameter of tubular goods. The log indicates undue enlargement of the borehole due to caving, washout, or other causes.(2) Section gauge log: made from tools with many fingers used to measure the corrosion of casing and tubing.');
INSERT INTO `kt_shiyou` VALUES (148, 'PIDD', 'Cased Hole', '下套管井', 'A wellbore segment within which casing has been run.');
INSERT INTO `kt_shiyou` VALUES (149, 'PIDD', 'Casing', '套管', 'Steel pipe installed in the wellbore of a well as drilling progresses. The functions of casing are: (a) to prevent the wall of the borehhole from caving into the wellbore during drilling; (b) to provide control of the well if it tries to blow out; (c) to limit fluid production to the wellbore segment that was perforated or left open.');
INSERT INTO `kt_shiyou` VALUES (150, 'PIDD', 'Casing Cement', '套管水泥', 'Cement used to hold the casing in place in the borehole.');
INSERT INTO `kt_shiyou` VALUES (151, 'PIDD', 'Casing Cementing Movement', '套管固井动作', 'The type of pipe movement used during cementing to improve cement bonding to the formation wall; e.g., reciprocate; rotate.');
INSERT INTO `kt_shiyou` VALUES (152, 'PIDD', 'Casing String', '套管柱', 'The casing run into a wellbore; e.g., surface string; intermediate string; production string.');
INSERT INTO `kt_shiyou` VALUES (153, 'PIDD', 'Country', '国家、地区', 'Major political division of the topography, biology, or culture of an area.');
INSERT INTO `kt_shiyou` VALUES (154, 'PIDD', 'Country Abbreviation', '国家缩写', 'The abbreviation for a country.');
INSERT INTO `kt_shiyou` VALUES (155, 'PIDD', 'Country Code', '国家代码', 'An indicator to identify sovereign nations, colonies, areas independent in terms of internal affairs but under the protection of another country, overseas territories, and dependencies of other countries.');
INSERT INTO `kt_shiyou` VALUES (156, 'PIDD', 'Country Name', '国家名称', 'A name that identifies a country.');
INSERT INTO `kt_shiyou` VALUES (157, 'PIDD', 'Country Subdivision', '国家行政区划', 'A territory governed as an administrative or political unit of a country; e.g., state; province.');
INSERT INTO `kt_shiyou` VALUES (158, 'PIDD', 'County Name', '县名', 'The name of the county or parish, within a state.');
INSERT INTO `kt_shiyou` VALUES (159, 'PIDD', 'County Name Abbreviation', '县名缩写', 'Abbreviated name of a county or parish.');
INSERT INTO `kt_shiyou` VALUES (160, 'PIDD', 'Couplant', '耦合剂', 'A material (usually a liquid) used between ultrasonic transducer and the test specimen to conduct ultrasonic energy between them.');
INSERT INTO `kt_shiyou` VALUES (161, 'PIDD', 'Coupling', '接箍', 'A mechanical means for joining two sections of riser pipe in end to end engagement.');
INSERT INTO `kt_shiyou` VALUES (162, 'PIDD', 'Coupling Mill End', '匹配的接箍端', 'The end of the pipe to which the coupling is applied at the mill. Also referred to as: The box end of integral joint pipe.');
INSERT INTO `kt_shiyou` VALUES (163, 'PIDD', 'Coupling Outside Diameter Value', '接箍外径值', 'The outside diameter of the given coupling type.');
INSERT INTO `kt_shiyou` VALUES (164, 'PIDD', 'Coupling Preload', '接箍预负荷', 'Compressive bearing load developed between pin and box members at their interface. This is accomplished by elastic deformation during makeup of the coupling.');
INSERT INTO `kt_shiyou` VALUES (165, 'PIDD', 'Coupling Strength Value', '接箍强度值', 'The pressure required to yield the given coupling type.');
INSERT INTO `kt_shiyou` VALUES (166, 'PIDD', 'Coupon', '试样', 'Small metal strips which are exposed to corrosive systems for the purpose of determining nature and severity of corrosion.');
INSERT INTO `kt_shiyou` VALUES (167, 'PIDD', 'Course Displacement Value', '路线位移值', 'The course length multiplied by the displacement.');
INSERT INTO `kt_shiyou` VALUES (168, 'PIDD', 'Course Length', '路线长度', 'The measured length between survey points.');
INSERT INTO `kt_shiyou` VALUES (169, 'PIDD', 'Coutler Counter', '电子计数器', 'An electronic device used in measuring the finer sizes of clastic sedimentary particles; e.g., silt; clay.');
INSERT INTO `kt_shiyou` VALUES (170, 'PIDD', 'Coverage', '覆盖', 'SEE: Nominal Fold.');
INSERT INTO `kt_shiyou` VALUES (171, 'PIDD', 'CPA', '加拿大石油协会', 'SEE: Canadian Petroleum Association.');
INSERT INTO `kt_shiyou` VALUES (172, 'PIDD', 'CPI Unit', '波纹板除油装置', 'SEE: Corrugated Plate Interceptor Unit.');
INSERT INTO `kt_shiyou` VALUES (173, 'PIDD', 'Crack', '裂缝，裂隙', '(1) A stress induced separation of the metal which, without any other influence, is insufficient in extent to cause complete rupture of the material.(2) A planar discontinuity formed by separation of previously continous material.');
INSERT INTO `kt_shiyou` VALUES (174, 'PIDD', 'Cracker', '柔性接头', 'Bottomhole assembly in which single joints of drill string can be run between drill collars to produce a limber assembly.');
INSERT INTO `kt_shiyou` VALUES (175, 'PIDD', 'Cracking', '裂解，裂化', 'A conversion process that breaks big molecules into smaller ones by using heat, pressure and catalysts. Lighter oils can be made from the heavier products of the distillation process. Two types of cracking processes are thermal cracking and catalytic cracking.');
INSERT INTO `kt_shiyou` VALUES (176, 'PIDD', 'Crater', '陷坑', 'A large sink hole or cavity around a wellbore origin. Sometimes accompanies a violent blowout during which the surface surrounding the wellbore origin drops.');
INSERT INTO `kt_shiyou` VALUES (177, 'PIDD', 'Crawler', '管内移动器，清管器', 'SEE: Pig.');
INSERT INTO `kt_shiyou` VALUES (178, 'PIDD', 'Creaming Of Emulsion', '乳状液的分移', 'The settling or rising of the particles of the dispersed phase of an emulsion as observed by a difference in color shading of the layers formed. This can be either upward or downward creaming, depending upon the relative densities of the continuous and dispersed phases.');
INSERT INTO `kt_shiyou` VALUES (179, 'PIDD', 'Created Fracture', '压裂、人工裂缝', 'An induced fracture by means of hydraulic or mechanical pressure exerted on the formation.');
INSERT INTO `kt_shiyou` VALUES (180, 'PIDD', 'Credit Reference Number', '信用参考数', 'The number assigned to a credit.');
INSERT INTO `kt_shiyou` VALUES (181, 'PIDD', 'Credit Taken Amount', '信用得到的数量', 'The amount of credit applied to reported amounts.');
INSERT INTO `kt_shiyou` VALUES (182, 'PIDD', 'Creep', '蠕变', '(1) Time dependent increase in strain during a state of constant stress.(2) The gradual deformation of metals or plastics under loads applied for a long time.');
INSERT INTO `kt_shiyou` VALUES (183, 'PIDD', 'Crest', '高点、顶', '(1) The highest point of a given stratum in any vertical section of a fold.(2) The top of a thread.');
INSERT INTO `kt_shiyou` VALUES (184, 'PIDD', 'Crest Clearance', '顶间，隙', 'The distance between the crest and root of mating threads.');
INSERT INTO `kt_shiyou` VALUES (185, 'PIDD', 'Crest Truncation', '顶截距', 'The distance between the sharp crest (crest apex) and the finished crest.');
INSERT INTO `kt_shiyou` VALUES (186, 'PIDD', 'Cricondenbar', '临界凝析压力', 'The maximum pressure at which a vapor phase can exist in a multi-phase fluid system.');
INSERT INTO `kt_shiyou` VALUES (187, 'PIDD', 'Cricondentherm', '临界凝析温度', 'The maximum temperature at which a liquid phase can exist in a multi-phase fluid system.');
INSERT INTO `kt_shiyou` VALUES (188, 'PIDD', 'Crippled Bit', '跛钻头', 'By removing one cone, a drilling bit is crippled and made to act erratically. Such bits have been used for deviation drilling.');
INSERT INTO `kt_shiyou` VALUES (189, 'PIDD', 'Critical Angle', '临界角', 'The smallest angle of incidence in which a sonic, electromagnetic, or optic wave that strikes an interface will be totally reflected.');
INSERT INTO `kt_shiyou` VALUES (190, 'PIDD', 'Critical Flaw', '临界裂纹', 'A defect which is capable of causing a failure.');
INSERT INTO `kt_shiyou` VALUES (191, 'PIDD', 'Critical Flow', '临界流', 'The rate at which the velocity through an orifice or small opening has reached it\'s maximum, and remains a constant. The rate of flow is directly proportional to upstream pressure, and changes only with upstream pressure. Downstream pressure has no effect on flow rate when critical flow velocity is obtained.');
INSERT INTO `kt_shiyou` VALUES (192, 'PIDD', 'Critical Flow Prover', '临界流量计', 'A steel tube 12\" long with provisions for installing an orifice plate at one end. Two sizes are available, either 2\" or 4\" internal diameter. Two connections are provided on tube one for a thermometer bulb and the other for connecting a pressure recording meter.');
INSERT INTO `kt_shiyou` VALUES (193, 'PIDD', 'Critical Gas Saturation', '临界气饱和度', 'The lowest gas saturation in the reservoir rock at which gas will flow. When the gas saturation is less than the critical value, the permeability to gas is zero.');
INSERT INTO `kt_shiyou` VALUES (194, 'PIDD', 'Critical Pressure Measurement', '临界压力测量', 'The pressure at which a vapor turns to a liquid at the critcal temperature.');
INSERT INTO `kt_shiyou` VALUES (195, 'PIDD', 'Critical Saturation', '临界饱和度', 'The saturation of a fluid phase that must be exceeded for that phase to become mobile.');
INSERT INTO `kt_shiyou` VALUES (196, 'PIDD', 'Critical Temperature', '临界温度', 'The temperature above which a particular substance exists only as a gas no matter what the pressure.');
INSERT INTO `kt_shiyou` VALUES (197, 'PIDD', 'Critical Velocity', '临界速度', 'That velocity at the transitional point between laminar and turbulent types of fluid flow. This point occurs in the transitional range of Reynolds numbers of approximately 2,000 to 3,000.');
INSERT INTO `kt_shiyou` VALUES (198, 'PIDD', 'Critical Volume', '临界体积', 'The inverse of density at the critical point of a fluid, describing the volume occupied by a fluid of unit mass.');
INSERT INTO `kt_shiyou` VALUES (199, 'PIDD', 'Critical Z-factor', '临界Ｚ因数', 'The real gas deviation factor at the critical point.');
INSERT INTO `kt_shiyou` VALUES (200, 'PIDD', 'Crooked Hole', '弯井', 'SEE: Crooked Wellbore.');
INSERT INTO `kt_shiyou` VALUES (201, 'PIDD', 'Crooked Hole Area', '弯井区', 'An area where the drilling tends to produce wells with crooked wellbores.');
INSERT INTO `kt_shiyou` VALUES (202, 'PIDD', 'Crooked Hole Tendency', '弯井趋势', 'A characteristic of the rocks, bottomhole assembly, or drilling practices to cause a crooked wellbore to be drilled.');
INSERT INTO `kt_shiyou` VALUES (203, 'PIDD', 'Crooked Wellbore', '弯曲的井筒', 'A wellbore path that has numerous unintentional deviations from the vertical.');
INSERT INTO `kt_shiyou` VALUES (204, 'PIDD', 'Cross', '四通，十字管', 'A pressure containing fitting with a minimum of four openings. Usually all four openings are at 90 degrees to one another. Crosses may be threaded or flanged.');
INSERT INTO `kt_shiyou` VALUES (205, 'PIDD', 'Cross Assignment', '相互转让', 'When several producers, either voluntarily or by state regulation, pool acreages to form a unit. They may cross-assign their leases to one another, creating a common obligation to each royalty owner.');
INSERT INTO `kt_shiyou` VALUES (206, 'PIDD', 'Cross Head', '十字头', 'In an integral reciprocating compressor, the connecting piece which transposes oscillating motion of the connecting rod into horizontal motion of the compressor piston rod.');
INSERT INTO `kt_shiyou` VALUES (207, 'PIDD', 'Cross Talk', '道间感应，串音', 'An unwanted condition in which acoustic energy is coupled from the transmitting crystal to the receiving crystal without propagating along the intended path through the material.');
INSERT INTO `kt_shiyou` VALUES (208, 'PIDD', 'Cross Threaded', '错扣', 'Male and female threads do not match.');
INSERT INTO `kt_shiyou` VALUES (209, 'PIDD', 'Crosscorrelation', '互相关', 'A statistical process in which the similarity of the two waveforms from a seismic source is calculated as a function of the time shift or lag between the waveforms.');
INSERT INTO `kt_shiyou` VALUES (210, 'PIDD', 'Crossline', '横测线', 'The direction orthogonal to the inline direction.');
INSERT INTO `kt_shiyou` VALUES (211, 'PIDD', 'Crossline Traverse', '横测线穿程', 'A collection of seismic traces from a 3D survey in which the bin node inline index remains constant.');
INSERT INTO `kt_shiyou` VALUES (212, 'PIDD', 'Crossover Flange', '转换法兰，跨接法兰', 'A double or single studded adapter flange with a restricted area sealing means and with a top connection pressure rating above that of the lower connection.');
INSERT INTO `kt_shiyou` VALUES (213, 'PIDD', 'Crossover Point', '交点', 'In multiple layer spooling of rope on a drum, the point of rope contact where the rope crosses the preceding rope layer.');
INSERT INTO `kt_shiyou` VALUES (214, 'PIDD', 'Crossover Seat', '转换阀座', 'A special seat for a gas lift valve which directs the pressure applied at the nose of the gas lift valve to the bellows and the pressure applied to the holes in the side of the valve to the underside of the seat. It is used most often in fluid operated valves.');
INSERT INTO `kt_shiyou` VALUES (215, 'PIDD', 'Crossover Spool', '转换套管头', 'Flanged equipment with a restricted area sealing means, at or near the face of its lower flange. Crossover spools are also provided with suitable means to suspend and seal around an inner string of casing or tubing. A crossover spool has a top connection with a pressure rating above that of the lower connection.');
INSERT INTO `kt_shiyou` VALUES (216, 'PIDD', 'Crossplot', '交会图', 'A plot of one parameter versus another.');
INSERT INTO `kt_shiyou` VALUES (217, 'PIDD', 'Crowd The Bit', '聚合（加重）钻头', 'Term used to indicate that more weight is applied to the bit than needed for efficient drilling. A crowded bit will usually increase the inclination or cause an azimuth change.');
INSERT INTO `kt_shiyou` VALUES (218, 'PIDD', 'Crown', '拱高', 'The curvature of the screen deck or the difference in elevation between the high and low points.');
INSERT INTO `kt_shiyou` VALUES (219, 'PIDD', 'Crown Block', '天车', 'Sheaves (pulley wheels) and supporting beams on top of a derrick.');
INSERT INTO `kt_shiyou` VALUES (220, 'PIDD', 'Crown Valve', '（采油树）顶阀', 'The uppermost valve on the vertical bore of the christmas tree above the flowline outlet.');
INSERT INTO `kt_shiyou` VALUES (221, 'PIDD', 'Crude Oil', '原油', 'A mixture of varying proportions of hydrocarbons, natural gas, and entrained sediments and water. Crude oil exists in the liquid phase in natural underground reservoirs and remains a liquid at atmospheric pressure and 60 degrees Fahrenheit.');
INSERT INTO `kt_shiyou` VALUES (222, 'PIDD', 'Crude Oil Characterization Factor', '原油特性因素', 'The characterization factor developed by United States Bureau of Mines (USBM) for crude oils, defined as the cube root of the molal average boiling point (degrees Rankine) divided by the specific gravity at 60 degrees Fahrenheit.');
INSERT INTO `kt_shiyou` VALUES (223, 'PIDD', 'Crude Oil Posting Amount', '原油标注价', 'The maximum price payable based on crude oil postings. (Flat rate contracts only).');
INSERT INTO `kt_shiyou` VALUES (224, 'PIDD', 'Crusher', '破碎机', 'Equipment used to break, pound, or grind larger objects into smaller fragments.');
INSERT INTO `kt_shiyou` VALUES (225, 'PIDD', 'Cryogenics', '深冷技术', 'Technique utilizing extremely low temperatures to produce natural gas liquids from a raw gas stream.');
INSERT INTO `kt_shiyou` VALUES (226, 'PIDD', 'Crystal', '晶体', '(1) A piezoelectric element in a probe or search unit.(2) (Mineralogical) A homogeneous, solid body of a chemical element, compound or isomorphous mixture, having a regularly repeating atomic structure that may be externally apparent as plane faces.');
INSERT INTO `kt_shiyou` VALUES (227, 'PIDD', 'Cumulative Displacement Value', '累积位移值', 'The sum of the displacement through the current reading.');
INSERT INTO `kt_shiyou` VALUES (228, 'PIDD', 'Cumulative Fatigue Damage', '累积疲劳损伤', 'The total of fatigue damage caused by repeated cyclic stresses.');
INSERT INTO `kt_shiyou` VALUES (229, 'PIDD', 'Cumulative Gas Production Volume', '累积产气量容积', 'The total amount of gas produced from the property/well/ reservoir from the beginning of production through a specific production date or until abandonment.');
INSERT INTO `kt_shiyou` VALUES (230, 'PIDD', 'Cumulative Oil Production Volume', '累积产油量容积', 'The total amount of oil or condensate produced from the reservoir within the well from the beginning of production through the specified production date or until the reservoir was abandoned.');
INSERT INTO `kt_shiyou` VALUES (231, 'PIDD', 'Cumulative Water Production Volume', '累积产水量容积', 'The total amount of water produced from the property/well/ reservoir from the beginning of production through a specified production date or until abandonment.');
INSERT INTO `kt_shiyou` VALUES (232, 'PIDD', 'Cupronickel', '铜镍合金，白铜', 'An alloy of copper (70 percent or over) and nickel.');
INSERT INTO `kt_shiyou` VALUES (233, 'PIDD', 'Curing', '养护', 'Aging of cement specimens under specified conditions.');
INSERT INTO `kt_shiyou` VALUES (234, 'PIDD', 'Curing Atmospheric Pressure', '养护大气压力', 'The aging of cement specimens for test purposes at normal atmospheric pressure of 14.7 psi (1 kg/cm2) at sea level and temperature below about 200 F (93.3 C), for a designated period of time under certain given conditions of temperature and humidity. Also referred to as: Curing Pressure.');
INSERT INTO `kt_shiyou` VALUES (235, 'PIDD', 'Current Authorization Cost', '目前核准费用', 'Cost associated with this appropriation/AFE number.');
INSERT INTO `kt_shiyou` VALUES (236, 'PIDD', 'Current Overpayment Gross Amount', '目前多付总额', 'The balance of the gross value for an accounting lease associated with an overpayment that has not yet been recovered.');
INSERT INTO `kt_shiyou` VALUES (237, 'PIDD', 'Current Reservoir Depth', '目前储层深度', 'Measured depth of present reservoir.');
INSERT INTO `kt_shiyou` VALUES (238, 'PIDD', 'Current Reservoir Name', '目前储层名称', 'The name of the present reservoir to which the well is completed.');
INSERT INTO `kt_shiyou` VALUES (239, 'PIDD', 'Current Tax Due Amount', '目前应交税款数', 'The tax calculated and due in the current reporting period.');
INSERT INTO `kt_shiyou` VALUES (240, 'PIDD', 'Current Value Balance Amount', '目前价值平衡额', 'The total accumulated value tracked against a bonus, advanced rental, or overpayment.');
INSERT INTO `kt_shiyou` VALUES (241, 'PIDD', 'Current Well Activity Date', '目前井的作业日期', 'The start date of the current well site activity.');
INSERT INTO `kt_shiyou` VALUES (242, 'PIDD', 'Current Well Activity Type', '目前井的作业类型', 'The current activity for the well. Reports of activities are accompanied by a start date, which defines when the well began the activity.');
INSERT INTO `kt_shiyou` VALUES (243, 'PIDD', 'Curvature In The Horizontal Plane', '水平面上的（井筒）曲率', 'Projection of the curvature of the wellbore onto a horizontal plane.');
INSERT INTO `kt_shiyou` VALUES (244, 'PIDD', 'Curvature In The Vertical Plane', '垂直面上的（井筒）曲率', 'Projection of the curvature of the wellbore onto a vertical plane.');
INSERT INTO `kt_shiyou` VALUES (245, 'PIDD', 'Cushion', '垫层', 'Water, drilling fluid, or nonflammable gas placed inside of the drill pipe or tubing to control both annular and formation pressure.');
INSERT INTO `kt_shiyou` VALUES (246, 'PIDD', 'Cushion Fluid Type', '垫层流体类型', 'The type of cushion fluid; e.g., water; drilling fluid; gas.');
INSERT INTO `kt_shiyou` VALUES (247, 'PIDD', 'Abandoned Date', '报废日期', 'The date a well, well completion or field was abandoned');
INSERT INTO `kt_shiyou` VALUES (248, 'PIDD', 'Abandonment Pressure', '废弃压力', 'The pressure at which a reservoir was, or is, expected to be abandoned.');
INSERT INTO `kt_shiyou` VALUES (249, 'PIDD', 'Absolute Permeability', '绝对渗透率', 'A measure of the ability of a single fluid; e.g., water, gas or oil, to flow through a rock sample when the sample is saturated with that single fluid.');
INSERT INTO `kt_shiyou` VALUES (250, 'PIDD', 'Absolute Porosity', '绝对孔隙度', 'The percentage of the total bulk volume of a rock sample that is composed of pore spaces or voids.');
INSERT INTO `kt_shiyou` VALUES (251, 'PIDD', 'Accelerator (cement)', '促凝剂（水泥）', 'SEE: Cement Accelerator.');
INSERT INTO `kt_shiyou` VALUES (252, 'PIDD', 'Acid Fracturing', '酸化压裂', 'The process of opening cracks in reservoir rock by using a combination of oil and acid under high pressure.');
INSERT INTO `kt_shiyou` VALUES (253, 'PIDD', 'Acoustic Log', '声波测井', 'A well log recording one or more specific characteristics of acoustic waves propagated in or around the borehole. Typical measurements are interval transit time, acoustic velocity and compressional or shear wave amplitude.');
INSERT INTO `kt_shiyou` VALUES (254, 'PIDD', 'Address', '地址', 'The location at which someone or something may be found.');
INSERT INTO `kt_shiyou` VALUES (255, 'PIDD', 'Agitator', '搅拌器', 'A motor-driven paddle or blade used to mix liquids and solids.');
INSERT INTO `kt_shiyou` VALUES (256, 'PIDD', 'Annular Packer', '环空封隔器', 'A mechanism that seals off annular pressure between the outside diameter (OD) of a suspended tubular member or hanger and the inside diameter (ID) of the head or thru spool which the tubular member passes or hanger is suspended.');
INSERT INTO `kt_shiyou` VALUES (257, 'PIDD', 'API', '美国石油学会', 'SEE: American Petroleum Institute.');
INSERT INTO `kt_shiyou` VALUES (258, 'PIDD', 'Beam Well', '抽油井', 'A well having fluid lifted by rods and a pump actuated by a beam pumping unit.');
INSERT INTO `kt_shiyou` VALUES (259, 'PIDD', 'Bed Name', '岩层名称', 'The name of a lithostratigraphic bed.');
INSERT INTO `kt_shiyou` VALUES (260, 'PIDD', 'Beginning Test Date', '开始测试日期', 'The date that the identified test was started. Tests include drillstem test, formation test, reservoir limits, etc.');
INSERT INTO `kt_shiyou` VALUES (261, 'PIDD', 'Blind Sidetrack', '无定向侧钻', 'SEE: Sidetrack; Uncontrolled Sidetrack.');
INSERT INTO `kt_shiyou` VALUES (262, 'PIDD', 'Boll Weevil', '新工作人员', 'An inexperienced rig or oil field employee. Sometimes the word is shortened simply to weevil.');
INSERT INTO `kt_shiyou` VALUES (263, 'PIDD', 'Borehole', '井眼、井筒、裸眼井', 'A physical hole created by boring or drilling. The term borehole is used in a descriptive sense, as in borehole axis, borehole diameter, borehole effect (on wireline log response), borehole caving and borehole televiewer.');
INSERT INTO `kt_shiyou` VALUES (264, 'PIDD', 'Borehole Azimuth Angle', '井眼方位角', 'The angle between north and the projection of the borehole axis onto a horizontal plane. Angle is referred to either true north, magnetic north, or grid north.');
INSERT INTO `kt_shiyou` VALUES (265, 'PIDD', 'Borehole Course', '井筒轨迹', 'The path of the axis of the borehole over an interval length.');
INSERT INTO `kt_shiyou` VALUES (266, 'PIDD', 'Borehole Diameter', '井径', 'Measurement of the diameter of the borehole.');
INSERT INTO `kt_shiyou` VALUES (267, 'PIDD', 'Bottom Water', '底水', 'Water occurring in a producing reservoir below the oil or gas in the reservoir.');
INSERT INTO `kt_shiyou` VALUES (268, 'PIDD', 'Bottomhole', '井底', 'Bottomhole is used to describe a position along a wellbore path that is usually at or near a terminus of an open borehole. Bottomhole is also used to describe equipment used at these positions, or physical conditions or agreements related to these positions.');
INSERT INTO `kt_shiyou` VALUES (269, 'PIDD', 'Brake', '刹车、制动器', 'A device used for retarding or stopping motion or holding.');
INSERT INTO `kt_shiyou` VALUES (270, 'PIDD', 'Caliper Log', '井径测井', '(1) A record of the diameter of the borehole or the internal diameter of tubular goods. The log indicates undue enlargement of the borehole due to caving, washout, or other causes.(2) Section gauge log: made from tools with many fingers used to measure the corrosion of casing and tubing.');
INSERT INTO `kt_shiyou` VALUES (271, 'PIDD', 'Cased Hole', '下套管井', 'A wellbore segment within which casing has been run.');
INSERT INTO `kt_shiyou` VALUES (272, 'PIDD', 'Casing', '套管', 'Steel pipe installed in the wellbore of a well as drilling progresses. The functions of casing are: (a) to prevent the wall of the borehhole from caving into the wellbore during drilling; (b) to provide control of the well if it tries to blow out; (c) to limit fluid production to the wellbore segment that was perforated or left open.');
INSERT INTO `kt_shiyou` VALUES (273, 'PIDD', 'Casing Cement', '套管水泥', 'Cement used to hold the casing in place in the borehole.');
INSERT INTO `kt_shiyou` VALUES (274, 'PIDD', 'Casing Cementing Movement', '套管固井动作', 'The type of pipe movement used during cementing to improve cement bonding to the formation wall; e.g., reciprocate; rotate.');
INSERT INTO `kt_shiyou` VALUES (275, 'PIDD', 'Casing String', '套管柱', 'The casing run into a wellbore; e.g., surface string; intermediate string; production string.');
INSERT INTO `kt_shiyou` VALUES (276, 'PIDD', 'Country', '国家、地区', 'Major political division of the topography, biology, or culture of an area.');
INSERT INTO `kt_shiyou` VALUES (277, 'PIDD', 'Country Abbreviation', '国家缩写', 'The abbreviation for a country.');
INSERT INTO `kt_shiyou` VALUES (278, 'PIDD', 'Country Code', '国家代码', 'An indicator to identify sovereign nations, colonies, areas independent in terms of internal affairs but under the protection of another country, overseas territories, and dependencies of other countries.');
INSERT INTO `kt_shiyou` VALUES (279, 'PIDD', 'Country Name', '国家名称', 'A name that identifies a country.');
INSERT INTO `kt_shiyou` VALUES (280, 'PIDD', 'Country Subdivision', '国家行政区划', 'A territory governed as an administrative or political unit of a country; e.g., state; province.');
INSERT INTO `kt_shiyou` VALUES (281, 'PIDD', 'County Name', '县名', 'The name of the county or parish, within a state.');
INSERT INTO `kt_shiyou` VALUES (282, 'PIDD', 'County Name Abbreviation', '县名缩写', 'Abbreviated name of a county or parish.');
INSERT INTO `kt_shiyou` VALUES (283, 'PIDD', 'Couplant', '耦合剂', 'A material (usually a liquid) used between ultrasonic transducer and the test specimen to conduct ultrasonic energy between them.');
INSERT INTO `kt_shiyou` VALUES (284, 'PIDD', 'Coupling', '接箍', 'A mechanical means for joining two sections of riser pipe in end to end engagement.');
INSERT INTO `kt_shiyou` VALUES (285, 'PIDD', 'Coupling Mill End', '匹配的接箍端', 'The end of the pipe to which the coupling is applied at the mill. Also referred to as: The box end of integral joint pipe.');
INSERT INTO `kt_shiyou` VALUES (286, 'PIDD', 'Coupling Outside Diameter Value', '接箍外径值', 'The outside diameter of the given coupling type.');
INSERT INTO `kt_shiyou` VALUES (287, 'PIDD', 'Coupling Preload', '接箍预负荷', 'Compressive bearing load developed between pin and box members at their interface. This is accomplished by elastic deformation during makeup of the coupling.');
INSERT INTO `kt_shiyou` VALUES (288, 'PIDD', 'Coupling Strength Value', '接箍强度值', 'The pressure required to yield the given coupling type.');
INSERT INTO `kt_shiyou` VALUES (289, 'PIDD', 'Coupon', '试样', 'Small metal strips which are exposed to corrosive systems for the purpose of determining nature and severity of corrosion.');
INSERT INTO `kt_shiyou` VALUES (290, 'PIDD', 'Course Displacement Value', '路线位移值', 'The course length multiplied by the displacement.');
INSERT INTO `kt_shiyou` VALUES (291, 'PIDD', 'Course Length', '路线长度', 'The measured length between survey points.');
INSERT INTO `kt_shiyou` VALUES (292, 'PIDD', 'Coutler Counter', '电子计数器', 'An electronic device used in measuring the finer sizes of clastic sedimentary particles; e.g., silt; clay.');
INSERT INTO `kt_shiyou` VALUES (293, 'PIDD', 'Coverage', '覆盖', 'SEE: Nominal Fold.');
INSERT INTO `kt_shiyou` VALUES (294, 'PIDD', 'CPA', '加拿大石油协会', 'SEE: Canadian Petroleum Association.');
INSERT INTO `kt_shiyou` VALUES (295, 'PIDD', 'CPI Unit', '波纹板除油装置', 'SEE: Corrugated Plate Interceptor Unit.');
INSERT INTO `kt_shiyou` VALUES (296, 'PIDD', 'Crack', '裂缝，裂隙', '(1) A stress induced separation of the metal which, without any other influence, is insufficient in extent to cause complete rupture of the material.(2) A planar discontinuity formed by separation of previously continous material.');
INSERT INTO `kt_shiyou` VALUES (297, 'PIDD', 'Cracker', '柔性接头', 'Bottomhole assembly in which single joints of drill string can be run between drill collars to produce a limber assembly.');
INSERT INTO `kt_shiyou` VALUES (298, 'PIDD', 'Cracking', '裂解，裂化', 'A conversion process that breaks big molecules into smaller ones by using heat, pressure and catalysts. Lighter oils can be made from the heavier products of the distillation process. Two types of cracking processes are thermal cracking and catalytic cracking.');
INSERT INTO `kt_shiyou` VALUES (299, 'PIDD', 'Crater', '陷坑', 'A large sink hole or cavity around a wellbore origin. Sometimes accompanies a violent blowout during which the surface surrounding the wellbore origin drops.');
INSERT INTO `kt_shiyou` VALUES (300, 'PIDD', 'Crawler', '管内移动器，清管器', 'SEE: Pig.');
INSERT INTO `kt_shiyou` VALUES (301, 'PIDD', 'Creaming Of Emulsion', '乳状液的分移', 'The settling or rising of the particles of the dispersed phase of an emulsion as observed by a difference in color shading of the layers formed. This can be either upward or downward creaming, depending upon the relative densities of the continuous and dispersed phases.');
INSERT INTO `kt_shiyou` VALUES (302, 'PIDD', 'Created Fracture', '压裂、人工裂缝', 'An induced fracture by means of hydraulic or mechanical pressure exerted on the formation.');
INSERT INTO `kt_shiyou` VALUES (303, 'PIDD', 'Credit Reference Number', '信用参考数', 'The number assigned to a credit.');
INSERT INTO `kt_shiyou` VALUES (304, 'PIDD', 'Credit Taken Amount', '信用得到的数量', 'The amount of credit applied to reported amounts.');
INSERT INTO `kt_shiyou` VALUES (305, 'PIDD', 'Creep', '蠕变', '(1) Time dependent increase in strain during a state of constant stress.(2) The gradual deformation of metals or plastics under loads applied for a long time.');
INSERT INTO `kt_shiyou` VALUES (306, 'PIDD', 'Crest', '高点、顶', '(1) The highest point of a given stratum in any vertical section of a fold.(2) The top of a thread.');
INSERT INTO `kt_shiyou` VALUES (307, 'PIDD', 'Crest Clearance', '顶间，隙', 'The distance between the crest and root of mating threads.');
INSERT INTO `kt_shiyou` VALUES (308, 'PIDD', 'Crest Truncation', '顶截距', 'The distance between the sharp crest (crest apex) and the finished crest.');
INSERT INTO `kt_shiyou` VALUES (309, 'PIDD', 'Cricondenbar', '临界凝析压力', 'The maximum pressure at which a vapor phase can exist in a multi-phase fluid system.');
INSERT INTO `kt_shiyou` VALUES (310, 'PIDD', 'Cricondentherm', '临界凝析温度', 'The maximum temperature at which a liquid phase can exist in a multi-phase fluid system.');
INSERT INTO `kt_shiyou` VALUES (311, 'PIDD', 'Crippled Bit', '跛钻头', 'By removing one cone, a drilling bit is crippled and made to act erratically. Such bits have been used for deviation drilling.');
INSERT INTO `kt_shiyou` VALUES (312, 'PIDD', 'Critical Angle', '临界角', 'The smallest angle of incidence in which a sonic, electromagnetic, or optic wave that strikes an interface will be totally reflected.');
INSERT INTO `kt_shiyou` VALUES (313, 'PIDD', 'Critical Flaw', '临界裂纹', 'A defect which is capable of causing a failure.');
INSERT INTO `kt_shiyou` VALUES (314, 'PIDD', 'Critical Flow', '临界流', 'The rate at which the velocity through an orifice or small opening has reached it\'s maximum, and remains a constant. The rate of flow is directly proportional to upstream pressure, and changes only with upstream pressure. Downstream pressure has no effect on flow rate when critical flow velocity is obtained.');
INSERT INTO `kt_shiyou` VALUES (315, 'PIDD', 'Critical Flow Prover', '临界流量计', 'A steel tube 12\" long with provisions for installing an orifice plate at one end. Two sizes are available, either 2\" or 4\" internal diameter. Two connections are provided on tube one for a thermometer bulb and the other for connecting a pressure recording meter.');
INSERT INTO `kt_shiyou` VALUES (316, 'PIDD', 'Critical Gas Saturation', '临界气饱和度', 'The lowest gas saturation in the reservoir rock at which gas will flow. When the gas saturation is less than the critical value, the permeability to gas is zero.');
INSERT INTO `kt_shiyou` VALUES (317, 'PIDD', 'Critical Pressure Measurement', '临界压力测量', 'The pressure at which a vapor turns to a liquid at the critcal temperature.');
INSERT INTO `kt_shiyou` VALUES (318, 'PIDD', 'Critical Saturation', '临界饱和度', 'The saturation of a fluid phase that must be exceeded for that phase to become mobile.');
INSERT INTO `kt_shiyou` VALUES (319, 'PIDD', 'Critical Temperature', '临界温度', 'The temperature above which a particular substance exists only as a gas no matter what the pressure.');
INSERT INTO `kt_shiyou` VALUES (320, 'PIDD', 'Critical Velocity', '临界速度', 'That velocity at the transitional point between laminar and turbulent types of fluid flow. This point occurs in the transitional range of Reynolds numbers of approximately 2,000 to 3,000.');
INSERT INTO `kt_shiyou` VALUES (321, 'PIDD', 'Critical Volume', '临界体积', 'The inverse of density at the critical point of a fluid, describing the volume occupied by a fluid of unit mass.');
INSERT INTO `kt_shiyou` VALUES (322, 'PIDD', 'Critical Z-factor', '临界Ｚ因数', 'The real gas deviation factor at the critical point.');
INSERT INTO `kt_shiyou` VALUES (323, 'PIDD', 'Crooked Hole', '弯井', 'SEE: Crooked Wellbore.');
INSERT INTO `kt_shiyou` VALUES (324, 'PIDD', 'Crooked Hole Area', '弯井区', 'An area where the drilling tends to produce wells with crooked wellbores.');
INSERT INTO `kt_shiyou` VALUES (325, 'PIDD', 'Crooked Hole Tendency', '弯井趋势', 'A characteristic of the rocks, bottomhole assembly, or drilling practices to cause a crooked wellbore to be drilled.');
INSERT INTO `kt_shiyou` VALUES (326, 'PIDD', 'Crooked Wellbore', '弯曲的井筒', 'A wellbore path that has numerous unintentional deviations from the vertical.');
INSERT INTO `kt_shiyou` VALUES (327, 'PIDD', 'Cross', '四通，十字管', 'A pressure containing fitting with a minimum of four openings. Usually all four openings are at 90 degrees to one another. Crosses may be threaded or flanged.');
INSERT INTO `kt_shiyou` VALUES (328, 'PIDD', 'Cross Assignment', '相互转让', 'When several producers, either voluntarily or by state regulation, pool acreages to form a unit. They may cross-assign their leases to one another, creating a common obligation to each royalty owner.');
INSERT INTO `kt_shiyou` VALUES (329, 'PIDD', 'Cross Head', '十字头', 'In an integral reciprocating compressor, the connecting piece which transposes oscillating motion of the connecting rod into horizontal motion of the compressor piston rod.');
INSERT INTO `kt_shiyou` VALUES (330, 'PIDD', 'Cross Talk', '道间感应，串音', 'An unwanted condition in which acoustic energy is coupled from the transmitting crystal to the receiving crystal without propagating along the intended path through the material.');
INSERT INTO `kt_shiyou` VALUES (331, 'PIDD', 'Cross Threaded', '错扣', 'Male and female threads do not match.');
INSERT INTO `kt_shiyou` VALUES (332, 'PIDD', 'Crosscorrelation', '互相关', 'A statistical process in which the similarity of the two waveforms from a seismic source is calculated as a function of the time shift or lag between the waveforms.');
INSERT INTO `kt_shiyou` VALUES (333, 'PIDD', 'Crossline', '横测线', 'The direction orthogonal to the inline direction.');
INSERT INTO `kt_shiyou` VALUES (334, 'PIDD', 'Crossline Traverse', '横测线穿程', 'A collection of seismic traces from a 3D survey in which the bin node inline index remains constant.');
INSERT INTO `kt_shiyou` VALUES (335, 'PIDD', 'Crossover Flange', '转换法兰，跨接法兰', 'A double or single studded adapter flange with a restricted area sealing means and with a top connection pressure rating above that of the lower connection.');
INSERT INTO `kt_shiyou` VALUES (336, 'PIDD', 'Crossover Point', '交点', 'In multiple layer spooling of rope on a drum, the point of rope contact where the rope crosses the preceding rope layer.');
INSERT INTO `kt_shiyou` VALUES (337, 'PIDD', 'Crossover Seat', '转换阀座', 'A special seat for a gas lift valve which directs the pressure applied at the nose of the gas lift valve to the bellows and the pressure applied to the holes in the side of the valve to the underside of the seat. It is used most often in fluid operated valves.');
INSERT INTO `kt_shiyou` VALUES (338, 'PIDD', 'Crossover Spool', '转换套管头', 'Flanged equipment with a restricted area sealing means, at or near the face of its lower flange. Crossover spools are also provided with suitable means to suspend and seal around an inner string of casing or tubing. A crossover spool has a top connection with a pressure rating above that of the lower connection.');
INSERT INTO `kt_shiyou` VALUES (339, 'PIDD', 'Crossplot', '交会图', 'A plot of one parameter versus another.');
INSERT INTO `kt_shiyou` VALUES (340, 'PIDD', 'Crowd The Bit', '聚合（加重）钻头', 'Term used to indicate that more weight is applied to the bit than needed for efficient drilling. A crowded bit will usually increase the inclination or cause an azimuth change.');
INSERT INTO `kt_shiyou` VALUES (341, 'PIDD', 'Crown', '拱高', 'The curvature of the screen deck or the difference in elevation between the high and low points.');
INSERT INTO `kt_shiyou` VALUES (342, 'PIDD', 'Crown Block', '天车', 'Sheaves (pulley wheels) and supporting beams on top of a derrick.');
INSERT INTO `kt_shiyou` VALUES (343, 'PIDD', 'Crown Valve', '（采油树）顶阀', 'The uppermost valve on the vertical bore of the christmas tree above the flowline outlet.');
INSERT INTO `kt_shiyou` VALUES (344, 'PIDD', 'Crude Oil', '原油', 'A mixture of varying proportions of hydrocarbons, natural gas, and entrained sediments and water. Crude oil exists in the liquid phase in natural underground reservoirs and remains a liquid at atmospheric pressure and 60 degrees Fahrenheit.');
INSERT INTO `kt_shiyou` VALUES (345, 'PIDD', 'Crude Oil Characterization Factor', '原油特性因素', 'The characterization factor developed by United States Bureau of Mines (USBM) for crude oils, defined as the cube root of the molal average boiling point (degrees Rankine) divided by the specific gravity at 60 degrees Fahrenheit.');
INSERT INTO `kt_shiyou` VALUES (346, 'PIDD', 'Crude Oil Posting Amount', '原油标注价', 'The maximum price payable based on crude oil postings. (Flat rate contracts only).');
INSERT INTO `kt_shiyou` VALUES (347, 'PIDD', 'Crusher', '破碎机', 'Equipment used to break, pound, or grind larger objects into smaller fragments.');
INSERT INTO `kt_shiyou` VALUES (348, 'PIDD', 'Cryogenics', '深冷技术', 'Technique utilizing extremely low temperatures to produce natural gas liquids from a raw gas stream.');
INSERT INTO `kt_shiyou` VALUES (349, 'PIDD', 'Crystal', '晶体', '(1) A piezoelectric element in a probe or search unit.(2) (Mineralogical) A homogeneous, solid body of a chemical element, compound or isomorphous mixture, having a regularly repeating atomic structure that may be externally apparent as plane faces.');
INSERT INTO `kt_shiyou` VALUES (350, 'PIDD', 'Cumulative Displacement Value', '累积位移值', 'The sum of the displacement through the current reading.');
INSERT INTO `kt_shiyou` VALUES (351, 'PIDD', 'Cumulative Fatigue Damage', '累积疲劳损伤', 'The total of fatigue damage caused by repeated cyclic stresses.');
INSERT INTO `kt_shiyou` VALUES (352, 'PIDD', 'Cumulative Gas Production Volume', '累积产气量容积', 'The total amount of gas produced from the property/well/ reservoir from the beginning of production through a specific production date or until abandonment.');
INSERT INTO `kt_shiyou` VALUES (353, 'PIDD', 'Cumulative Oil Production Volume', '累积产油量容积', 'The total amount of oil or condensate produced from the reservoir within the well from the beginning of production through the specified production date or until the reservoir was abandoned.');
INSERT INTO `kt_shiyou` VALUES (354, 'PIDD', 'Cumulative Water Production Volume', '累积产水量容积', 'The total amount of water produced from the property/well/ reservoir from the beginning of production through a specified production date or until abandonment.');
INSERT INTO `kt_shiyou` VALUES (355, 'PIDD', 'Cupronickel', '铜镍合金，白铜', 'An alloy of copper (70 percent or over) and nickel.');
INSERT INTO `kt_shiyou` VALUES (356, 'PIDD', 'Curing', '养护', 'Aging of cement specimens under specified conditions.');
INSERT INTO `kt_shiyou` VALUES (357, 'PIDD', 'Curing Atmospheric Pressure', '养护大气压力', 'The aging of cement specimens for test purposes at normal atmospheric pressure of 14.7 psi (1 kg/cm2) at sea level and temperature below about 200 F (93.3 C), for a designated period of time under certain given conditions of temperature and humidity. Also referred to as: Curing Pressure.');
INSERT INTO `kt_shiyou` VALUES (358, 'PIDD', 'Current Authorization Cost', '目前核准费用', 'Cost associated with this appropriation/AFE number.');
INSERT INTO `kt_shiyou` VALUES (359, 'PIDD', 'Current Overpayment Gross Amount', '目前多付总额', 'The balance of the gross value for an accounting lease associated with an overpayment that has not yet been recovered.');
INSERT INTO `kt_shiyou` VALUES (360, 'PIDD', 'Current Reservoir Depth', '目前储层深度', 'Measured depth of present reservoir.');
INSERT INTO `kt_shiyou` VALUES (361, 'PIDD', 'Current Reservoir Name', '目前储层名称', 'The name of the present reservoir to which the well is completed.');
INSERT INTO `kt_shiyou` VALUES (362, 'PIDD', 'Current Tax Due Amount', '目前应交税款数', 'The tax calculated and due in the current reporting period.');
INSERT INTO `kt_shiyou` VALUES (363, 'PIDD', 'Current Value Balance Amount', '目前价值平衡额', 'The total accumulated value tracked against a bonus, advanced rental, or overpayment.');
INSERT INTO `kt_shiyou` VALUES (364, 'PIDD', 'Current Well Activity Date', '目前井的作业日期', 'The start date of the current well site activity.');
INSERT INTO `kt_shiyou` VALUES (365, 'PIDD', 'Current Well Activity Type', '目前井的作业类型', 'The current activity for the well. Reports of activities are accompanied by a start date, which defines when the well began the activity.');
INSERT INTO `kt_shiyou` VALUES (366, 'PIDD', 'Curvature In The Horizontal Plane', '水平面上的（井筒）曲率', 'Projection of the curvature of the wellbore onto a horizontal plane.');
INSERT INTO `kt_shiyou` VALUES (367, 'PIDD', 'Curvature In The Vertical Plane', '垂直面上的（井筒）曲率', 'Projection of the curvature of the wellbore onto a vertical plane.');
INSERT INTO `kt_shiyou` VALUES (368, 'PIDD', 'Cushion', '垫层', 'Water, drilling fluid, or nonflammable gas placed inside of the drill pipe or tubing to control both annular and formation pressure.');
INSERT INTO `kt_shiyou` VALUES (369, 'PIDD', 'Cushion Fluid Type', '垫层流体类型', 'The type of cushion fluid; e.g., water; drilling fluid; gas.');
INSERT INTO `kt_shiyou` VALUES (370, 'PIDD', 'Abandoned Date', '报废日期', 'The date a well, well completion or field was abandoned');
INSERT INTO `kt_shiyou` VALUES (371, 'PIDD', 'Abandonment Pressure', '废弃压力', 'The pressure at which a reservoir was, or is, expected to be abandoned.');
INSERT INTO `kt_shiyou` VALUES (372, 'PIDD', 'Absolute Permeability', '绝对渗透率', 'A measure of the ability of a single fluid; e.g., water, gas or oil, to flow through a rock sample when the sample is saturated with that single fluid.');
INSERT INTO `kt_shiyou` VALUES (373, 'PIDD', 'Absolute Porosity', '绝对孔隙度', 'The percentage of the total bulk volume of a rock sample that is composed of pore spaces or voids.');
INSERT INTO `kt_shiyou` VALUES (374, 'PIDD', 'Accelerator (cement)', '促凝剂（水泥）', 'SEE: Cement Accelerator.');
INSERT INTO `kt_shiyou` VALUES (375, 'PIDD', 'Acid Fracturing', '酸化压裂', 'The process of opening cracks in reservoir rock by using a combination of oil and acid under high pressure.');
INSERT INTO `kt_shiyou` VALUES (376, 'PIDD', 'Acoustic Log', '声波测井', 'A well log recording one or more specific characteristics of acoustic waves propagated in or around the borehole. Typical measurements are interval transit time, acoustic velocity and compressional or shear wave amplitude.');
INSERT INTO `kt_shiyou` VALUES (377, 'PIDD', 'Address', '地址', 'The location at which someone or something may be found.');
INSERT INTO `kt_shiyou` VALUES (378, 'PIDD', 'Agitator', '搅拌器', 'A motor-driven paddle or blade used to mix liquids and solids.');
INSERT INTO `kt_shiyou` VALUES (379, 'PIDD', 'Annular Packer', '环空封隔器', 'A mechanism that seals off annular pressure between the outside diameter (OD) of a suspended tubular member or hanger and the inside diameter (ID) of the head or thru spool which the tubular member passes or hanger is suspended.');
INSERT INTO `kt_shiyou` VALUES (380, 'PIDD', 'API', '美国石油学会', 'SEE: American Petroleum Institute.');
INSERT INTO `kt_shiyou` VALUES (381, 'PIDD', 'Beam Well', '抽油井', 'A well having fluid lifted by rods and a pump actuated by a beam pumping unit.');
INSERT INTO `kt_shiyou` VALUES (382, 'PIDD', 'Bed Name', '岩层名称', 'The name of a lithostratigraphic bed.');
INSERT INTO `kt_shiyou` VALUES (383, 'PIDD', 'Beginning Test Date', '开始测试日期', 'The date that the identified test was started. Tests include drillstem test, formation test, reservoir limits, etc.');
INSERT INTO `kt_shiyou` VALUES (384, 'PIDD', 'Blind Sidetrack', '无定向侧钻', 'SEE: Sidetrack; Uncontrolled Sidetrack.');
INSERT INTO `kt_shiyou` VALUES (385, 'PIDD', 'Boll Weevil', '新工作人员', 'An inexperienced rig or oil field employee. Sometimes the word is shortened simply to weevil.');
INSERT INTO `kt_shiyou` VALUES (386, 'PIDD', 'Borehole', '井眼、井筒、裸眼井', 'A physical hole created by boring or drilling. The term borehole is used in a descriptive sense, as in borehole axis, borehole diameter, borehole effect (on wireline log response), borehole caving and borehole televiewer.');
INSERT INTO `kt_shiyou` VALUES (387, 'PIDD', 'Borehole Azimuth Angle', '井眼方位角', 'The angle between north and the projection of the borehole axis onto a horizontal plane. Angle is referred to either true north, magnetic north, or grid north.');
INSERT INTO `kt_shiyou` VALUES (388, 'PIDD', 'Borehole Course', '井筒轨迹', 'The path of the axis of the borehole over an interval length.');
INSERT INTO `kt_shiyou` VALUES (389, 'PIDD', 'Borehole Diameter', '井径', 'Measurement of the diameter of the borehole.');
INSERT INTO `kt_shiyou` VALUES (390, 'PIDD', 'Bottom Water', '底水', 'Water occurring in a producing reservoir below the oil or gas in the reservoir.');
INSERT INTO `kt_shiyou` VALUES (391, 'PIDD', 'Bottomhole', '井底', 'Bottomhole is used to describe a position along a wellbore path that is usually at or near a terminus of an open borehole. Bottomhole is also used to describe equipment used at these positions, or physical conditions or agreements related to these positions.');
INSERT INTO `kt_shiyou` VALUES (392, 'PIDD', 'Brake', '刹车、制动器', 'A device used for retarding or stopping motion or holding.');
INSERT INTO `kt_shiyou` VALUES (393, 'PIDD', 'Caliper Log', '井径测井', '(1) A record of the diameter of the borehole or the internal diameter of tubular goods. The log indicates undue enlargement of the borehole due to caving, washout, or other causes.(2) Section gauge log: made from tools with many fingers used to measure the corrosion of casing and tubing.');
INSERT INTO `kt_shiyou` VALUES (394, 'PIDD', 'Cased Hole', '下套管井', 'A wellbore segment within which casing has been run.');
INSERT INTO `kt_shiyou` VALUES (395, 'PIDD', 'Casing', '套管', 'Steel pipe installed in the wellbore of a well as drilling progresses. The functions of casing are: (a) to prevent the wall of the borehhole from caving into the wellbore during drilling; (b) to provide control of the well if it tries to blow out; (c) to limit fluid production to the wellbore segment that was perforated or left open.');
INSERT INTO `kt_shiyou` VALUES (396, 'PIDD', 'Casing Cement', '套管水泥', 'Cement used to hold the casing in place in the borehole.');
INSERT INTO `kt_shiyou` VALUES (397, 'PIDD', 'Casing Cementing Movement', '套管固井动作', 'The type of pipe movement used during cementing to improve cement bonding to the formation wall; e.g., reciprocate; rotate.');
INSERT INTO `kt_shiyou` VALUES (398, 'PIDD', 'Casing String', '套管柱', 'The casing run into a wellbore; e.g., surface string; intermediate string; production string.');
INSERT INTO `kt_shiyou` VALUES (399, 'PIDD', 'Country', '国家、地区', 'Major political division of the topography, biology, or culture of an area.');
INSERT INTO `kt_shiyou` VALUES (400, 'PIDD', 'Country Abbreviation', '国家缩写', 'The abbreviation for a country.');
INSERT INTO `kt_shiyou` VALUES (401, 'PIDD', 'Country Code', '国家代码', 'An indicator to identify sovereign nations, colonies, areas independent in terms of internal affairs but under the protection of another country, overseas territories, and dependencies of other countries.');
INSERT INTO `kt_shiyou` VALUES (402, 'PIDD', 'Country Name', '国家名称', 'A name that identifies a country.');
INSERT INTO `kt_shiyou` VALUES (403, 'PIDD', 'Country Subdivision', '国家行政区划', 'A territory governed as an administrative or political unit of a country; e.g., state; province.');
INSERT INTO `kt_shiyou` VALUES (404, 'PIDD', 'County Name', '县名', 'The name of the county or parish, within a state.');
INSERT INTO `kt_shiyou` VALUES (405, 'PIDD', 'County Name Abbreviation', '县名缩写', 'Abbreviated name of a county or parish.');
INSERT INTO `kt_shiyou` VALUES (406, 'PIDD', 'Couplant', '耦合剂', 'A material (usually a liquid) used between ultrasonic transducer and the test specimen to conduct ultrasonic energy between them.');
INSERT INTO `kt_shiyou` VALUES (407, 'PIDD', 'Coupling', '接箍', 'A mechanical means for joining two sections of riser pipe in end to end engagement.');
INSERT INTO `kt_shiyou` VALUES (408, 'PIDD', 'Coupling Mill End', '匹配的接箍端', 'The end of the pipe to which the coupling is applied at the mill. Also referred to as: The box end of integral joint pipe.');
INSERT INTO `kt_shiyou` VALUES (409, 'PIDD', 'Coupling Outside Diameter Value', '接箍外径值', 'The outside diameter of the given coupling type.');
INSERT INTO `kt_shiyou` VALUES (410, 'PIDD', 'Coupling Preload', '接箍预负荷', 'Compressive bearing load developed between pin and box members at their interface. This is accomplished by elastic deformation during makeup of the coupling.');
INSERT INTO `kt_shiyou` VALUES (411, 'PIDD', 'Coupling Strength Value', '接箍强度值', 'The pressure required to yield the given coupling type.');
INSERT INTO `kt_shiyou` VALUES (412, 'PIDD', 'Coupon', '试样', 'Small metal strips which are exposed to corrosive systems for the purpose of determining nature and severity of corrosion.');
INSERT INTO `kt_shiyou` VALUES (413, 'PIDD', 'Course Displacement Value', '路线位移值', 'The course length multiplied by the displacement.');
INSERT INTO `kt_shiyou` VALUES (414, 'PIDD', 'Course Length', '路线长度', 'The measured length between survey points.');
INSERT INTO `kt_shiyou` VALUES (415, 'PIDD', 'Coutler Counter', '电子计数器', 'An electronic device used in measuring the finer sizes of clastic sedimentary particles; e.g., silt; clay.');
INSERT INTO `kt_shiyou` VALUES (416, 'PIDD', 'Coverage', '覆盖', 'SEE: Nominal Fold.');
INSERT INTO `kt_shiyou` VALUES (417, 'PIDD', 'CPA', '加拿大石油协会', 'SEE: Canadian Petroleum Association.');
INSERT INTO `kt_shiyou` VALUES (418, 'PIDD', 'CPI Unit', '波纹板除油装置', 'SEE: Corrugated Plate Interceptor Unit.');
INSERT INTO `kt_shiyou` VALUES (419, 'PIDD', 'Crack', '裂缝，裂隙', '(1) A stress induced separation of the metal which, without any other influence, is insufficient in extent to cause complete rupture of the material.(2) A planar discontinuity formed by separation of previously continous material.');
INSERT INTO `kt_shiyou` VALUES (420, 'PIDD', 'Cracker', '柔性接头', 'Bottomhole assembly in which single joints of drill string can be run between drill collars to produce a limber assembly.');
INSERT INTO `kt_shiyou` VALUES (421, 'PIDD', 'Cracking', '裂解，裂化', 'A conversion process that breaks big molecules into smaller ones by using heat, pressure and catalysts. Lighter oils can be made from the heavier products of the distillation process. Two types of cracking processes are thermal cracking and catalytic cracking.');
INSERT INTO `kt_shiyou` VALUES (422, 'PIDD', 'Crater', '陷坑', 'A large sink hole or cavity around a wellbore origin. Sometimes accompanies a violent blowout during which the surface surrounding the wellbore origin drops.');
INSERT INTO `kt_shiyou` VALUES (423, 'PIDD', 'Crawler', '管内移动器，清管器', 'SEE: Pig.');
INSERT INTO `kt_shiyou` VALUES (424, 'PIDD', 'Creaming Of Emulsion', '乳状液的分移', 'The settling or rising of the particles of the dispersed phase of an emulsion as observed by a difference in color shading of the layers formed. This can be either upward or downward creaming, depending upon the relative densities of the continuous and dispersed phases.');
INSERT INTO `kt_shiyou` VALUES (425, 'PIDD', 'Created Fracture', '压裂、人工裂缝', 'An induced fracture by means of hydraulic or mechanical pressure exerted on the formation.');
INSERT INTO `kt_shiyou` VALUES (426, 'PIDD', 'Credit Reference Number', '信用参考数', 'The number assigned to a credit.');
INSERT INTO `kt_shiyou` VALUES (427, 'PIDD', 'Credit Taken Amount', '信用得到的数量', 'The amount of credit applied to reported amounts.');
INSERT INTO `kt_shiyou` VALUES (428, 'PIDD', 'Creep', '蠕变', '(1) Time dependent increase in strain during a state of constant stress.(2) The gradual deformation of metals or plastics under loads applied for a long time.');
INSERT INTO `kt_shiyou` VALUES (429, 'PIDD', 'Crest', '高点、顶', '(1) The highest point of a given stratum in any vertical section of a fold.(2) The top of a thread.');
INSERT INTO `kt_shiyou` VALUES (430, 'PIDD', 'Crest Clearance', '顶间，隙', 'The distance between the crest and root of mating threads.');
INSERT INTO `kt_shiyou` VALUES (431, 'PIDD', 'Crest Truncation', '顶截距', 'The distance between the sharp crest (crest apex) and the finished crest.');
INSERT INTO `kt_shiyou` VALUES (432, 'PIDD', 'Cricondenbar', '临界凝析压力', 'The maximum pressure at which a vapor phase can exist in a multi-phase fluid system.');
INSERT INTO `kt_shiyou` VALUES (433, 'PIDD', 'Cricondentherm', '临界凝析温度', 'The maximum temperature at which a liquid phase can exist in a multi-phase fluid system.');
INSERT INTO `kt_shiyou` VALUES (434, 'PIDD', 'Crippled Bit', '跛钻头', 'By removing one cone, a drilling bit is crippled and made to act erratically. Such bits have been used for deviation drilling.');
INSERT INTO `kt_shiyou` VALUES (435, 'PIDD', 'Critical Angle', '临界角', 'The smallest angle of incidence in which a sonic, electromagnetic, or optic wave that strikes an interface will be totally reflected.');
INSERT INTO `kt_shiyou` VALUES (436, 'PIDD', 'Critical Flaw', '临界裂纹', 'A defect which is capable of causing a failure.');
INSERT INTO `kt_shiyou` VALUES (437, 'PIDD', 'Critical Flow', '临界流', 'The rate at which the velocity through an orifice or small opening has reached it\'s maximum, and remains a constant. The rate of flow is directly proportional to upstream pressure, and changes only with upstream pressure. Downstream pressure has no effect on flow rate when critical flow velocity is obtained.');
INSERT INTO `kt_shiyou` VALUES (438, 'PIDD', 'Critical Flow Prover', '临界流量计', 'A steel tube 12\" long with provisions for installing an orifice plate at one end. Two sizes are available, either 2\" or 4\" internal diameter. Two connections are provided on tube one for a thermometer bulb and the other for connecting a pressure recording meter.');
INSERT INTO `kt_shiyou` VALUES (439, 'PIDD', 'Critical Gas Saturation', '临界气饱和度', 'The lowest gas saturation in the reservoir rock at which gas will flow. When the gas saturation is less than the critical value, the permeability to gas is zero.');
INSERT INTO `kt_shiyou` VALUES (440, 'PIDD', 'Critical Pressure Measurement', '临界压力测量', 'The pressure at which a vapor turns to a liquid at the critcal temperature.');
INSERT INTO `kt_shiyou` VALUES (441, 'PIDD', 'Critical Saturation', '临界饱和度', 'The saturation of a fluid phase that must be exceeded for that phase to become mobile.');
INSERT INTO `kt_shiyou` VALUES (442, 'PIDD', 'Critical Temperature', '临界温度', 'The temperature above which a particular substance exists only as a gas no matter what the pressure.');
INSERT INTO `kt_shiyou` VALUES (443, 'PIDD', 'Critical Velocity', '临界速度', 'That velocity at the transitional point between laminar and turbulent types of fluid flow. This point occurs in the transitional range of Reynolds numbers of approximately 2,000 to 3,000.');
INSERT INTO `kt_shiyou` VALUES (444, 'PIDD', 'Critical Volume', '临界体积', 'The inverse of density at the critical point of a fluid, describing the volume occupied by a fluid of unit mass.');
INSERT INTO `kt_shiyou` VALUES (445, 'PIDD', 'Critical Z-factor', '临界Ｚ因数', 'The real gas deviation factor at the critical point.');
INSERT INTO `kt_shiyou` VALUES (446, 'PIDD', 'Crooked Hole', '弯井', 'SEE: Crooked Wellbore.');
INSERT INTO `kt_shiyou` VALUES (447, 'PIDD', 'Crooked Hole Area', '弯井区', 'An area where the drilling tends to produce wells with crooked wellbores.');
INSERT INTO `kt_shiyou` VALUES (448, 'PIDD', 'Crooked Hole Tendency', '弯井趋势', 'A characteristic of the rocks, bottomhole assembly, or drilling practices to cause a crooked wellbore to be drilled.');
INSERT INTO `kt_shiyou` VALUES (449, 'PIDD', 'Crooked Wellbore', '弯曲的井筒', 'A wellbore path that has numerous unintentional deviations from the vertical.');
INSERT INTO `kt_shiyou` VALUES (450, 'PIDD', 'Cross', '四通，十字管', 'A pressure containing fitting with a minimum of four openings. Usually all four openings are at 90 degrees to one another. Crosses may be threaded or flanged.');
INSERT INTO `kt_shiyou` VALUES (451, 'PIDD', 'Cross Assignment', '相互转让', 'When several producers, either voluntarily or by state regulation, pool acreages to form a unit. They may cross-assign their leases to one another, creating a common obligation to each royalty owner.');
INSERT INTO `kt_shiyou` VALUES (452, 'PIDD', 'Cross Head', '十字头', 'In an integral reciprocating compressor, the connecting piece which transposes oscillating motion of the connecting rod into horizontal motion of the compressor piston rod.');
INSERT INTO `kt_shiyou` VALUES (453, 'PIDD', 'Cross Talk', '道间感应，串音', 'An unwanted condition in which acoustic energy is coupled from the transmitting crystal to the receiving crystal without propagating along the intended path through the material.');
INSERT INTO `kt_shiyou` VALUES (454, 'PIDD', 'Cross Threaded', '错扣', 'Male and female threads do not match.');
INSERT INTO `kt_shiyou` VALUES (455, 'PIDD', 'Crosscorrelation', '互相关', 'A statistical process in which the similarity of the two waveforms from a seismic source is calculated as a function of the time shift or lag between the waveforms.');
INSERT INTO `kt_shiyou` VALUES (456, 'PIDD', 'Crossline', '横测线', 'The direction orthogonal to the inline direction.');
INSERT INTO `kt_shiyou` VALUES (457, 'PIDD', 'Crossline Traverse', '横测线穿程', 'A collection of seismic traces from a 3D survey in which the bin node inline index remains constant.');
INSERT INTO `kt_shiyou` VALUES (458, 'PIDD', 'Crossover Flange', '转换法兰，跨接法兰', 'A double or single studded adapter flange with a restricted area sealing means and with a top connection pressure rating above that of the lower connection.');
INSERT INTO `kt_shiyou` VALUES (459, 'PIDD', 'Crossover Point', '交点', 'In multiple layer spooling of rope on a drum, the point of rope contact where the rope crosses the preceding rope layer.');
INSERT INTO `kt_shiyou` VALUES (460, 'PIDD', 'Crossover Seat', '转换阀座', 'A special seat for a gas lift valve which directs the pressure applied at the nose of the gas lift valve to the bellows and the pressure applied to the holes in the side of the valve to the underside of the seat. It is used most often in fluid operated valves.');
INSERT INTO `kt_shiyou` VALUES (461, 'PIDD', 'Crossover Spool', '转换套管头', 'Flanged equipment with a restricted area sealing means, at or near the face of its lower flange. Crossover spools are also provided with suitable means to suspend and seal around an inner string of casing or tubing. A crossover spool has a top connection with a pressure rating above that of the lower connection.');
INSERT INTO `kt_shiyou` VALUES (462, 'PIDD', 'Crossplot', '交会图', 'A plot of one parameter versus another.');
INSERT INTO `kt_shiyou` VALUES (463, 'PIDD', 'Crowd The Bit', '聚合（加重）钻头', 'Term used to indicate that more weight is applied to the bit than needed for efficient drilling. A crowded bit will usually increase the inclination or cause an azimuth change.');
INSERT INTO `kt_shiyou` VALUES (464, 'PIDD', 'Crown', '拱高', 'The curvature of the screen deck or the difference in elevation between the high and low points.');
INSERT INTO `kt_shiyou` VALUES (465, 'PIDD', 'Crown Block', '天车', 'Sheaves (pulley wheels) and supporting beams on top of a derrick.');
INSERT INTO `kt_shiyou` VALUES (466, 'PIDD', 'Crown Valve', '（采油树）顶阀', 'The uppermost valve on the vertical bore of the christmas tree above the flowline outlet.');
INSERT INTO `kt_shiyou` VALUES (467, 'PIDD', 'Crude Oil', '原油', 'A mixture of varying proportions of hydrocarbons, natural gas, and entrained sediments and water. Crude oil exists in the liquid phase in natural underground reservoirs and remains a liquid at atmospheric pressure and 60 degrees Fahrenheit.');
INSERT INTO `kt_shiyou` VALUES (468, 'PIDD', 'Crude Oil Characterization Factor', '原油特性因素', 'The characterization factor developed by United States Bureau of Mines (USBM) for crude oils, defined as the cube root of the molal average boiling point (degrees Rankine) divided by the specific gravity at 60 degrees Fahrenheit.');
INSERT INTO `kt_shiyou` VALUES (469, 'PIDD', 'Crude Oil Posting Amount', '原油标注价', 'The maximum price payable based on crude oil postings. (Flat rate contracts only).');
INSERT INTO `kt_shiyou` VALUES (470, 'PIDD', 'Crusher', '破碎机', 'Equipment used to break, pound, or grind larger objects into smaller fragments.');
INSERT INTO `kt_shiyou` VALUES (471, 'PIDD', 'Cryogenics', '深冷技术', 'Technique utilizing extremely low temperatures to produce natural gas liquids from a raw gas stream.');
INSERT INTO `kt_shiyou` VALUES (472, 'PIDD', 'Crystal', '晶体', '(1) A piezoelectric element in a probe or search unit.(2) (Mineralogical) A homogeneous, solid body of a chemical element, compound or isomorphous mixture, having a regularly repeating atomic structure that may be externally apparent as plane faces.');
INSERT INTO `kt_shiyou` VALUES (473, 'PIDD', 'Cumulative Displacement Value', '累积位移值', 'The sum of the displacement through the current reading.');
INSERT INTO `kt_shiyou` VALUES (474, 'PIDD', 'Cumulative Fatigue Damage', '累积疲劳损伤', 'The total of fatigue damage caused by repeated cyclic stresses.');
INSERT INTO `kt_shiyou` VALUES (475, 'PIDD', 'Cumulative Gas Production Volume', '累积产气量容积', 'The total amount of gas produced from the property/well/ reservoir from the beginning of production through a specific production date or until abandonment.');
INSERT INTO `kt_shiyou` VALUES (476, 'PIDD', 'Cumulative Oil Production Volume', '累积产油量容积', 'The total amount of oil or condensate produced from the reservoir within the well from the beginning of production through the specified production date or until the reservoir was abandoned.');
INSERT INTO `kt_shiyou` VALUES (477, 'PIDD', 'Cumulative Water Production Volume', '累积产水量容积', 'The total amount of water produced from the property/well/ reservoir from the beginning of production through a specified production date or until abandonment.');
INSERT INTO `kt_shiyou` VALUES (478, 'PIDD', 'Cupronickel', '铜镍合金，白铜', 'An alloy of copper (70 percent or over) and nickel.');
INSERT INTO `kt_shiyou` VALUES (479, 'PIDD', 'Curing', '养护', 'Aging of cement specimens under specified conditions.');
INSERT INTO `kt_shiyou` VALUES (480, 'PIDD', 'Curing Atmospheric Pressure', '养护大气压力', 'The aging of cement specimens for test purposes at normal atmospheric pressure of 14.7 psi (1 kg/cm2) at sea level and temperature below about 200 F (93.3 C), for a designated period of time under certain given conditions of temperature and humidity. Also referred to as: Curing Pressure.');
INSERT INTO `kt_shiyou` VALUES (481, 'PIDD', 'Current Authorization Cost', '目前核准费用', 'Cost associated with this appropriation/AFE number.');
INSERT INTO `kt_shiyou` VALUES (482, 'PIDD', 'Current Overpayment Gross Amount', '目前多付总额', 'The balance of the gross value for an accounting lease associated with an overpayment that has not yet been recovered.');
INSERT INTO `kt_shiyou` VALUES (483, 'PIDD', 'Current Reservoir Depth', '目前储层深度', 'Measured depth of present reservoir.');
INSERT INTO `kt_shiyou` VALUES (484, 'PIDD', 'Current Reservoir Name', '目前储层名称', 'The name of the present reservoir to which the well is completed.');
INSERT INTO `kt_shiyou` VALUES (485, 'PIDD', 'Current Tax Due Amount', '目前应交税款数', 'The tax calculated and due in the current reporting period.');
INSERT INTO `kt_shiyou` VALUES (486, 'PIDD', 'Current Value Balance Amount', '目前价值平衡额', 'The total accumulated value tracked against a bonus, advanced rental, or overpayment.');
INSERT INTO `kt_shiyou` VALUES (487, 'PIDD', 'Current Well Activity Date', '目前井的作业日期', 'The start date of the current well site activity.');
INSERT INTO `kt_shiyou` VALUES (488, 'PIDD', 'Current Well Activity Type', '目前井的作业类型', 'The current activity for the well. Reports of activities are accompanied by a start date, which defines when the well began the activity.');
INSERT INTO `kt_shiyou` VALUES (489, 'PIDD', 'Curvature In The Horizontal Plane', '水平面上的（井筒）曲率', 'Projection of the curvature of the wellbore onto a horizontal plane.');
INSERT INTO `kt_shiyou` VALUES (490, 'PIDD', 'Curvature In The Vertical Plane', '垂直面上的（井筒）曲率', 'Projection of the curvature of the wellbore onto a vertical plane.');
INSERT INTO `kt_shiyou` VALUES (491, 'PIDD', 'Cushion', '垫层', 'Water, drilling fluid, or nonflammable gas placed inside of the drill pipe or tubing to control both annular and formation pressure.');
INSERT INTO `kt_shiyou` VALUES (492, 'PIDD', 'Cushion Fluid Type', '垫层流体类型', 'The type of cushion fluid; e.g., water; drilling fluid; gas.');
INSERT INTO `kt_shiyou` VALUES (493, 'PIDD', 'Abandoned Date', '报废日期', 'The date a well, well completion or field was abandoned');
INSERT INTO `kt_shiyou` VALUES (494, 'PIDD', 'Abandonment Pressure', '废弃压力', 'The pressure at which a reservoir was, or is, expected to be abandoned.');
INSERT INTO `kt_shiyou` VALUES (495, 'PIDD', 'Absolute Permeability', '绝对渗透率', 'A measure of the ability of a single fluid; e.g., water, gas or oil, to flow through a rock sample when the sample is saturated with that single fluid.');
INSERT INTO `kt_shiyou` VALUES (496, 'PIDD', 'Absolute Porosity', '绝对孔隙度', 'The percentage of the total bulk volume of a rock sample that is composed of pore spaces or voids.');
INSERT INTO `kt_shiyou` VALUES (497, 'PIDD', 'Accelerator (cement)', '促凝剂（水泥）', 'SEE: Cement Accelerator.');
INSERT INTO `kt_shiyou` VALUES (498, 'PIDD', 'Acid Fracturing', '酸化压裂', 'The process of opening cracks in reservoir rock by using a combination of oil and acid under high pressure.');
INSERT INTO `kt_shiyou` VALUES (499, 'PIDD', 'Acoustic Log', '声波测井', 'A well log recording one or more specific characteristics of acoustic waves propagated in or around the borehole. Typical measurements are interval transit time, acoustic velocity and compressional or shear wave amplitude.');
INSERT INTO `kt_shiyou` VALUES (500, 'PIDD', 'Address', '地址', 'The location at which someone or something may be found.');
INSERT INTO `kt_shiyou` VALUES (501, 'PIDD', 'Agitator', '搅拌器', 'A motor-driven paddle or blade used to mix liquids and solids.');
INSERT INTO `kt_shiyou` VALUES (502, 'PIDD', 'Annular Packer', '环空封隔器', 'A mechanism that seals off annular pressure between the outside diameter (OD) of a suspended tubular member or hanger and the inside diameter (ID) of the head or thru spool which the tubular member passes or hanger is suspended.');
INSERT INTO `kt_shiyou` VALUES (503, 'PIDD', 'API', '美国石油学会', 'SEE: American Petroleum Institute.');
INSERT INTO `kt_shiyou` VALUES (504, 'PIDD', 'Beam Well', '抽油井', 'A well having fluid lifted by rods and a pump actuated by a beam pumping unit.');
INSERT INTO `kt_shiyou` VALUES (505, 'PIDD', 'Bed Name', '岩层名称', 'The name of a lithostratigraphic bed.');
INSERT INTO `kt_shiyou` VALUES (506, 'PIDD', 'Beginning Test Date', '开始测试日期', 'The date that the identified test was started. Tests include drillstem test, formation test, reservoir limits, etc.');
INSERT INTO `kt_shiyou` VALUES (507, 'PIDD', 'Blind Sidetrack', '无定向侧钻', 'SEE: Sidetrack; Uncontrolled Sidetrack.');
INSERT INTO `kt_shiyou` VALUES (508, 'PIDD', 'Boll Weevil', '新工作人员', 'An inexperienced rig or oil field employee. Sometimes the word is shortened simply to weevil.');
INSERT INTO `kt_shiyou` VALUES (509, 'PIDD', 'Borehole', '井眼、井筒、裸眼井', 'A physical hole created by boring or drilling. The term borehole is used in a descriptive sense, as in borehole axis, borehole diameter, borehole effect (on wireline log response), borehole caving and borehole televiewer.');
INSERT INTO `kt_shiyou` VALUES (510, 'PIDD', 'Borehole Azimuth Angle', '井眼方位角', 'The angle between north and the projection of the borehole axis onto a horizontal plane. Angle is referred to either true north, magnetic north, or grid north.');
INSERT INTO `kt_shiyou` VALUES (511, 'PIDD', 'Borehole Course', '井筒轨迹', 'The path of the axis of the borehole over an interval length.');
INSERT INTO `kt_shiyou` VALUES (512, 'PIDD', 'Borehole Diameter', '井径', 'Measurement of the diameter of the borehole.');
INSERT INTO `kt_shiyou` VALUES (513, 'PIDD', 'Bottom Water', '底水', 'Water occurring in a producing reservoir below the oil or gas in the reservoir.');
INSERT INTO `kt_shiyou` VALUES (514, 'PIDD', 'Bottomhole', '井底', 'Bottomhole is used to describe a position along a wellbore path that is usually at or near a terminus of an open borehole. Bottomhole is also used to describe equipment used at these positions, or physical conditions or agreements related to these positions.');
INSERT INTO `kt_shiyou` VALUES (515, 'PIDD', 'Brake', '刹车、制动器', 'A device used for retarding or stopping motion or holding.');
INSERT INTO `kt_shiyou` VALUES (516, 'PIDD', 'Caliper Log', '井径测井', '(1) A record of the diameter of the borehole or the internal diameter of tubular goods. The log indicates undue enlargement of the borehole due to caving, washout, or other causes.(2) Section gauge log: made from tools with many fingers used to measure the corrosion of casing and tubing.');
INSERT INTO `kt_shiyou` VALUES (517, 'PIDD', 'Cased Hole', '下套管井', 'A wellbore segment within which casing has been run.');
INSERT INTO `kt_shiyou` VALUES (518, 'PIDD', 'Casing', '套管', 'Steel pipe installed in the wellbore of a well as drilling progresses. The functions of casing are: (a) to prevent the wall of the borehhole from caving into the wellbore during drilling; (b) to provide control of the well if it tries to blow out; (c) to limit fluid production to the wellbore segment that was perforated or left open.');
INSERT INTO `kt_shiyou` VALUES (519, 'PIDD', 'Casing Cement', '套管水泥', 'Cement used to hold the casing in place in the borehole.');
INSERT INTO `kt_shiyou` VALUES (520, 'PIDD', 'Casing Cementing Movement', '套管固井动作', 'The type of pipe movement used during cementing to improve cement bonding to the formation wall; e.g., reciprocate; rotate.');
INSERT INTO `kt_shiyou` VALUES (521, 'PIDD', 'Casing String', '套管柱', 'The casing run into a wellbore; e.g., surface string; intermediate string; production string.');
INSERT INTO `kt_shiyou` VALUES (522, 'PIDD', 'Country', '国家、地区', 'Major political division of the topography, biology, or culture of an area.');
INSERT INTO `kt_shiyou` VALUES (523, 'PIDD', 'Country Abbreviation', '国家缩写', 'The abbreviation for a country.');
INSERT INTO `kt_shiyou` VALUES (524, 'PIDD', 'Country Code', '国家代码', 'An indicator to identify sovereign nations, colonies, areas independent in terms of internal affairs but under the protection of another country, overseas territories, and dependencies of other countries.');
INSERT INTO `kt_shiyou` VALUES (525, 'PIDD', 'Country Name', '国家名称', 'A name that identifies a country.');
INSERT INTO `kt_shiyou` VALUES (526, 'PIDD', 'Country Subdivision', '国家行政区划', 'A territory governed as an administrative or political unit of a country; e.g., state; province.');
INSERT INTO `kt_shiyou` VALUES (527, 'PIDD', 'County Name', '县名', 'The name of the county or parish, within a state.');
INSERT INTO `kt_shiyou` VALUES (528, 'PIDD', 'County Name Abbreviation', '县名缩写', 'Abbreviated name of a county or parish.');
INSERT INTO `kt_shiyou` VALUES (529, 'PIDD', 'Couplant', '耦合剂', 'A material (usually a liquid) used between ultrasonic transducer and the test specimen to conduct ultrasonic energy between them.');
INSERT INTO `kt_shiyou` VALUES (530, 'PIDD', 'Coupling', '接箍', 'A mechanical means for joining two sections of riser pipe in end to end engagement.');
INSERT INTO `kt_shiyou` VALUES (531, 'PIDD', 'Coupling Mill End', '匹配的接箍端', 'The end of the pipe to which the coupling is applied at the mill. Also referred to as: The box end of integral joint pipe.');
INSERT INTO `kt_shiyou` VALUES (532, 'PIDD', 'Coupling Outside Diameter Value', '接箍外径值', 'The outside diameter of the given coupling type.');
INSERT INTO `kt_shiyou` VALUES (533, 'PIDD', 'Coupling Preload', '接箍预负荷', 'Compressive bearing load developed between pin and box members at their interface. This is accomplished by elastic deformation during makeup of the coupling.');
INSERT INTO `kt_shiyou` VALUES (534, 'PIDD', 'Coupling Strength Value', '接箍强度值', 'The pressure required to yield the given coupling type.');
INSERT INTO `kt_shiyou` VALUES (535, 'PIDD', 'Coupon', '试样', 'Small metal strips which are exposed to corrosive systems for the purpose of determining nature and severity of corrosion.');
INSERT INTO `kt_shiyou` VALUES (536, 'PIDD', 'Course Displacement Value', '路线位移值', 'The course length multiplied by the displacement.');
INSERT INTO `kt_shiyou` VALUES (537, 'PIDD', 'Course Length', '路线长度', 'The measured length between survey points.');
INSERT INTO `kt_shiyou` VALUES (538, 'PIDD', 'Coutler Counter', '电子计数器', 'An electronic device used in measuring the finer sizes of clastic sedimentary particles; e.g., silt; clay.');
INSERT INTO `kt_shiyou` VALUES (539, 'PIDD', 'Coverage', '覆盖', 'SEE: Nominal Fold.');
INSERT INTO `kt_shiyou` VALUES (540, 'PIDD', 'CPA', '加拿大石油协会', 'SEE: Canadian Petroleum Association.');
INSERT INTO `kt_shiyou` VALUES (541, 'PIDD', 'CPI Unit', '波纹板除油装置', 'SEE: Corrugated Plate Interceptor Unit.');
INSERT INTO `kt_shiyou` VALUES (542, 'PIDD', 'Crack', '裂缝，裂隙', '(1) A stress induced separation of the metal which, without any other influence, is insufficient in extent to cause complete rupture of the material.(2) A planar discontinuity formed by separation of previously continous material.');
INSERT INTO `kt_shiyou` VALUES (543, 'PIDD', 'Cracker', '柔性接头', 'Bottomhole assembly in which single joints of drill string can be run between drill collars to produce a limber assembly.');
INSERT INTO `kt_shiyou` VALUES (544, 'PIDD', 'Cracking', '裂解，裂化', 'A conversion process that breaks big molecules into smaller ones by using heat, pressure and catalysts. Lighter oils can be made from the heavier products of the distillation process. Two types of cracking processes are thermal cracking and catalytic cracking.');
INSERT INTO `kt_shiyou` VALUES (545, 'PIDD', 'Crater', '陷坑', 'A large sink hole or cavity around a wellbore origin. Sometimes accompanies a violent blowout during which the surface surrounding the wellbore origin drops.');
INSERT INTO `kt_shiyou` VALUES (546, 'PIDD', 'Crawler', '管内移动器，清管器', 'SEE: Pig.');
INSERT INTO `kt_shiyou` VALUES (547, 'PIDD', 'Creaming Of Emulsion', '乳状液的分移', 'The settling or rising of the particles of the dispersed phase of an emulsion as observed by a difference in color shading of the layers formed. This can be either upward or downward creaming, depending upon the relative densities of the continuous and dispersed phases.');
INSERT INTO `kt_shiyou` VALUES (548, 'PIDD', 'Created Fracture', '压裂、人工裂缝', 'An induced fracture by means of hydraulic or mechanical pressure exerted on the formation.');
INSERT INTO `kt_shiyou` VALUES (549, 'PIDD', 'Credit Reference Number', '信用参考数', 'The number assigned to a credit.');
INSERT INTO `kt_shiyou` VALUES (550, 'PIDD', 'Credit Taken Amount', '信用得到的数量', 'The amount of credit applied to reported amounts.');
INSERT INTO `kt_shiyou` VALUES (551, 'PIDD', 'Creep', '蠕变', '(1) Time dependent increase in strain during a state of constant stress.(2) The gradual deformation of metals or plastics under loads applied for a long time.');
INSERT INTO `kt_shiyou` VALUES (552, 'PIDD', 'Crest', '高点、顶', '(1) The highest point of a given stratum in any vertical section of a fold.(2) The top of a thread.');
INSERT INTO `kt_shiyou` VALUES (553, 'PIDD', 'Crest Clearance', '顶间，隙', 'The distance between the crest and root of mating threads.');
INSERT INTO `kt_shiyou` VALUES (554, 'PIDD', 'Crest Truncation', '顶截距', 'The distance between the sharp crest (crest apex) and the finished crest.');
INSERT INTO `kt_shiyou` VALUES (555, 'PIDD', 'Cricondenbar', '临界凝析压力', 'The maximum pressure at which a vapor phase can exist in a multi-phase fluid system.');
INSERT INTO `kt_shiyou` VALUES (556, 'PIDD', 'Cricondentherm', '临界凝析温度', 'The maximum temperature at which a liquid phase can exist in a multi-phase fluid system.');
INSERT INTO `kt_shiyou` VALUES (557, 'PIDD', 'Crippled Bit', '跛钻头', 'By removing one cone, a drilling bit is crippled and made to act erratically. Such bits have been used for deviation drilling.');
INSERT INTO `kt_shiyou` VALUES (558, 'PIDD', 'Critical Angle', '临界角', 'The smallest angle of incidence in which a sonic, electromagnetic, or optic wave that strikes an interface will be totally reflected.');
INSERT INTO `kt_shiyou` VALUES (559, 'PIDD', 'Critical Flaw', '临界裂纹', 'A defect which is capable of causing a failure.');
INSERT INTO `kt_shiyou` VALUES (560, 'PIDD', 'Critical Flow', '临界流', 'The rate at which the velocity through an orifice or small opening has reached it\'s maximum, and remains a constant. The rate of flow is directly proportional to upstream pressure, and changes only with upstream pressure. Downstream pressure has no effect on flow rate when critical flow velocity is obtained.');
INSERT INTO `kt_shiyou` VALUES (561, 'PIDD', 'Critical Flow Prover', '临界流量计', 'A steel tube 12\" long with provisions for installing an orifice plate at one end. Two sizes are available, either 2\" or 4\" internal diameter. Two connections are provided on tube one for a thermometer bulb and the other for connecting a pressure recording meter.');
INSERT INTO `kt_shiyou` VALUES (562, 'PIDD', 'Critical Gas Saturation', '临界气饱和度', 'The lowest gas saturation in the reservoir rock at which gas will flow. When the gas saturation is less than the critical value, the permeability to gas is zero.');
INSERT INTO `kt_shiyou` VALUES (563, 'PIDD', 'Critical Pressure Measurement', '临界压力测量', 'The pressure at which a vapor turns to a liquid at the critcal temperature.');
INSERT INTO `kt_shiyou` VALUES (564, 'PIDD', 'Critical Saturation', '临界饱和度', 'The saturation of a fluid phase that must be exceeded for that phase to become mobile.');
INSERT INTO `kt_shiyou` VALUES (565, 'PIDD', 'Critical Temperature', '临界温度', 'The temperature above which a particular substance exists only as a gas no matter what the pressure.');
INSERT INTO `kt_shiyou` VALUES (566, 'PIDD', 'Critical Velocity', '临界速度', 'That velocity at the transitional point between laminar and turbulent types of fluid flow. This point occurs in the transitional range of Reynolds numbers of approximately 2,000 to 3,000.');
INSERT INTO `kt_shiyou` VALUES (567, 'PIDD', 'Critical Volume', '临界体积', 'The inverse of density at the critical point of a fluid, describing the volume occupied by a fluid of unit mass.');
INSERT INTO `kt_shiyou` VALUES (568, 'PIDD', 'Critical Z-factor', '临界Ｚ因数', 'The real gas deviation factor at the critical point.');
INSERT INTO `kt_shiyou` VALUES (569, 'PIDD', 'Crooked Hole', '弯井', 'SEE: Crooked Wellbore.');
INSERT INTO `kt_shiyou` VALUES (570, 'PIDD', 'Crooked Hole Area', '弯井区', 'An area where the drilling tends to produce wells with crooked wellbores.');
INSERT INTO `kt_shiyou` VALUES (571, 'PIDD', 'Crooked Hole Tendency', '弯井趋势', 'A characteristic of the rocks, bottomhole assembly, or drilling practices to cause a crooked wellbore to be drilled.');
INSERT INTO `kt_shiyou` VALUES (572, 'PIDD', 'Crooked Wellbore', '弯曲的井筒', 'A wellbore path that has numerous unintentional deviations from the vertical.');
INSERT INTO `kt_shiyou` VALUES (573, 'PIDD', 'Cross', '四通，十字管', 'A pressure containing fitting with a minimum of four openings. Usually all four openings are at 90 degrees to one another. Crosses may be threaded or flanged.');
INSERT INTO `kt_shiyou` VALUES (574, 'PIDD', 'Cross Assignment', '相互转让', 'When several producers, either voluntarily or by state regulation, pool acreages to form a unit. They may cross-assign their leases to one another, creating a common obligation to each royalty owner.');
INSERT INTO `kt_shiyou` VALUES (575, 'PIDD', 'Cross Head', '十字头', 'In an integral reciprocating compressor, the connecting piece which transposes oscillating motion of the connecting rod into horizontal motion of the compressor piston rod.');
INSERT INTO `kt_shiyou` VALUES (576, 'PIDD', 'Cross Talk', '道间感应，串音', 'An unwanted condition in which acoustic energy is coupled from the transmitting crystal to the receiving crystal without propagating along the intended path through the material.');
INSERT INTO `kt_shiyou` VALUES (577, 'PIDD', 'Cross Threaded', '错扣', 'Male and female threads do not match.');
INSERT INTO `kt_shiyou` VALUES (578, 'PIDD', 'Crosscorrelation', '互相关', 'A statistical process in which the similarity of the two waveforms from a seismic source is calculated as a function of the time shift or lag between the waveforms.');
INSERT INTO `kt_shiyou` VALUES (579, 'PIDD', 'Crossline', '横测线', 'The direction orthogonal to the inline direction.');
INSERT INTO `kt_shiyou` VALUES (580, 'PIDD', 'Crossline Traverse', '横测线穿程', 'A collection of seismic traces from a 3D survey in which the bin node inline index remains constant.');
INSERT INTO `kt_shiyou` VALUES (581, 'PIDD', 'Crossover Flange', '转换法兰，跨接法兰', 'A double or single studded adapter flange with a restricted area sealing means and with a top connection pressure rating above that of the lower connection.');
INSERT INTO `kt_shiyou` VALUES (582, 'PIDD', 'Crossover Point', '交点', 'In multiple layer spooling of rope on a drum, the point of rope contact where the rope crosses the preceding rope layer.');
INSERT INTO `kt_shiyou` VALUES (583, 'PIDD', 'Crossover Seat', '转换阀座', 'A special seat for a gas lift valve which directs the pressure applied at the nose of the gas lift valve to the bellows and the pressure applied to the holes in the side of the valve to the underside of the seat. It is used most often in fluid operated valves.');
INSERT INTO `kt_shiyou` VALUES (584, 'PIDD', 'Crossover Spool', '转换套管头', 'Flanged equipment with a restricted area sealing means, at or near the face of its lower flange. Crossover spools are also provided with suitable means to suspend and seal around an inner string of casing or tubing. A crossover spool has a top connection with a pressure rating above that of the lower connection.');
INSERT INTO `kt_shiyou` VALUES (585, 'PIDD', 'Crossplot', '交会图', 'A plot of one parameter versus another.');
INSERT INTO `kt_shiyou` VALUES (586, 'PIDD', 'Crowd The Bit', '聚合（加重）钻头', 'Term used to indicate that more weight is applied to the bit than needed for efficient drilling. A crowded bit will usually increase the inclination or cause an azimuth change.');
INSERT INTO `kt_shiyou` VALUES (587, 'PIDD', 'Crown', '拱高', 'The curvature of the screen deck or the difference in elevation between the high and low points.');
INSERT INTO `kt_shiyou` VALUES (588, 'PIDD', 'Crown Block', '天车', 'Sheaves (pulley wheels) and supporting beams on top of a derrick.');
INSERT INTO `kt_shiyou` VALUES (589, 'PIDD', 'Crown Valve', '（采油树）顶阀', 'The uppermost valve on the vertical bore of the christmas tree above the flowline outlet.');
INSERT INTO `kt_shiyou` VALUES (590, 'PIDD', 'Crude Oil', '原油', 'A mixture of varying proportions of hydrocarbons, natural gas, and entrained sediments and water. Crude oil exists in the liquid phase in natural underground reservoirs and remains a liquid at atmospheric pressure and 60 degrees Fahrenheit.');
INSERT INTO `kt_shiyou` VALUES (591, 'PIDD', 'Crude Oil Characterization Factor', '原油特性因素', 'The characterization factor developed by United States Bureau of Mines (USBM) for crude oils, defined as the cube root of the molal average boiling point (degrees Rankine) divided by the specific gravity at 60 degrees Fahrenheit.');
INSERT INTO `kt_shiyou` VALUES (592, 'PIDD', 'Crude Oil Posting Amount', '原油标注价', 'The maximum price payable based on crude oil postings. (Flat rate contracts only).');
INSERT INTO `kt_shiyou` VALUES (593, 'PIDD', 'Crusher', '破碎机', 'Equipment used to break, pound, or grind larger objects into smaller fragments.');
INSERT INTO `kt_shiyou` VALUES (594, 'PIDD', 'Cryogenics', '深冷技术', 'Technique utilizing extremely low temperatures to produce natural gas liquids from a raw gas stream.');
INSERT INTO `kt_shiyou` VALUES (595, 'PIDD', 'Crystal', '晶体', '(1) A piezoelectric element in a probe or search unit.(2) (Mineralogical) A homogeneous, solid body of a chemical element, compound or isomorphous mixture, having a regularly repeating atomic structure that may be externally apparent as plane faces.');
INSERT INTO `kt_shiyou` VALUES (596, 'PIDD', 'Cumulative Displacement Value', '累积位移值', 'The sum of the displacement through the current reading.');
INSERT INTO `kt_shiyou` VALUES (597, 'PIDD', 'Cumulative Fatigue Damage', '累积疲劳损伤', 'The total of fatigue damage caused by repeated cyclic stresses.');
INSERT INTO `kt_shiyou` VALUES (598, 'PIDD', 'Cumulative Gas Production Volume', '累积产气量容积', 'The total amount of gas produced from the property/well/ reservoir from the beginning of production through a specific production date or until abandonment.');
INSERT INTO `kt_shiyou` VALUES (599, 'PIDD', 'Cumulative Oil Production Volume', '累积产油量容积', 'The total amount of oil or condensate produced from the reservoir within the well from the beginning of production through the specified production date or until the reservoir was abandoned.');
INSERT INTO `kt_shiyou` VALUES (600, 'PIDD', 'Cumulative Water Production Volume', '累积产水量容积', 'The total amount of water produced from the property/well/ reservoir from the beginning of production through a specified production date or until abandonment.');
INSERT INTO `kt_shiyou` VALUES (601, 'PIDD', 'Cupronickel', '铜镍合金，白铜', 'An alloy of copper (70 percent or over) and nickel.');
INSERT INTO `kt_shiyou` VALUES (602, 'PIDD', 'Curing', '养护', 'Aging of cement specimens under specified conditions.');
INSERT INTO `kt_shiyou` VALUES (603, 'PIDD', 'Curing Atmospheric Pressure', '养护大气压力', 'The aging of cement specimens for test purposes at normal atmospheric pressure of 14.7 psi (1 kg/cm2) at sea level and temperature below about 200 F (93.3 C), for a designated period of time under certain given conditions of temperature and humidity. Also referred to as: Curing Pressure.');
INSERT INTO `kt_shiyou` VALUES (604, 'PIDD', 'Current Authorization Cost', '目前核准费用', 'Cost associated with this appropriation/AFE number.');
INSERT INTO `kt_shiyou` VALUES (605, 'PIDD', 'Current Overpayment Gross Amount', '目前多付总额', 'The balance of the gross value for an accounting lease associated with an overpayment that has not yet been recovered.');
INSERT INTO `kt_shiyou` VALUES (606, 'PIDD', 'Current Reservoir Depth', '目前储层深度', 'Measured depth of present reservoir.');
INSERT INTO `kt_shiyou` VALUES (607, 'PIDD', 'Current Reservoir Name', '目前储层名称', 'The name of the present reservoir to which the well is completed.');
INSERT INTO `kt_shiyou` VALUES (608, 'PIDD', 'Current Tax Due Amount', '目前应交税款数', 'The tax calculated and due in the current reporting period.');
INSERT INTO `kt_shiyou` VALUES (609, 'PIDD', 'Current Value Balance Amount', '目前价值平衡额', 'The total accumulated value tracked against a bonus, advanced rental, or overpayment.');
INSERT INTO `kt_shiyou` VALUES (610, 'PIDD', 'Current Well Activity Date', '目前井的作业日期', 'The start date of the current well site activity.');
INSERT INTO `kt_shiyou` VALUES (611, 'PIDD', 'Current Well Activity Type', '目前井的作业类型', 'The current activity for the well. Reports of activities are accompanied by a start date, which defines when the well began the activity.');
INSERT INTO `kt_shiyou` VALUES (612, 'PIDD', 'Curvature In The Horizontal Plane', '水平面上的（井筒）曲率', 'Projection of the curvature of the wellbore onto a horizontal plane.');
INSERT INTO `kt_shiyou` VALUES (613, 'PIDD', 'Curvature In The Vertical Plane', '垂直面上的（井筒）曲率', 'Projection of the curvature of the wellbore onto a vertical plane.');
INSERT INTO `kt_shiyou` VALUES (614, 'PIDD', 'Cushion', '垫层', 'Water, drilling fluid, or nonflammable gas placed inside of the drill pipe or tubing to control both annular and formation pressure.');
INSERT INTO `kt_shiyou` VALUES (615, 'PIDD', 'Cushion Fluid Type', '垫层流体类型', 'The type of cushion fluid; e.g., water; drilling fluid; gas.');

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '参数配置表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2023-03-02 10:08:02', '', NULL, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2023-03-02 10:08:02', '', NULL, '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2023-03-02 10:08:02', '', NULL, '深黑主题theme-dark，浅色主题theme-light，深蓝主题theme-blue');
INSERT INTO `sys_config` VALUES (4, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2023-03-02 10:08:02', '', NULL, '是否开启注册用户功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (5, '用户管理-密码字符范围', 'sys.account.chrtype', '0', 'Y', 'admin', '2023-03-02 10:08:02', '', NULL, '默认任意字符范围，0任意（密码可以输入任意字符），1数字（密码只能为0-9数字），2英文字母（密码只能为a-z和A-Z字母），3字母和数字（密码必须包含字母，数字）,4字母数字和特殊字符（目前支持的特殊字符包括：~!@#$%^&*()-=_+）');
INSERT INTO `sys_config` VALUES (6, '用户管理-初始密码修改策略', 'sys.account.initPasswordModify', '0', 'Y', 'admin', '2023-03-02 10:08:02', '', NULL, '0：初始密码修改策略关闭，没有任何提示，1：提醒用户，如果未修改初始密码，则在登录时就会提醒修改密码对话框');
INSERT INTO `sys_config` VALUES (7, '用户管理-账号密码更新周期', 'sys.account.passwordValidateDays', '0', 'Y', 'admin', '2023-03-02 10:08:02', '', NULL, '密码更新周期（填写数字，数据初始化值为0不限制，若修改必须为大于0小于365的正整数），如果超过这个周期登录系统时，则在登录时就会提醒修改密码对话框');
INSERT INTO `sys_config` VALUES (8, '主框架页-菜单导航显示风格', 'sys.index.menuStyle', 'default', 'Y', 'admin', '2023-03-02 10:08:02', '', NULL, '菜单导航显示风格（default为左侧导航菜单，topnav为顶部导航菜单）');
INSERT INTO `sys_config` VALUES (9, '主框架页-是否开启页脚', 'sys.index.footer', 'true', 'Y', 'admin', '2023-03-02 10:08:02', '', NULL, '是否开启底部页脚显示（true显示，false隐藏）');
INSERT INTO `sys_config` VALUES (10, '主框架页-是否开启页签', 'sys.index.tagsView', 'true', 'Y', 'admin', '2023-03-02 10:08:02', '', NULL, '是否开启菜单多页签显示（true显示，false隐藏）');
INSERT INTO `sys_config` VALUES (11, '用户登录-黑名单列表', 'sys.login.blackIPList', '', 'Y', 'admin', '2023-03-02 10:08:02', '', NULL, '设置登录IP黑名单限制，多个匹配项以;分隔，支持匹配（*通配、网段）');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 110 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '部门表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', '若依科技', 0, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-03-02 10:08:02', '', NULL);
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', '深圳总公司', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-03-02 10:08:02', '', NULL);
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', '长沙分公司', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-03-02 10:08:02', '', NULL);
INSERT INTO `sys_dept` VALUES (103, 101, '0,100,101', '研发部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-03-02 10:08:02', '', NULL);
INSERT INTO `sys_dept` VALUES (104, 101, '0,100,101', '市场部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-03-02 10:08:02', '', NULL);
INSERT INTO `sys_dept` VALUES (105, 101, '0,100,101', '测试部门', 3, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-03-02 10:08:02', '', NULL);
INSERT INTO `sys_dept` VALUES (106, 101, '0,100,101', '财务部门', 4, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-03-02 10:08:02', '', NULL);
INSERT INTO `sys_dept` VALUES (107, 101, '0,100,101', '运维部门', 5, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-03-02 10:08:02', '', NULL);
INSERT INTO `sys_dept` VALUES (108, 102, '0,100,102', '市场部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-03-02 10:08:02', '', NULL);
INSERT INTO `sys_dept` VALUES (109, 102, '0,100,102', '财务部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-03-02 10:08:02', '', NULL);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '字典数据表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2023-03-02 10:08:02', '', NULL, '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2023-03-02 10:08:02', '', NULL, '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2023-03-02 10:08:02', '', NULL, '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2023-03-02 10:08:02', '', NULL, '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2023-03-02 10:08:02', '', NULL, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2023-03-02 10:08:02', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2023-03-02 10:08:02', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2023-03-02 10:08:02', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2023-03-02 10:08:02', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2023-03-02 10:08:02', '', NULL, '默认分组');
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2023-03-02 10:08:02', '', NULL, '系统分组');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2023-03-02 10:08:02', '', NULL, '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2023-03-02 10:08:02', '', NULL, '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2023-03-02 10:08:02', '', NULL, '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2023-03-02 10:08:02', '', NULL, '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2023-03-02 10:08:02', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2023-03-02 10:08:02', '', NULL, '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 99, '其他', '0', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2023-03-02 10:08:02', '', NULL, '其他操作');
INSERT INTO `sys_dict_data` VALUES (19, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2023-03-02 10:08:02', '', NULL, '新增操作');
INSERT INTO `sys_dict_data` VALUES (20, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2023-03-02 10:08:02', '', NULL, '修改操作');
INSERT INTO `sys_dict_data` VALUES (21, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2023-03-02 10:08:02', '', NULL, '删除操作');
INSERT INTO `sys_dict_data` VALUES (22, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2023-03-02 10:08:02', '', NULL, '授权操作');
INSERT INTO `sys_dict_data` VALUES (23, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2023-03-02 10:08:02', '', NULL, '导出操作');
INSERT INTO `sys_dict_data` VALUES (24, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2023-03-02 10:08:02', '', NULL, '导入操作');
INSERT INTO `sys_dict_data` VALUES (25, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2023-03-02 10:08:02', '', NULL, '强退操作');
INSERT INTO `sys_dict_data` VALUES (26, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2023-03-02 10:08:02', '', NULL, '生成操作');
INSERT INTO `sys_dict_data` VALUES (27, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2023-03-02 10:08:02', '', NULL, '清空操作');
INSERT INTO `sys_dict_data` VALUES (28, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2023-03-02 10:08:02', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (29, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2023-03-02 10:08:02', '', NULL, '停用状态');

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '字典类型表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2023-03-02 10:08:02', '', NULL, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2023-03-02 10:08:02', '', NULL, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2023-03-02 10:08:02', '', NULL, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2023-03-02 10:08:02', '', NULL, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2023-03-02 10:08:02', '', NULL, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2023-03-02 10:08:02', '', NULL, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2023-03-02 10:08:02', '', NULL, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2023-03-02 10:08:02', '', NULL, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2023-03-02 10:08:02', '', NULL, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2023-03-02 10:08:02', '', NULL, '登录状态列表');

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '定时任务调度表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2023-03-02 10:08:02', '', NULL, '');
INSERT INTO `sys_job` VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2023-03-02 10:08:02', '', NULL, '');
INSERT INTO `sys_job` VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2023-03-02 10:08:02', '', NULL, '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '异常信息',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '定时任务调度日志表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `login_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '登录账号',
  `ipaddr` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '提示消息',
  `login_time` datetime NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE,
  INDEX `idx_sys_logininfor_s`(`status`) USING BTREE,
  INDEX `idx_sys_logininfor_lt`(`login_time`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 366 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统访问记录' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (100, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-03-02 10:33:23');
INSERT INTO `sys_logininfor` VALUES (101, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-02 10:41:29');
INSERT INTO `sys_logininfor` VALUES (102, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2023-03-02 10:42:47');
INSERT INTO `sys_logininfor` VALUES (103, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2023-03-02 10:42:51');
INSERT INTO `sys_logininfor` VALUES (104, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-02 10:42:56');
INSERT INTO `sys_logininfor` VALUES (105, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-02 10:47:33');
INSERT INTO `sys_logininfor` VALUES (106, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-02 11:16:20');
INSERT INTO `sys_logininfor` VALUES (107, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-02 14:18:21');
INSERT INTO `sys_logininfor` VALUES (108, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-02 14:28:22');
INSERT INTO `sys_logininfor` VALUES (109, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-02 17:09:26');
INSERT INTO `sys_logininfor` VALUES (110, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2023-03-02 17:30:28');
INSERT INTO `sys_logininfor` VALUES (111, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-02 17:30:32');
INSERT INTO `sys_logininfor` VALUES (112, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-02 17:58:38');
INSERT INTO `sys_logininfor` VALUES (113, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-02 19:03:45');
INSERT INTO `sys_logininfor` VALUES (114, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-02 19:56:10');
INSERT INTO `sys_logininfor` VALUES (115, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-02 20:13:33');
INSERT INTO `sys_logininfor` VALUES (116, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-02 20:15:15');
INSERT INTO `sys_logininfor` VALUES (117, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误1次', '2023-03-02 20:16:16');
INSERT INTO `sys_logininfor` VALUES (118, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2023-03-02 20:16:21');
INSERT INTO `sys_logininfor` VALUES (119, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-02 20:16:25');
INSERT INTO `sys_logininfor` VALUES (120, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-02 20:30:30');
INSERT INTO `sys_logininfor` VALUES (121, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-03 08:35:18');
INSERT INTO `sys_logininfor` VALUES (122, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-03 09:36:09');
INSERT INTO `sys_logininfor` VALUES (123, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-03 09:50:26');
INSERT INTO `sys_logininfor` VALUES (124, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-03 10:23:25');
INSERT INTO `sys_logininfor` VALUES (125, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-03 10:31:31');
INSERT INTO `sys_logininfor` VALUES (126, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-03 10:33:25');
INSERT INTO `sys_logininfor` VALUES (127, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-03 10:46:51');
INSERT INTO `sys_logininfor` VALUES (128, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-03 10:50:54');
INSERT INTO `sys_logininfor` VALUES (129, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2023-03-03 14:55:28');
INSERT INTO `sys_logininfor` VALUES (130, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-03 14:55:31');
INSERT INTO `sys_logininfor` VALUES (131, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2023-03-03 15:21:08');
INSERT INTO `sys_logininfor` VALUES (132, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-03 15:21:12');
INSERT INTO `sys_logininfor` VALUES (133, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-03 15:43:47');
INSERT INTO `sys_logininfor` VALUES (134, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-03 17:51:02');
INSERT INTO `sys_logininfor` VALUES (135, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-03 18:20:06');
INSERT INTO `sys_logininfor` VALUES (136, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-03 18:28:55');
INSERT INTO `sys_logininfor` VALUES (137, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-03 19:03:40');
INSERT INTO `sys_logininfor` VALUES (138, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误1次', '2023-03-03 19:10:13');
INSERT INTO `sys_logininfor` VALUES (139, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-03 19:10:21');
INSERT INTO `sys_logininfor` VALUES (140, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-05 08:17:35');
INSERT INTO `sys_logininfor` VALUES (141, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-05 08:34:54');
INSERT INTO `sys_logininfor` VALUES (142, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2023-03-05 08:47:56');
INSERT INTO `sys_logininfor` VALUES (143, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2023-03-05 08:48:01');
INSERT INTO `sys_logininfor` VALUES (144, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-05 08:48:06');
INSERT INTO `sys_logininfor` VALUES (145, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-05 09:05:53');
INSERT INTO `sys_logininfor` VALUES (146, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-05 09:23:53');
INSERT INTO `sys_logininfor` VALUES (147, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-05 09:41:09');
INSERT INTO `sys_logininfor` VALUES (148, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-05 14:45:09');
INSERT INTO `sys_logininfor` VALUES (149, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2023-03-05 15:20:42');
INSERT INTO `sys_logininfor` VALUES (150, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-05 15:20:46');
INSERT INTO `sys_logininfor` VALUES (151, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-05 15:23:34');
INSERT INTO `sys_logininfor` VALUES (152, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-05 15:25:40');
INSERT INTO `sys_logininfor` VALUES (153, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-05 15:29:35');
INSERT INTO `sys_logininfor` VALUES (154, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-05 15:35:00');
INSERT INTO `sys_logininfor` VALUES (155, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-05 15:54:24');
INSERT INTO `sys_logininfor` VALUES (156, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-05 15:58:46');
INSERT INTO `sys_logininfor` VALUES (157, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-05 16:01:20');
INSERT INTO `sys_logininfor` VALUES (158, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-05 16:06:48');
INSERT INTO `sys_logininfor` VALUES (159, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-05 16:15:59');
INSERT INTO `sys_logininfor` VALUES (160, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-05 16:23:45');
INSERT INTO `sys_logininfor` VALUES (161, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-05 16:26:14');
INSERT INTO `sys_logininfor` VALUES (162, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-05 16:40:51');
INSERT INTO `sys_logininfor` VALUES (163, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-05 16:43:03');
INSERT INTO `sys_logininfor` VALUES (164, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-05 16:45:09');
INSERT INTO `sys_logininfor` VALUES (165, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-05 16:59:55');
INSERT INTO `sys_logininfor` VALUES (166, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-05 17:09:14');
INSERT INTO `sys_logininfor` VALUES (167, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-05 17:18:16');
INSERT INTO `sys_logininfor` VALUES (168, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-05 18:21:27');
INSERT INTO `sys_logininfor` VALUES (169, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-05 19:07:59');
INSERT INTO `sys_logininfor` VALUES (170, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-05 19:21:22');
INSERT INTO `sys_logininfor` VALUES (171, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误1次', '2023-03-05 19:35:16');
INSERT INTO `sys_logininfor` VALUES (172, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-05 19:35:23');
INSERT INTO `sys_logininfor` VALUES (173, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-05 19:58:24');
INSERT INTO `sys_logininfor` VALUES (174, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2023-03-05 20:07:03');
INSERT INTO `sys_logininfor` VALUES (175, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-05 20:07:06');
INSERT INTO `sys_logininfor` VALUES (176, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-05 20:42:00');
INSERT INTO `sys_logininfor` VALUES (177, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-05 20:43:39');
INSERT INTO `sys_logininfor` VALUES (178, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-05 21:09:05');
INSERT INTO `sys_logininfor` VALUES (179, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2023-03-05 21:18:19');
INSERT INTO `sys_logininfor` VALUES (180, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-05 21:18:23');
INSERT INTO `sys_logininfor` VALUES (181, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-05 21:21:32');
INSERT INTO `sys_logininfor` VALUES (182, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-05 21:25:05');
INSERT INTO `sys_logininfor` VALUES (183, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-05 21:28:02');
INSERT INTO `sys_logininfor` VALUES (184, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2023-03-05 21:33:25');
INSERT INTO `sys_logininfor` VALUES (185, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-05 21:33:30');
INSERT INTO `sys_logininfor` VALUES (186, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-05 21:35:14');
INSERT INTO `sys_logininfor` VALUES (187, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-06 09:14:37');
INSERT INTO `sys_logininfor` VALUES (188, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-06 09:16:26');
INSERT INTO `sys_logininfor` VALUES (189, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-06 09:29:35');
INSERT INTO `sys_logininfor` VALUES (190, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-06 09:34:57');
INSERT INTO `sys_logininfor` VALUES (191, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-06 09:36:57');
INSERT INTO `sys_logininfor` VALUES (192, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-06 09:45:57');
INSERT INTO `sys_logininfor` VALUES (193, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-06 09:51:42');
INSERT INTO `sys_logininfor` VALUES (194, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-06 09:59:16');
INSERT INTO `sys_logininfor` VALUES (195, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-06 10:35:12');
INSERT INTO `sys_logininfor` VALUES (196, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-06 10:39:30');
INSERT INTO `sys_logininfor` VALUES (197, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-06 14:38:35');
INSERT INTO `sys_logininfor` VALUES (198, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-06 14:45:11');
INSERT INTO `sys_logininfor` VALUES (199, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-06 14:48:01');
INSERT INTO `sys_logininfor` VALUES (200, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-06 14:49:12');
INSERT INTO `sys_logininfor` VALUES (201, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-06 14:52:21');
INSERT INTO `sys_logininfor` VALUES (202, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-06 14:56:24');
INSERT INTO `sys_logininfor` VALUES (203, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-06 15:06:58');
INSERT INTO `sys_logininfor` VALUES (204, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-06 15:14:28');
INSERT INTO `sys_logininfor` VALUES (205, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-06 15:18:56');
INSERT INTO `sys_logininfor` VALUES (206, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-06 15:36:13');
INSERT INTO `sys_logininfor` VALUES (207, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-06 15:46:46');
INSERT INTO `sys_logininfor` VALUES (208, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-06 15:49:56');
INSERT INTO `sys_logininfor` VALUES (209, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-06 15:56:02');
INSERT INTO `sys_logininfor` VALUES (210, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-06 16:02:38');
INSERT INTO `sys_logininfor` VALUES (211, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-06 16:06:36');
INSERT INTO `sys_logininfor` VALUES (212, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-06 16:30:31');
INSERT INTO `sys_logininfor` VALUES (213, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-06 16:39:09');
INSERT INTO `sys_logininfor` VALUES (214, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-06 16:40:39');
INSERT INTO `sys_logininfor` VALUES (215, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-06 16:48:59');
INSERT INTO `sys_logininfor` VALUES (216, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-06 19:37:29');
INSERT INTO `sys_logininfor` VALUES (217, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-07 09:49:19');
INSERT INTO `sys_logininfor` VALUES (218, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-07 09:59:30');
INSERT INTO `sys_logininfor` VALUES (219, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-07 10:02:30');
INSERT INTO `sys_logininfor` VALUES (220, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-07 10:04:37');
INSERT INTO `sys_logininfor` VALUES (221, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误1次', '2023-03-07 10:16:31');
INSERT INTO `sys_logininfor` VALUES (222, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-07 10:16:38');
INSERT INTO `sys_logininfor` VALUES (223, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-07 10:33:13');
INSERT INTO `sys_logininfor` VALUES (224, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-07 10:45:03');
INSERT INTO `sys_logininfor` VALUES (225, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-07 14:35:49');
INSERT INTO `sys_logininfor` VALUES (226, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-07 14:38:15');
INSERT INTO `sys_logininfor` VALUES (227, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-07 14:51:25');
INSERT INTO `sys_logininfor` VALUES (228, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-07 14:56:01');
INSERT INTO `sys_logininfor` VALUES (229, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-07 15:00:51');
INSERT INTO `sys_logininfor` VALUES (230, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-07 15:02:35');
INSERT INTO `sys_logininfor` VALUES (231, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-07 15:11:46');
INSERT INTO `sys_logininfor` VALUES (232, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-07 15:13:46');
INSERT INTO `sys_logininfor` VALUES (233, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-07 15:22:23');
INSERT INTO `sys_logininfor` VALUES (234, '张三', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '用户不存在/密码错误', '2023-03-07 15:24:43');
INSERT INTO `sys_logininfor` VALUES (235, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-07 15:24:50');
INSERT INTO `sys_logininfor` VALUES (236, '张三', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '用户不存在/密码错误', '2023-03-07 15:47:02');
INSERT INTO `sys_logininfor` VALUES (237, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-07 15:47:08');
INSERT INTO `sys_logininfor` VALUES (238, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-07 15:50:50');
INSERT INTO `sys_logininfor` VALUES (239, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-07 15:56:33');
INSERT INTO `sys_logininfor` VALUES (240, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-07 16:00:09');
INSERT INTO `sys_logininfor` VALUES (241, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-07 16:03:09');
INSERT INTO `sys_logininfor` VALUES (242, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-07 16:04:46');
INSERT INTO `sys_logininfor` VALUES (243, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-07 16:37:53');
INSERT INTO `sys_logininfor` VALUES (244, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-07 16:40:25');
INSERT INTO `sys_logininfor` VALUES (245, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-07 16:41:38');
INSERT INTO `sys_logininfor` VALUES (246, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-07 16:42:51');
INSERT INTO `sys_logininfor` VALUES (247, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-07 16:48:27');
INSERT INTO `sys_logininfor` VALUES (248, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-08 10:21:18');
INSERT INTO `sys_logininfor` VALUES (249, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-08 11:05:58');
INSERT INTO `sys_logininfor` VALUES (250, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-08 19:22:41');
INSERT INTO `sys_logininfor` VALUES (251, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-08 19:32:59');
INSERT INTO `sys_logininfor` VALUES (252, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-08 19:50:20');
INSERT INTO `sys_logininfor` VALUES (253, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-09 08:45:19');
INSERT INTO `sys_logininfor` VALUES (254, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-09 09:06:39');
INSERT INTO `sys_logininfor` VALUES (255, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-09 09:50:54');
INSERT INTO `sys_logininfor` VALUES (256, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-09 10:04:17');
INSERT INTO `sys_logininfor` VALUES (257, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-09 10:21:36');
INSERT INTO `sys_logininfor` VALUES (258, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-09 10:24:10');
INSERT INTO `sys_logininfor` VALUES (259, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-09 10:37:39');
INSERT INTO `sys_logininfor` VALUES (260, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-09 10:48:20');
INSERT INTO `sys_logininfor` VALUES (261, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-09 11:06:29');
INSERT INTO `sys_logininfor` VALUES (262, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-09 11:10:23');
INSERT INTO `sys_logininfor` VALUES (263, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-09 11:20:40');
INSERT INTO `sys_logininfor` VALUES (264, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-09 11:30:10');
INSERT INTO `sys_logininfor` VALUES (265, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-09 14:20:16');
INSERT INTO `sys_logininfor` VALUES (266, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-09 14:23:01');
INSERT INTO `sys_logininfor` VALUES (267, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-09 14:35:14');
INSERT INTO `sys_logininfor` VALUES (268, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-09 14:40:23');
INSERT INTO `sys_logininfor` VALUES (269, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-09 14:41:38');
INSERT INTO `sys_logininfor` VALUES (270, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-09 14:44:29');
INSERT INTO `sys_logininfor` VALUES (271, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-10 08:53:12');
INSERT INTO `sys_logininfor` VALUES (272, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-10 09:49:45');
INSERT INTO `sys_logininfor` VALUES (273, '张三', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '用户不存在/密码错误', '2023-03-10 11:07:44');
INSERT INTO `sys_logininfor` VALUES (274, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-10 11:07:53');
INSERT INTO `sys_logininfor` VALUES (275, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-10 11:17:23');
INSERT INTO `sys_logininfor` VALUES (276, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-10 11:18:38');
INSERT INTO `sys_logininfor` VALUES (277, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-10 20:39:40');
INSERT INTO `sys_logininfor` VALUES (278, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-10 21:06:25');
INSERT INTO `sys_logininfor` VALUES (279, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-03-12 15:05:53');
INSERT INTO `sys_logininfor` VALUES (280, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-02-26 20:58:16');
INSERT INTO `sys_logininfor` VALUES (281, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-03-07 08:56:57');
INSERT INTO `sys_logininfor` VALUES (282, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-03-07 15:03:43');
INSERT INTO `sys_logininfor` VALUES (283, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-03-07 15:28:21');
INSERT INTO `sys_logininfor` VALUES (284, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-03-07 15:35:43');
INSERT INTO `sys_logininfor` VALUES (285, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-03-07 16:06:30');
INSERT INTO `sys_logininfor` VALUES (286, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-03-07 16:17:09');
INSERT INTO `sys_logininfor` VALUES (287, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-03-07 16:18:41');
INSERT INTO `sys_logininfor` VALUES (288, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-03-07 16:40:52');
INSERT INTO `sys_logininfor` VALUES (289, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-03-07 16:45:37');
INSERT INTO `sys_logininfor` VALUES (290, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-03-07 16:47:03');
INSERT INTO `sys_logininfor` VALUES (291, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-03-07 16:52:36');
INSERT INTO `sys_logininfor` VALUES (292, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-03-07 16:54:20');
INSERT INTO `sys_logininfor` VALUES (293, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-03-07 17:04:55');
INSERT INTO `sys_logininfor` VALUES (294, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-03-07 17:08:57');
INSERT INTO `sys_logininfor` VALUES (295, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-03-07 17:09:48');
INSERT INTO `sys_logininfor` VALUES (296, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-03-07 17:11:13');
INSERT INTO `sys_logininfor` VALUES (297, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-03-07 17:14:22');
INSERT INTO `sys_logininfor` VALUES (298, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-03-07 17:15:55');
INSERT INTO `sys_logininfor` VALUES (299, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-03-07 17:16:52');
INSERT INTO `sys_logininfor` VALUES (300, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-03-07 22:00:41');
INSERT INTO `sys_logininfor` VALUES (301, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-03-07 22:08:45');
INSERT INTO `sys_logininfor` VALUES (302, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-03-07 22:17:01');
INSERT INTO `sys_logininfor` VALUES (303, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-03-07 22:18:24');
INSERT INTO `sys_logininfor` VALUES (304, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-03-07 22:22:21');
INSERT INTO `sys_logininfor` VALUES (305, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-03-07 22:26:35');
INSERT INTO `sys_logininfor` VALUES (306, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-03-07 22:31:26');
INSERT INTO `sys_logininfor` VALUES (307, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-03-07 22:33:42');
INSERT INTO `sys_logininfor` VALUES (308, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-03-07 22:50:28');
INSERT INTO `sys_logininfor` VALUES (309, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-03-07 22:52:42');
INSERT INTO `sys_logininfor` VALUES (310, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-03-07 22:53:52');
INSERT INTO `sys_logininfor` VALUES (311, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-03-07 22:56:36');
INSERT INTO `sys_logininfor` VALUES (312, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-03-07 23:12:02');
INSERT INTO `sys_logininfor` VALUES (313, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-03-07 23:14:03');
INSERT INTO `sys_logininfor` VALUES (314, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-03-07 23:16:01');
INSERT INTO `sys_logininfor` VALUES (315, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-03-07 23:17:49');
INSERT INTO `sys_logininfor` VALUES (316, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-03-07 23:29:11');
INSERT INTO `sys_logininfor` VALUES (317, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-03-07 23:32:06');
INSERT INTO `sys_logininfor` VALUES (318, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-03-07 23:52:26');
INSERT INTO `sys_logininfor` VALUES (319, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-03-07 23:55:34');
INSERT INTO `sys_logininfor` VALUES (320, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-03-07 23:59:12');
INSERT INTO `sys_logininfor` VALUES (321, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-03-08 09:09:27');
INSERT INTO `sys_logininfor` VALUES (322, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-03-08 09:15:44');
INSERT INTO `sys_logininfor` VALUES (323, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-03-08 09:17:52');
INSERT INTO `sys_logininfor` VALUES (324, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-03-08 09:19:30');
INSERT INTO `sys_logininfor` VALUES (325, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-03-08 09:20:23');
INSERT INTO `sys_logininfor` VALUES (326, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-03-08 09:24:21');
INSERT INTO `sys_logininfor` VALUES (327, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-03-08 09:27:30');
INSERT INTO `sys_logininfor` VALUES (328, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-03-08 09:29:12');
INSERT INTO `sys_logininfor` VALUES (329, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-03-08 09:30:30');
INSERT INTO `sys_logininfor` VALUES (330, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-03-08 09:43:49');
INSERT INTO `sys_logininfor` VALUES (331, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-03-08 10:05:40');
INSERT INTO `sys_logininfor` VALUES (332, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-03-08 10:12:00');
INSERT INTO `sys_logininfor` VALUES (333, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-03-08 10:26:37');
INSERT INTO `sys_logininfor` VALUES (334, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-03-08 10:38:59');
INSERT INTO `sys_logininfor` VALUES (335, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-03-08 10:40:55');
INSERT INTO `sys_logininfor` VALUES (336, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-03-08 10:42:24');
INSERT INTO `sys_logininfor` VALUES (337, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-03-08 10:45:38');
INSERT INTO `sys_logininfor` VALUES (338, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-03-08 16:07:20');
INSERT INTO `sys_logininfor` VALUES (339, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-03-08 16:26:30');
INSERT INTO `sys_logininfor` VALUES (340, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-03-08 16:42:00');
INSERT INTO `sys_logininfor` VALUES (341, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-03-09 20:28:01');
INSERT INTO `sys_logininfor` VALUES (342, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-03-09 20:43:16');
INSERT INTO `sys_logininfor` VALUES (343, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-03-09 21:13:29');
INSERT INTO `sys_logininfor` VALUES (344, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-03-09 22:03:31');
INSERT INTO `sys_logininfor` VALUES (345, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-03-09 22:04:45');
INSERT INTO `sys_logininfor` VALUES (346, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-03-09 22:07:05');
INSERT INTO `sys_logininfor` VALUES (347, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-03-09 22:13:12');
INSERT INTO `sys_logininfor` VALUES (348, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-03-09 22:15:29');
INSERT INTO `sys_logininfor` VALUES (349, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-03-09 22:54:25');
INSERT INTO `sys_logininfor` VALUES (350, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-03-09 23:16:44');
INSERT INTO `sys_logininfor` VALUES (351, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-03-09 23:28:45');
INSERT INTO `sys_logininfor` VALUES (352, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-03-09 23:30:24');
INSERT INTO `sys_logininfor` VALUES (353, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-03-09 23:32:38');
INSERT INTO `sys_logininfor` VALUES (354, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-03-09 23:34:01');
INSERT INTO `sys_logininfor` VALUES (355, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-03-09 23:36:05');
INSERT INTO `sys_logininfor` VALUES (356, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-03-09 23:38:00');
INSERT INTO `sys_logininfor` VALUES (357, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-03-09 23:39:16');
INSERT INTO `sys_logininfor` VALUES (358, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-03-09 23:42:38');
INSERT INTO `sys_logininfor` VALUES (359, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-03-09 23:55:13');
INSERT INTO `sys_logininfor` VALUES (360, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-03-09 23:59:08');
INSERT INTO `sys_logininfor` VALUES (361, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-03-10 09:06:56');
INSERT INTO `sys_logininfor` VALUES (362, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-03-10 09:21:51');
INSERT INTO `sys_logininfor` VALUES (363, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-03-10 09:23:12');
INSERT INTO `sys_logininfor` VALUES (364, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-03-10 09:25:11');
INSERT INTO `sys_logininfor` VALUES (365, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-03-10 09:28:18');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '#' COMMENT '请求地址',
  `target` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '打开方式（menuItem页签 menuBlank新窗口）',
  `menu_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `is_refresh` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '1' COMMENT '是否刷新（0刷新 1不刷新）',
  `perms` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2097 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '菜单权限表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 1, '#', 'menuItem', 'M', '1', '1', '', 'fa fa-gear', 'admin', '2023-03-02 10:08:02', 'admin', '2023-03-10 11:10:08', '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 2, '#', 'menuItem', 'M', '1', '1', '', 'fa fa-video-camera', 'admin', '2023-03-02 10:08:02', 'admin', '2023-03-07 14:43:44', '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 3, '#', 'menuItem', 'M', '1', '1', '', 'fa fa-bars', 'admin', '2023-03-02 10:08:02', 'admin', '2023-03-10 09:51:00', '系统工具目录');
INSERT INTO `sys_menu` VALUES (4, '若依官网', 0, 4, 'http://ruoyi.vip', 'menuBlank', 'C', '1', '1', '', 'fa fa-location-arrow', 'admin', '2023-03-02 10:08:02', 'admin', '2023-03-05 20:46:40', '若依官网地址');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, '/system/user', '', 'C', '0', '1', 'system:user:view', 'fa fa-user-o', 'admin', '2023-03-02 10:08:02', '', NULL, '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, '/system/role', '', 'C', '0', '1', 'system:role:view', 'fa fa-user-secret', 'admin', '2023-03-02 10:08:02', '', NULL, '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, '/system/menu', '', 'C', '0', '1', 'system:menu:view', 'fa fa-th-list', 'admin', '2023-03-02 10:08:02', '', NULL, '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '部门管理', 1, 4, '/system/dept', '', 'C', '0', '1', 'system:dept:view', 'fa fa-outdent', 'admin', '2023-03-02 10:08:02', '', NULL, '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 1, 5, '/system/post', '', 'C', '0', '1', 'system:post:view', 'fa fa-address-card-o', 'admin', '2023-03-02 10:08:02', '', NULL, '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, '/system/dict', '', 'C', '0', '1', 'system:dict:view', 'fa fa-bookmark-o', 'admin', '2023-03-02 10:08:02', '', NULL, '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 7, '/system/config', '', 'C', '0', '1', 'system:config:view', 'fa fa-sun-o', 'admin', '2023-03-02 10:08:02', '', NULL, '参数设置菜单');
INSERT INTO `sys_menu` VALUES (107, '通知公告', 1, 8, '/system/notice', '', 'C', '0', '1', 'system:notice:view', 'fa fa-bullhorn', 'admin', '2023-03-02 10:08:02', '', NULL, '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 9, '#', '', 'M', '0', '1', '', 'fa fa-pencil-square-o', 'admin', '2023-03-02 10:08:02', '', NULL, '日志管理菜单');
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 1, '/monitor/online', '', 'C', '0', '1', 'monitor:online:view', 'fa fa-user-circle', 'admin', '2023-03-02 10:08:02', '', NULL, '在线用户菜单');
INSERT INTO `sys_menu` VALUES (110, '定时任务', 2, 2, '/monitor/job', '', 'C', '0', '1', 'monitor:job:view', 'fa fa-tasks', 'admin', '2023-03-02 10:08:02', '', NULL, '定时任务菜单');
INSERT INTO `sys_menu` VALUES (111, '数据监控', 2, 3, '/monitor/data', '', 'C', '0', '1', 'monitor:data:view', 'fa fa-bug', 'admin', '2023-03-02 10:08:02', '', NULL, '数据监控菜单');
INSERT INTO `sys_menu` VALUES (112, '服务监控', 2, 4, '/monitor/server', 'menuItem', 'C', '1', '1', 'monitor:server:view', 'fa fa-server', 'admin', '2023-03-02 10:08:02', 'admin', '2023-03-02 17:25:02', '服务监控菜单');
INSERT INTO `sys_menu` VALUES (113, '缓存监控', 2, 5, '/monitor/cache', '', 'C', '0', '1', 'monitor:cache:view', 'fa fa-cube', 'admin', '2023-03-02 10:08:02', '', NULL, '缓存监控菜单');
INSERT INTO `sys_menu` VALUES (114, '表单构建', 3, 1, '/tool/build', '', 'C', '0', '1', 'tool:build:view', 'fa fa-wpforms', 'admin', '2023-03-02 10:08:02', '', NULL, '表单构建菜单');
INSERT INTO `sys_menu` VALUES (115, '代码生成', 3, 2, '/tool/gen', '', 'C', '0', '1', 'tool:gen:view', 'fa fa-code', 'admin', '2023-03-02 10:08:02', '', NULL, '代码生成菜单');
INSERT INTO `sys_menu` VALUES (116, '系统接口', 3, 3, '/tool/swagger', '', 'C', '0', '1', 'tool:swagger:view', 'fa fa-gg', 'admin', '2023-03-02 10:08:02', '', NULL, '系统接口菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, '/monitor/operlog', '', 'C', '0', '1', 'monitor:operlog:view', 'fa fa-address-book', 'admin', '2023-03-02 10:08:02', '', NULL, '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, '/monitor/logininfor', '', 'C', '0', '1', 'monitor:logininfor:view', 'fa fa-file-image-o', 'admin', '2023-03-02 10:08:02', '', NULL, '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1000, '用户查询', 100, 1, '#', '', 'F', '0', '1', 'system:user:list', '#', 'admin', '2023-03-02 10:08:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1001, '用户新增', 100, 2, '#', '', 'F', '0', '1', 'system:user:add', '#', 'admin', '2023-03-02 10:08:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1002, '用户修改', 100, 3, '#', '', 'F', '0', '1', 'system:user:edit', '#', 'admin', '2023-03-02 10:08:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1003, '用户删除', 100, 4, '#', '', 'F', '0', '1', 'system:user:remove', '#', 'admin', '2023-03-02 10:08:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1004, '用户导出', 100, 5, '#', '', 'F', '0', '1', 'system:user:export', '#', 'admin', '2023-03-02 10:08:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1005, '用户导入', 100, 6, '#', '', 'F', '0', '1', 'system:user:import', '#', 'admin', '2023-03-02 10:08:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1006, '重置密码', 100, 7, '#', '', 'F', '0', '1', 'system:user:resetPwd', '#', 'admin', '2023-03-02 10:08:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1007, '角色查询', 101, 1, '#', '', 'F', '0', '1', 'system:role:list', '#', 'admin', '2023-03-02 10:08:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1008, '角色新增', 101, 2, '#', '', 'F', '0', '1', 'system:role:add', '#', 'admin', '2023-03-02 10:08:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1009, '角色修改', 101, 3, '#', '', 'F', '0', '1', 'system:role:edit', '#', 'admin', '2023-03-02 10:08:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1010, '角色删除', 101, 4, '#', '', 'F', '0', '1', 'system:role:remove', '#', 'admin', '2023-03-02 10:08:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1011, '角色导出', 101, 5, '#', '', 'F', '0', '1', 'system:role:export', '#', 'admin', '2023-03-02 10:08:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1012, '菜单查询', 102, 1, '#', '', 'F', '0', '1', 'system:menu:list', '#', 'admin', '2023-03-02 10:08:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1013, '菜单新增', 102, 2, '#', '', 'F', '0', '1', 'system:menu:add', '#', 'admin', '2023-03-02 10:08:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1014, '菜单修改', 102, 3, '#', '', 'F', '0', '1', 'system:menu:edit', '#', 'admin', '2023-03-02 10:08:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1015, '菜单删除', 102, 4, '#', '', 'F', '0', '1', 'system:menu:remove', '#', 'admin', '2023-03-02 10:08:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1016, '部门查询', 103, 1, '#', '', 'F', '0', '1', 'system:dept:list', '#', 'admin', '2023-03-02 10:08:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1017, '部门新增', 103, 2, '#', '', 'F', '0', '1', 'system:dept:add', '#', 'admin', '2023-03-02 10:08:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1018, '部门修改', 103, 3, '#', '', 'F', '0', '1', 'system:dept:edit', '#', 'admin', '2023-03-02 10:08:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1019, '部门删除', 103, 4, '#', '', 'F', '0', '1', 'system:dept:remove', '#', 'admin', '2023-03-02 10:08:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1020, '岗位查询', 104, 1, '#', '', 'F', '0', '1', 'system:post:list', '#', 'admin', '2023-03-02 10:08:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1021, '岗位新增', 104, 2, '#', '', 'F', '0', '1', 'system:post:add', '#', 'admin', '2023-03-02 10:08:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1022, '岗位修改', 104, 3, '#', '', 'F', '0', '1', 'system:post:edit', '#', 'admin', '2023-03-02 10:08:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1023, '岗位删除', 104, 4, '#', '', 'F', '0', '1', 'system:post:remove', '#', 'admin', '2023-03-02 10:08:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1024, '岗位导出', 104, 5, '#', '', 'F', '0', '1', 'system:post:export', '#', 'admin', '2023-03-02 10:08:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1025, '字典查询', 105, 1, '#', '', 'F', '0', '1', 'system:dict:list', '#', 'admin', '2023-03-02 10:08:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1026, '字典新增', 105, 2, '#', '', 'F', '0', '1', 'system:dict:add', '#', 'admin', '2023-03-02 10:08:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1027, '字典修改', 105, 3, '#', '', 'F', '0', '1', 'system:dict:edit', '#', 'admin', '2023-03-02 10:08:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1028, '字典删除', 105, 4, '#', '', 'F', '0', '1', 'system:dict:remove', '#', 'admin', '2023-03-02 10:08:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1029, '字典导出', 105, 5, '#', '', 'F', '0', '1', 'system:dict:export', '#', 'admin', '2023-03-02 10:08:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1030, '参数查询', 106, 1, '#', '', 'F', '0', '1', 'system:config:list', '#', 'admin', '2023-03-02 10:08:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1031, '参数新增', 106, 2, '#', '', 'F', '0', '1', 'system:config:add', '#', 'admin', '2023-03-02 10:08:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1032, '参数修改', 106, 3, '#', '', 'F', '0', '1', 'system:config:edit', '#', 'admin', '2023-03-02 10:08:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1033, '参数删除', 106, 4, '#', '', 'F', '0', '1', 'system:config:remove', '#', 'admin', '2023-03-02 10:08:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1034, '参数导出', 106, 5, '#', '', 'F', '0', '1', 'system:config:export', '#', 'admin', '2023-03-02 10:08:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1035, '公告查询', 107, 1, '#', '', 'F', '0', '1', 'system:notice:list', '#', 'admin', '2023-03-02 10:08:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1036, '公告新增', 107, 2, '#', '', 'F', '0', '1', 'system:notice:add', '#', 'admin', '2023-03-02 10:08:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1037, '公告修改', 107, 3, '#', '', 'F', '0', '1', 'system:notice:edit', '#', 'admin', '2023-03-02 10:08:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1038, '公告删除', 107, 4, '#', '', 'F', '0', '1', 'system:notice:remove', '#', 'admin', '2023-03-02 10:08:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1039, '操作查询', 500, 1, '#', '', 'F', '0', '1', 'monitor:operlog:list', '#', 'admin', '2023-03-02 10:08:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1040, '操作删除', 500, 2, '#', '', 'F', '0', '1', 'monitor:operlog:remove', '#', 'admin', '2023-03-02 10:08:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1041, '详细信息', 500, 3, '#', '', 'F', '0', '1', 'monitor:operlog:detail', '#', 'admin', '2023-03-02 10:08:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1042, '日志导出', 500, 4, '#', '', 'F', '0', '1', 'monitor:operlog:export', '#', 'admin', '2023-03-02 10:08:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1043, '登录查询', 501, 1, '#', '', 'F', '0', '1', 'monitor:logininfor:list', '#', 'admin', '2023-03-02 10:08:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1044, '登录删除', 501, 2, '#', '', 'F', '0', '1', 'monitor:logininfor:remove', '#', 'admin', '2023-03-02 10:08:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1045, '日志导出', 501, 3, '#', '', 'F', '0', '1', 'monitor:logininfor:export', '#', 'admin', '2023-03-02 10:08:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1046, '账户解锁', 501, 4, '#', '', 'F', '0', '1', 'monitor:logininfor:unlock', '#', 'admin', '2023-03-02 10:08:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1047, '在线查询', 109, 1, '#', '', 'F', '0', '1', 'monitor:online:list', '#', 'admin', '2023-03-02 10:08:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1048, '批量强退', 109, 2, '#', '', 'F', '0', '1', 'monitor:online:batchForceLogout', '#', 'admin', '2023-03-02 10:08:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1049, '单条强退', 109, 3, '#', '', 'F', '0', '1', 'monitor:online:forceLogout', '#', 'admin', '2023-03-02 10:08:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1050, '任务查询', 110, 1, '#', '', 'F', '0', '1', 'monitor:job:list', '#', 'admin', '2023-03-02 10:08:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1051, '任务新增', 110, 2, '#', '', 'F', '0', '1', 'monitor:job:add', '#', 'admin', '2023-03-02 10:08:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1052, '任务修改', 110, 3, '#', '', 'F', '0', '1', 'monitor:job:edit', '#', 'admin', '2023-03-02 10:08:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1053, '任务删除', 110, 4, '#', '', 'F', '0', '1', 'monitor:job:remove', '#', 'admin', '2023-03-02 10:08:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1054, '状态修改', 110, 5, '#', '', 'F', '0', '1', 'monitor:job:changeStatus', '#', 'admin', '2023-03-02 10:08:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1055, '任务详细', 110, 6, '#', '', 'F', '0', '1', 'monitor:job:detail', '#', 'admin', '2023-03-02 10:08:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1056, '任务导出', 110, 7, '#', '', 'F', '0', '1', 'monitor:job:export', '#', 'admin', '2023-03-02 10:08:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1057, '生成查询', 115, 1, '#', '', 'F', '0', '1', 'tool:gen:list', '#', 'admin', '2023-03-02 10:08:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1058, '生成修改', 115, 2, '#', '', 'F', '0', '1', 'tool:gen:edit', '#', 'admin', '2023-03-02 10:08:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1059, '生成删除', 115, 3, '#', '', 'F', '0', '1', 'tool:gen:remove', '#', 'admin', '2023-03-02 10:08:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1060, '预览代码', 115, 4, '#', '', 'F', '0', '1', 'tool:gen:preview', '#', 'admin', '2023-03-02 10:08:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1061, '生成代码', 115, 5, '#', '', 'F', '0', '1', 'tool:gen:code', '#', 'admin', '2023-03-02 10:08:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2001, '注册准备操作', 0, 6, '#', 'menuItem', 'M', '0', '1', '', 'fa fa-address-book', 'admin', '2023-03-02 19:10:21', 'admin', '2023-03-02 19:12:31', '');
INSERT INTO `sys_menu` VALUES (2002, '基础类概念注册', 0, 7, '#', 'menuItem', 'M', '0', '1', '', 'fa fa-address-book-o', 'admin', '2023-03-02 19:11:02', 'admin', '2023-03-02 19:12:51', '');
INSERT INTO `sys_menu` VALUES (2003, '描述类概念注册', 0, 8, '#', 'menuItem', 'M', '0', '1', '', 'fa fa-address-book', 'admin', '2023-03-02 19:11:19', 'admin', '2023-03-02 19:12:56', '');
INSERT INTO `sys_menu` VALUES (2004, '数据元目录与审核', 0, 9, '#', 'menuItem', 'C', '0', '1', '', 'fa fa-address-book-o', 'admin', '2023-03-02 19:11:48', 'admin', '2023-03-09 14:45:34', '');
INSERT INTO `sys_menu` VALUES (2005, '数据模型映射', 0, 10, '', 'menuItem', 'M', '0', '1', '', 'fa fa-address-book', 'admin', '2023-03-02 19:13:42', 'admin', '2023-03-09 14:57:06', '');
INSERT INTO `sys_menu` VALUES (2007, '命名空间管理', 2001, 1, '/wj_mingming/wj_mingming', 'menuItem', 'C', '0', '1', 'wj_mingming:wj_mingming:view', '#', 'admin', '2023-03-02 19:33:47', 'admin', '2023-03-02 20:18:34', '命名空间管理菜单');
INSERT INTO `sys_menu` VALUES (2008, '命名空间管理查询', 2007, 1, '#', '', 'F', '0', '1', 'wj_mingming:wj_mingming:list', '#', 'admin', '2023-03-02 19:33:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2009, '命名空间管理新增', 2007, 2, '#', '', 'F', '0', '1', 'wj_mingming:wj_mingming:add', '#', 'admin', '2023-03-02 19:33:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2010, '命名空间管理修改', 2007, 3, '#', '', 'F', '0', '1', 'wj_mingming:wj_mingming:edit', '#', 'admin', '2023-03-02 19:33:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2011, '命名空间管理删除', 2007, 4, '#', '', 'F', '0', '1', 'wj_mingming:wj_mingming:remove', '#', 'admin', '2023-03-02 19:33:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2012, '命名空间管理导出', 2007, 5, '#', '', 'F', '0', '1', 'wj_mingming:wj_mingming:export', '#', 'admin', '2023-03-02 19:33:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2025, '词表导入与管理', 2001, 1, '/cibiao/manager', '', 'C', '0', '1', 'cibiao:manager:view', '#', 'admin', '2023-03-03 10:41:43', '', NULL, '词表导入与管理菜单');
INSERT INTO `sys_menu` VALUES (2026, '词表导入与管理查询', 2025, 1, '#', '', 'F', '0', '1', 'cibiao:manager:list', '#', 'admin', '2023-03-03 10:41:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2027, '词表导入与管理新增', 2025, 2, '#', '', 'F', '0', '1', 'cibiao:manager:add', '#', 'admin', '2023-03-03 10:41:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2028, '词表导入与管理修改', 2025, 3, '#', '', 'F', '0', '1', 'cibiao:manager:edit', '#', 'admin', '2023-03-03 10:41:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2029, '词表导入与管理删除', 2025, 4, '#', '', 'F', '0', '1', 'cibiao:manager:remove', '#', 'admin', '2023-03-03 10:41:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2030, '词表导入与管理导出', 2025, 5, '#', '', 'F', '0', '1', 'cibiao:manager:export', '#', 'admin', '2023-03-03 10:41:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2031, '石油领域词汇表', 2001, 1, '/shiyou/vocabulary', '', 'C', '0', '1', 'shiyou:vocabulary:view', '#', 'admin', '2023-03-03 15:15:37', '', NULL, '石油领域词汇表菜单');
INSERT INTO `sys_menu` VALUES (2032, '石油领域词汇表查询', 2031, 1, '#', '', 'F', '0', '1', 'shiyou:vocabulary:list', '#', 'admin', '2023-03-03 15:15:37', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2033, '石油领域词汇表新增', 2031, 2, '#', '', 'F', '0', '1', 'shiyou:vocabulary:add', '#', 'admin', '2023-03-03 15:15:37', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2034, '石油领域词汇表修改', 2031, 3, '#', '', 'F', '0', '1', 'shiyou:vocabulary:edit', '#', 'admin', '2023-03-03 15:15:37', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2035, '石油领域词汇表删除', 2031, 4, '#', '', 'F', '0', '1', 'shiyou:vocabulary:remove', '#', 'admin', '2023-03-03 15:15:37', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2036, '石油领域词汇表导出', 2031, 5, '#', '', 'F', '0', '1', 'shiyou:vocabulary:export', '#', 'admin', '2023-03-03 15:15:37', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2043, '关系注册1', 2002, 5, '/edge/search', 'menuItem', 'C', '1', '1', 'edge:search:view', '#', 'admin', '2023-03-03 18:24:29', 'admin', '2023-03-09 11:08:01', '关系注册菜单');
INSERT INTO `sys_menu` VALUES (2044, '关系注册查询', 2043, 1, '#', '', 'F', '0', '1', 'edge:search:list', '#', 'admin', '2023-03-03 18:24:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2045, '关系注册新增', 2043, 2, '#', '', 'F', '0', '1', 'edge:search:add', '#', 'admin', '2023-03-03 18:24:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2046, '关系注册修改', 2043, 3, '#', '', 'F', '0', '1', 'edge:search:edit', '#', 'admin', '2023-03-03 18:24:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2047, '关系注册删除', 2043, 4, '#', '', 'F', '0', '1', 'edge:search:remove', '#', 'admin', '2023-03-03 18:24:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2048, '关系注册导出', 2043, 5, '#', '', 'F', '0', '1', 'edge:search:export', '#', 'admin', '2023-03-03 18:24:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2049, '数据元目录管理', 2004, 1, '/element/dictory', 'menuItem', 'C', '0', '1', 'element:dictory:view', '#', 'admin', '2023-03-05 09:10:24', 'admin', '2023-03-09 14:45:46', '数据元目录菜单');
INSERT INTO `sys_menu` VALUES (2050, '数据元目录查询', 2049, 1, '#', '', 'F', '0', '1', 'element:dictory:list', '#', 'admin', '2023-03-05 09:10:24', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2051, '数据元目录新增', 2049, 2, '#', '', 'F', '0', '1', 'element:dictory:add', '#', 'admin', '2023-03-05 09:10:24', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2052, '数据元目录修改', 2049, 3, '#', '', 'F', '0', '1', 'element:dictory:edit', '#', 'admin', '2023-03-05 09:10:24', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2053, '数据元目录删除', 2049, 4, '#', '', 'F', '0', '1', 'element:dictory:remove', '#', 'admin', '2023-03-05 09:10:24', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2054, '数据元目录导出', 2049, 5, '#', '', 'F', '0', '1', 'element:dictory:export', '#', 'admin', '2023-03-05 09:10:24', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2055, '对象类概念注册', 2002, 1, '/register/concept', 'menuItem', 'C', '0', '1', '', '#', 'admin', '2023-03-05 15:03:15', 'admin', '2023-03-06 16:35:06', '');
INSERT INTO `sys_menu` VALUES (2056, '数据元概念注册', 2003, 1, '/data/register', '', 'C', '0', '1', 'data:register:view', '#', 'admin', '2023-03-05 21:13:07', '', NULL, '数据元概念注册菜单');
INSERT INTO `sys_menu` VALUES (2057, '数据元概念注册查询', 2056, 1, '#', '', 'F', '0', '1', 'data:register:list', '#', 'admin', '2023-03-05 21:13:07', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2058, '数据元概念注册新增', 2056, 2, '#', '', 'F', '0', '1', 'data:register:add', '#', 'admin', '2023-03-05 21:13:07', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2059, '数据元概念注册修改', 2056, 3, '#', '', 'F', '0', '1', 'data:register:edit', '#', 'admin', '2023-03-05 21:13:07', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2062, '数据元注册', 2003, 4, '/register/data', 'menuItem', 'C', '0', '1', NULL, '#', 'admin', '2023-03-07 09:50:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2064, '值域注册', 2003, 3, '/concept/register', 'menuItem', 'C', '0', '1', '', '#', 'admin', '2023-03-07 14:39:52', 'admin', '2023-03-08 10:22:50', '');
INSERT INTO `sys_menu` VALUES (2065, '特性类注册', 2002, 2, '/register/concept', 'menuItem', 'C', '0', '1', '', '#', 'admin', '2023-03-07 14:42:05', 'admin', '2023-03-08 10:22:09', '');
INSERT INTO `sys_menu` VALUES (2066, '表示类注册', 2002, 3, '/register/concept', 'menuItem', 'C', '0', '1', '', '#', 'admin', '2023-03-07 14:42:29', 'admin', '2023-03-08 10:22:17', '');
INSERT INTO `sys_menu` VALUES (2067, '概念域注册', 2003, 1, '/concept/register', '', 'C', '0', '1', 'concept:register:view', '#', 'admin', '2023-03-07 15:38:15', '', NULL, '概念域注册菜单');
INSERT INTO `sys_menu` VALUES (2068, '概念域注册查询', 2067, 1, '#', '', 'F', '0', '1', 'concept:register:list', '#', 'admin', '2023-03-07 15:38:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2069, '概念域注册新增', 2067, 2, '#', '', 'F', '0', '1', 'concept:register:add', '#', 'admin', '2023-03-07 15:38:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2070, '概念域注册修改', 2067, 3, '#', '', 'F', '0', '1', 'concept:register:edit', '#', 'admin', '2023-03-07 15:38:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2071, '概念域注册删除', 2067, 4, '#', '', 'F', '0', '1', 'concept:register:remove', '#', 'admin', '2023-03-07 15:38:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2072, '概念域注册导出', 2067, 5, '#', '', 'F', '0', '1', 'concept:register:export', '#', 'admin', '2023-03-07 15:38:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2085, '关系注册', 2002, 4, '/egde/search', 'menuItem', 'C', '0', '1', 'egde:search:view', '#', 'admin', '2023-03-09 11:27:28', 'admin', '2023-03-09 14:35:45', '关系注册菜单');
INSERT INTO `sys_menu` VALUES (2086, '关系注册查询', 2085, 1, '#', '', 'F', '0', '1', 'egde:search:list', '#', 'admin', '2023-03-09 11:27:28', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2087, '关系注册新增', 2085, 2, '#', '', 'F', '0', '1', 'egde:search:add', '#', 'admin', '2023-03-09 11:27:28', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2088, '关系注册修改', 2085, 3, '#', '', 'F', '0', '1', 'egde:search:edit', '#', 'admin', '2023-03-09 11:27:28', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2089, '关系注册删除', 2085, 4, '#', '', 'F', '0', '1', 'egde:search:remove', '#', 'admin', '2023-03-09 11:27:28', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2090, '关系注册导出', 2085, 5, '#', '', 'F', '0', '1', 'egde:search:export', '#', 'admin', '2023-03-09 11:27:28', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2091, '主管部门审核', 2004, 2, '/element/dictory', 'menuItem', 'C', '0', '1', '', '#', 'admin', '2023-03-09 14:46:32', 'admin', '2023-03-09 14:46:45', '');
INSERT INTO `sys_menu` VALUES (2092, '系统维护', 0, 11, '#', 'menuItem', 'M', '0', '1', '', 'fa fa-address-book', 'admin', '2023-03-09 14:47:26', 'admin', '2023-03-09 14:56:20', '');
INSERT INTO `sys_menu` VALUES (2093, 'MDR向本体的映射', 2005, 1, '/register/entity', 'menuItem', 'C', '0', '1', '', '#', 'admin', '2023-03-09 14:48:04', 'admin', '2023-03-09 14:57:14', '');
INSERT INTO `sys_menu` VALUES (2094, 'MDR向关系模型的映射', 2005, 2, '/register/entity', 'menuItem', 'C', '0', '1', '', '#', 'admin', '2023-03-09 14:48:30', 'admin', '2023-03-10 09:51:42', '');
INSERT INTO `sys_menu` VALUES (2095, '用户管理', 2092, 1, '/register/entity', 'menuItem', 'C', '0', '1', '', '#', 'admin', '2023-03-09 14:48:48', 'admin', '2023-03-10 09:51:51', '');
INSERT INTO `sys_menu` VALUES (2096, '运行日志', 2092, 2, '/register/entity', 'menuItem', 'C', '0', '1', '', '#', 'admin', '2023-03-09 14:49:05', 'admin', '2023-03-10 09:52:00', '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '通知公告表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (1, '温馨提醒：2018-07-01 若依新版本发布啦', '2', '新版本内容', '0', 'admin', '2023-03-02 10:08:02', '', NULL, '管理员');
INSERT INTO `sys_notice` VALUES (2, '维护通知：2018-07-01 若依系统凌晨维护', '1', '维护内容', '0', 'admin', '2023-03-02 10:08:02', '', NULL, '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '返回参数',
  `status` int(1) NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime NULL DEFAULT NULL COMMENT '操作时间',
  `cost_time` bigint(20) NULL DEFAULT 0 COMMENT '消耗时间',
  PRIMARY KEY (`oper_id`) USING BTREE,
  INDEX `idx_sys_oper_log_bt`(`business_type`) USING BTREE,
  INDEX `idx_sys_oper_log_s`(`status`) USING BTREE,
  INDEX `idx_sys_oper_log_ot`(`oper_time`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 306 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '操作日志记录' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (100, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateAvatar()', 'POST', 1, 'admin', '研发部门', '/system/user/profile/updateAvatar', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-02 10:33:53', 178);
INSERT INTO `sys_oper_log` VALUES (101, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/user/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"userName\":[\"张三\"],\"deptName\":[\"\"],\"phonenumber\":[\"\"],\"email\":[\"\"],\"loginName\":[\"12\"],\"sex\":[\"0\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"\"],\"postIds\":[\"4\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-02 14:36:32', 112);
INSERT INTO `sys_oper_log` VALUES (102, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/3', '127.0.0.1', '内网IP', '3', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":301}', 0, NULL, '2023-03-02 17:24:33', 146);
INSERT INTO `sys_oper_log` VALUES (103, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/112', '127.0.0.1', '内网IP', '112', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":301}', 0, NULL, '2023-03-02 17:24:48', 14);
INSERT INTO `sys_oper_log` VALUES (104, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"112\"],\"parentId\":[\"2\"],\"menuType\":[\"C\"],\"menuName\":[\"服务监控\"],\"url\":[\"/monitor/server\"],\"target\":[\"menuItem\"],\"perms\":[\"monitor:server:view\"],\"orderNum\":[\"4\"],\"icon\":[\"fa fa-server\"],\"visible\":[\"1\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-02 17:25:02', 111);
INSERT INTO `sys_oper_log` VALUES (105, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"1\"],\"menuType\":[\"M\"],\"menuName\":[\"注册准备操作\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-address-book\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-02 19:08:40', 137);
INSERT INTO `sys_oper_log` VALUES (106, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2000\"],\"parentId\":[\"1\"],\"menuType\":[\"M\"],\"menuName\":[\"注册准备操作\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-address-book\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-02 19:08:57', 18);
INSERT INTO `sys_oper_log` VALUES (107, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2000', '127.0.0.1', '内网IP', '2000', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-02 19:10:03', 110);
INSERT INTO `sys_oper_log` VALUES (108, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"注册准备操作\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-address-book\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-02 19:10:22', 17);
INSERT INTO `sys_oper_log` VALUES (109, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"基础类概念注册\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"2\"],\"icon\":[\"fa fa-address-book-o\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-02 19:11:02', 14);
INSERT INTO `sys_oper_log` VALUES (110, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"描述类概念注册\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"3\"],\"icon\":[\"fa fa-address-book\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-02 19:11:19', 12);
INSERT INTO `sys_oper_log` VALUES (111, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"数据源目录\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"4\"],\"icon\":[\"fa fa-address-book-o\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-02 19:11:48', 12);
INSERT INTO `sys_oper_log` VALUES (112, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2001\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"注册准备操作\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"6\"],\"icon\":[\"fa fa-address-book\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-02 19:12:31', 11);
INSERT INTO `sys_oper_log` VALUES (113, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2002\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"基础类概念注册\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"7\"],\"icon\":[\"fa fa-address-book-o\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-02 19:12:51', 12);
INSERT INTO `sys_oper_log` VALUES (114, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2003\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"描述类概念注册\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"8\"],\"icon\":[\"fa fa-address-book\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-02 19:12:56', 13);
INSERT INTO `sys_oper_log` VALUES (115, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2004\"],\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"数据源目录\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"9\"],\"icon\":[\"fa fa-address-book-o\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-02 19:13:09', 14);
INSERT INTO `sys_oper_log` VALUES (116, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"本体映射\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"10\"],\"icon\":[\"fa fa-address-book\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-02 19:13:42', 14);
INSERT INTO `sys_oper_log` VALUES (117, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"4\"],\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"若依官网\"],\"url\":[\"http://ruoyi.vip\"],\"target\":[\"menuBlank\"],\"perms\":[\"\"],\"orderNum\":[\"4\"],\"icon\":[\"fa fa-location-arrow\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-02 19:13:59', 11);
INSERT INTO `sys_oper_log` VALUES (118, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2001\"],\"menuType\":[\"C\"],\"menuName\":[\"命名空间管理\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-address-book\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-02 19:16:55', 13);
INSERT INTO `sys_oper_log` VALUES (119, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"kt_mingming\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-02 19:21:15', 578);
INSERT INTO `sys_oper_log` VALUES (120, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2006', '127.0.0.1', '内网IP', '2006', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-02 19:22:52', 17);
INSERT INTO `sys_oper_log` VALUES (121, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"1\"],\"tableName\":[\"kt_mingming\"],\"tableComment\":[\"命名空间管理表\"],\"className\":[\"KtMingming\"],\"functionAuthor\":[\"w\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"1\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"mm_id\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"mmId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"2\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"Prefix\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"prefix\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"textarea\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"3\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"Namespace\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"namespace\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"textarea\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"4\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"Authority\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"authority\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"textarea\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"5\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"Reference\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"reference\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].isRequired\":[\"1\"],\"columns[4].htmlType\":[\"textarea\"],\"columns[4].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageNa', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-02 19:31:13', 28);
INSERT INTO `sys_oper_log` VALUES (122, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/kt_mingming', '127.0.0.1', '内网IP', '\"kt_mingming\"', NULL, 0, NULL, '2023-03-02 19:31:37', 354);
INSERT INTO `sys_oper_log` VALUES (123, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2007\"],\"parentId\":[\"2001\"],\"menuType\":[\"C\"],\"menuName\":[\"命名空间管理\"],\"url\":[\"/wj_mingming/wj_mingming\"],\"target\":[\"menuItem\"],\"perms\":[\"wj_mingming:wj_mingming:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-02 20:18:35', 151);
INSERT INTO `sys_oper_log` VALUES (124, '命名空间管理', 1, 'com.ruoyi.wj.controller.KtMingmingController.addSave()', 'POST', 1, 'admin', '研发部门', '/wj_mingming/wj_mingming/add', '127.0.0.1', '内网IP', '{\"prefix\":[\"1231\"],\"namespace\":[\"1231\"],\"authority\":[\"1312\"],\"reference\":[\"1312\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-02 20:38:33', 155);
INSERT INTO `sys_oper_log` VALUES (125, '命名空间管理', 3, 'com.ruoyi.wj.controller.KtMingmingController.remove()', 'POST', 1, 'admin', '研发部门', '/wj_mingming/wj_mingming/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"15\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-02 20:40:06', 15);
INSERT INTO `sys_oper_log` VALUES (126, '命名空间管理', 1, 'com.ruoyi.wj.controller.KtMingmingController.addSave()', 'POST', 1, 'admin', '研发部门', '/wj_mingming/wj_mingming/add', '127.0.0.1', '内网IP', '{\"prefix\":[\"123\"],\"namespace\":[\"12\"],\"authority\":[\"12\"],\"reference\":[\"12\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-02 20:42:55', 8);
INSERT INTO `sys_oper_log` VALUES (127, '命名空间管理', 3, 'com.ruoyi.wj.controller.KtMingmingController.remove()', 'POST', 1, 'admin', '研发部门', '/wj_mingming/wj_mingming/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"16\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-02 20:43:01', 6);
INSERT INTO `sys_oper_log` VALUES (128, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"kt_cibiao\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-03 09:36:57', 243);
INSERT INTO `sys_oper_log` VALUES (129, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"2\"],\"tableName\":[\"kt_cibiao\"],\"tableComment\":[\"词表导入与管理表\"],\"className\":[\"KtCibiao\"],\"functionAuthor\":[\"w\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"6\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"cb_id\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"cbId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"7\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"Name\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"name\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"textarea\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"8\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"Type\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"type\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"select\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"9\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"Comment\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"comment\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"textarea\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"10\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"Domain\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"domain\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].isRequired\":[\"1\"],\"columns[4].htmlType\":[\"textarea\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"11\"],\"columns[5].sort\":[\"6\"],\"colum', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-03 09:38:28', 31);
INSERT INTO `sys_oper_log` VALUES (130, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/kt_cibiao', '127.0.0.1', '内网IP', '\"kt_cibiao\"', NULL, 0, NULL, '2023-03-03 09:38:57', 84);
INSERT INTO `sys_oper_log` VALUES (131, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"2\"],\"tableName\":[\"kt_cibiao\"],\"tableComment\":[\"词表导入与管理表\"],\"className\":[\"KtCibiao\"],\"functionAuthor\":[\"w\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"6\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"cb_id\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"cbId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"7\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"Name\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"name\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"textarea\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"8\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"Type\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"type\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"select\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"9\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"Comment\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"comment\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"textarea\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"10\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"Domain\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"domain\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].isRequired\":[\"1\"],\"columns[4].htmlType\":[\"textarea\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"11\"],\"columns[5].sort\":[\"6\"],\"colum', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-03 10:01:15', 81);
INSERT INTO `sys_oper_log` VALUES (132, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/kt_cibiao', '127.0.0.1', '内网IP', '\"kt_cibiao\"', NULL, 0, NULL, '2023-03-03 10:01:38', 223);
INSERT INTO `sys_oper_log` VALUES (133, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2013\"],\"parentId\":[\"2001\"],\"menuType\":[\"C\"],\"menuName\":[\"词表导入与管理\"],\"url\":[\"/wj/cibiao\"],\"target\":[\"menuItem\"],\"perms\":[\"wj:cibiao:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-03 10:24:07', 199);
INSERT INTO `sys_oper_log` VALUES (134, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2013', '127.0.0.1', '内网IP', '2013', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":301}', 0, NULL, '2023-03-03 10:34:32', 93);
INSERT INTO `sys_oper_log` VALUES (135, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2019', '127.0.0.1', '内网IP', '2019', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":301}', 0, NULL, '2023-03-03 10:34:43', 8);
INSERT INTO `sys_oper_log` VALUES (136, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2018', '127.0.0.1', '内网IP', '2018', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-03 10:35:03', 36);
INSERT INTO `sys_oper_log` VALUES (137, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2015', '127.0.0.1', '内网IP', '2015', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-03 10:35:11', 22);
INSERT INTO `sys_oper_log` VALUES (138, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2013', '127.0.0.1', '内网IP', '2013', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":301}', 0, NULL, '2023-03-03 10:35:17', 8);
INSERT INTO `sys_oper_log` VALUES (139, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2016', '127.0.0.1', '内网IP', '2016', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-03 10:35:25', 18);
INSERT INTO `sys_oper_log` VALUES (140, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2014', '127.0.0.1', '内网IP', '2014', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-03 10:35:36', 21);
INSERT INTO `sys_oper_log` VALUES (141, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2017', '127.0.0.1', '内网IP', '2017', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-03 10:35:43', 29);
INSERT INTO `sys_oper_log` VALUES (142, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2013', '127.0.0.1', '内网IP', '2013', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-03 10:35:53', 15);
INSERT INTO `sys_oper_log` VALUES (143, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2024', '127.0.0.1', '内网IP', '2024', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-03 10:36:04', 20);
INSERT INTO `sys_oper_log` VALUES (144, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2023', '127.0.0.1', '内网IP', '2023', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-03 10:36:12', 19);
INSERT INTO `sys_oper_log` VALUES (145, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2022', '127.0.0.1', '内网IP', '2022', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-03 10:36:20', 17);
INSERT INTO `sys_oper_log` VALUES (146, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2020', '127.0.0.1', '内网IP', '2020', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-03 10:36:26', 17);
INSERT INTO `sys_oper_log` VALUES (147, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2021', '127.0.0.1', '内网IP', '2021', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-03 10:36:36', 20);
INSERT INTO `sys_oper_log` VALUES (148, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2019', '127.0.0.1', '内网IP', '2019', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-03 10:36:42', 25);
INSERT INTO `sys_oper_log` VALUES (149, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"2\"],\"tableName\":[\"kt_cibiao\"],\"tableComment\":[\"词表导入与管理表\"],\"className\":[\"KtCibiao\"],\"functionAuthor\":[\"w\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"6\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"cb_id\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"cbId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"7\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"Name\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"name\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"textarea\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"8\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"Type\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"type\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"select\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"9\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"Comment\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"comment\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"textarea\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"10\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"Domain\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"domain\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].isRequired\":[\"1\"],\"columns[4].htmlType\":[\"textarea\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"11\"],\"columns[5].sort\":[\"6\"],\"colum', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-03 10:37:08', 51);
INSERT INTO `sys_oper_log` VALUES (150, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"2\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-03 10:37:46', 45);
INSERT INTO `sys_oper_log` VALUES (151, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"kt_cibiao\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-03 10:37:57', 99);
INSERT INTO `sys_oper_log` VALUES (152, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"3\"],\"tableName\":[\"kt_cibiao\"],\"tableComment\":[\"词表导入与管理表\"],\"className\":[\"KtCibiao\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"12\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"cb_id\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"cbId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"13\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"Name\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"name\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"textarea\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"14\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"Type\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"type\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"select\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"15\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"Comment\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"comment\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"textarea\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"16\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"Domain\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"domain\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].isRequired\":[\"1\"],\"columns[4].htmlType\":[\"textarea\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"17\"],\"columns[5].sort\":[\"6\"', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-03 10:38:43', 32);
INSERT INTO `sys_oper_log` VALUES (153, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/kt_cibiao', '127.0.0.1', '内网IP', '\"kt_cibiao\"', NULL, 0, NULL, '2023-03-03 10:39:36', 233);
INSERT INTO `sys_oper_log` VALUES (154, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"3\"],\"tableName\":[\"kt_cibiao\"],\"tableComment\":[\"词表导入与管理表\"],\"className\":[\"KtCibiao\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"12\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"cb_id\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"cbId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"13\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"Name\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"name\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"textarea\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"14\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"Type\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"type\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"select\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"15\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"Comment\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"comment\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"textarea\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"16\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"Domain\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"domain\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].isRequired\":[\"1\"],\"columns[4].htmlType\":[\"textarea\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"17\"],\"columns[5].sort\":[\"6\"', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-03 10:40:34', 31);
INSERT INTO `sys_oper_log` VALUES (155, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"kt_shiyou\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-03 15:11:08', 665);
INSERT INTO `sys_oper_log` VALUES (156, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"4\"],\"tableName\":[\"kt_shiyou\"],\"tableComment\":[\"石油领域词汇表\"],\"className\":[\"KtShiyou\"],\"functionAuthor\":[\"w\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"18\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"sy_id\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"syId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"19\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"词汇表名称\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"词汇表名称\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"textarea\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"20\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"英文名称\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"英文名称\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"textarea\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"21\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"中文名称\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"中文名称\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"textarea\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"22\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"英文解释\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"英文解释\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].isRequired\":[\"1\"],\"columns[4].htmlType\":[\"textarea\"],\"columns[4].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.shiyou\"],\"modul', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-03 15:14:21', 32);
INSERT INTO `sys_oper_log` VALUES (157, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/kt_shiyou', '127.0.0.1', '内网IP', '\"kt_shiyou\"', NULL, 0, NULL, '2023-03-03 15:14:40', 83);
INSERT INTO `sys_oper_log` VALUES (158, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"kt_guanxi\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-03 17:51:29', 239);
INSERT INTO `sys_oper_log` VALUES (159, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"5\"],\"tableName\":[\"kt_guanxi\"],\"tableComment\":[\"关系查询表\"],\"className\":[\"KtGuanxi\"],\"functionAuthor\":[\"w\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"23\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"ID\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"24\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"source\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"source\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"textarea\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"25\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"relation\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"relation\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"textarea\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"26\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"end_role\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"endRole\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"textarea\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"27\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"end\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"end\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].isRequired\":[\"1\"],\"columns[4].htmlType\":[\"textarea\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"28\"],\"columns[5].sort\":[\"6\"],\"co', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-03 17:57:16', 31);
INSERT INTO `sys_oper_log` VALUES (160, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/kt_guanxi', '127.0.0.1', '内网IP', '\"kt_guanxi\"', NULL, 0, NULL, '2023-03-03 17:57:20', 310);
INSERT INTO `sys_oper_log` VALUES (161, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"5\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-03 18:20:16', 122);
INSERT INTO `sys_oper_log` VALUES (162, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"kt_edge\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-03 18:20:24', 98);
INSERT INTO `sys_oper_log` VALUES (163, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2041', '127.0.0.1', '内网IP', '2041', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-03 18:21:15', 145);
INSERT INTO `sys_oper_log` VALUES (164, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2038', '127.0.0.1', '内网IP', '2038', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-03 18:21:24', 19);
INSERT INTO `sys_oper_log` VALUES (165, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2039', '127.0.0.1', '内网IP', '2039', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-03 18:21:30', 18);
INSERT INTO `sys_oper_log` VALUES (166, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2042', '127.0.0.1', '内网IP', '2042', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-03 18:21:49', 19);
INSERT INTO `sys_oper_log` VALUES (167, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2040', '127.0.0.1', '内网IP', '2040', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-03 18:21:56', 19);
INSERT INTO `sys_oper_log` VALUES (168, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2037', '127.0.0.1', '内网IP', '2037', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-03 18:22:01', 17);
INSERT INTO `sys_oper_log` VALUES (169, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"6\"],\"tableName\":[\"kt_edge\"],\"tableComment\":[\"关系查询表\"],\"className\":[\"KtEdge\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"29\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"ID\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"30\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"source\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"source\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"textarea\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"31\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"relation\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"relation\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"textarea\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"32\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"end_role\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"endRole\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"textarea\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"33\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"end\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"end\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].isRequired\":[\"1\"],\"columns[4].htmlType\":[\"textarea\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"34\"],\"columns[5].sort\":[\"6\"],\"co', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-03 18:22:15', 30);
INSERT INTO `sys_oper_log` VALUES (170, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/kt_edge', '127.0.0.1', '内网IP', '\"kt_edge\"', NULL, 0, NULL, '2023-03-03 18:23:14', 99);
INSERT INTO `sys_oper_log` VALUES (171, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"sys_oper_log\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-03 19:10:50', 299);
INSERT INTO `sys_oper_log` VALUES (172, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"7\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-03 19:11:42', 14);
INSERT INTO `sys_oper_log` VALUES (173, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"kt_element\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-05 09:06:21', 419);
INSERT INTO `sys_oper_log` VALUES (174, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"8\"],\"tableName\":[\"kt_element\"],\"tableComment\":[\"数据元目录表\"],\"className\":[\"KtElement\"],\"functionAuthor\":[\"w\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"52\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"编号\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"编号\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"53\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"数据元名称\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"数据元名称\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"textarea\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"54\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"对象类限定词\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"对象类限定词\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"textarea\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"55\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"对象类\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"对象类\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"textarea\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"56\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"特性类限定词\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"特性类限定词\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].isRequired\":[\"1\"],\"columns[4].htmlType\":[\"textarea\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"57\"],\"columns[5].sort\":[\"6\"],\"columns[', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-05 09:08:38', 42);
INSERT INTO `sys_oper_log` VALUES (175, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/kt_element', '127.0.0.1', '内网IP', '\"kt_element\"', NULL, 0, NULL, '2023-03-05 09:09:27', 467);
INSERT INTO `sys_oper_log` VALUES (176, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2002\"],\"menuType\":[\"C\"],\"menuName\":[\"对象类概念注册\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-05 15:03:16', 216);
INSERT INTO `sys_oper_log` VALUES (177, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2055\"],\"parentId\":[\"2002\"],\"menuType\":[\"C\"],\"menuName\":[\"对象类概念注册\"],\"url\":[\"register/object\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-05 15:21:56', 233);
INSERT INTO `sys_oper_log` VALUES (178, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2055\"],\"parentId\":[\"2002\"],\"menuType\":[\"C\"],\"menuName\":[\"对象类概念注册\"],\"url\":[\"/register/object\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-05 15:24:11', 150);
INSERT INTO `sys_oper_log` VALUES (179, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2055\"],\"parentId\":[\"2002\"],\"menuType\":[\"C\"],\"menuName\":[\"对象类概念注册\"],\"url\":[\"/register/object\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-05 15:26:52', 205);
INSERT INTO `sys_oper_log` VALUES (180, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2055\"],\"parentId\":[\"2002\"],\"menuType\":[\"C\"],\"menuName\":[\"对象类概念注册\"],\"url\":[\"/wj/register\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-05 15:27:55', 20);
INSERT INTO `sys_oper_log` VALUES (181, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2055\"],\"parentId\":[\"2002\"],\"menuType\":[\"C\"],\"menuName\":[\"对象类概念注册\"],\"url\":[\"/register/object\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-05 15:55:41', 132);
INSERT INTO `sys_oper_log` VALUES (182, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2055\"],\"parentId\":[\"2002\"],\"menuType\":[\"C\"],\"menuName\":[\"对象类概念注册\"],\"url\":[\"/monitor/data\"],\"target\":[\"menuItem\"],\"perms\":[\"register:object:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-05 18:22:47', 166);
INSERT INTO `sys_oper_log` VALUES (183, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2055\"],\"parentId\":[\"2002\"],\"menuType\":[\"C\"],\"menuName\":[\"对象类概念注册\"],\"url\":[\"/monitor/data\"],\"target\":[\"menuItem\"],\"perms\":[\"monitor:data:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-05 18:23:13', 17);
INSERT INTO `sys_oper_log` VALUES (184, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2055\"],\"parentId\":[\"2002\"],\"menuType\":[\"C\"],\"menuName\":[\"对象类概念注册\"],\"url\":[\"/wj/object\"],\"target\":[\"menuItem\"],\"perms\":[\"wj:object:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-05 19:22:26', 135);
INSERT INTO `sys_oper_log` VALUES (185, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"4\"],\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"若依官网\"],\"url\":[\"http://ruoyi.vip\"],\"target\":[\"menuBlank\"],\"perms\":[\"\"],\"orderNum\":[\"4\"],\"icon\":[\"fa fa-location-arrow\"],\"visible\":[\"1\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-05 20:46:40', 125);
INSERT INTO `sys_oper_log` VALUES (186, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2055\"],\"parentId\":[\"2002\"],\"menuType\":[\"C\"],\"menuName\":[\"对象类概念注册\"],\"url\":[\"/wj/object\"],\"target\":[\"menuItem\"],\"perms\":[\"wj:object:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-05 20:56:33', 28);
INSERT INTO `sys_oper_log` VALUES (187, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"普通角色\"],\"roleKey\":[\"common\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"普通角色\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,1046,2,109,1047,1048,1049,110,1050,1051,1052,1053,1054,1055,1056,111,112,113,3,114,115,1057,1058,1059,1060,1061,116,4,2001,2007,2008,2009,2010,2011,2012,2025,2026,2027,2028,2029,2030,2031,2032,2033,2034,2035,2036,2002,2055,2043,2044,2045,2046,2047,2048,2003,2004,2049,2050,2051,2052,2053,2054,2005\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-05 21:01:08', 417);
INSERT INTO `sys_oper_log` VALUES (188, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"1\"],\"roleName\":[\"超级管理员\"],\"roleKey\":[\"admin\"],\"roleSort\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"超级管理员\"],\"menuIds\":[\"2002,2055\"]}', NULL, 1, '不允许操作超级管理员角色', '2023-03-05 21:01:37', 3);
INSERT INTO `sys_oper_log` VALUES (189, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"kt_school\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-05 21:09:16', 619);
INSERT INTO `sys_oper_log` VALUES (190, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"9\"],\"tableName\":[\"kt_school\"],\"tableComment\":[\"数据元概念注册\"],\"className\":[\"KtSchool\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"60\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"学校表的主键ID\"],\"columns[0].javaType\":[\"Integer\"],\"columns[0].javaField\":[\"scId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"61\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"学校名称\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"scName\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"62\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"所属区域外键\"],\"columns[2].javaType\":[\"Integer\"],\"columns[2].javaField\":[\"aId\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.data\"],\"moduleName\":[\"data\"],\"businessName\":[\"register\"],\"functionName\":[\"数据元概念注册\"],\"params[parentMenuId]\":[\"2003\"],\"params[parentMenuName]\":[\"描述类概念注册\"],\"genType\":[\"0\"],\"genPath\":[\"/\"],\"subTableName\":[\"\"],\"params[treeCode]\":[\"\"],\"params[treeParentCode]\":[\"\"],\"params[treeName]\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-05 21:11:29', 30);
INSERT INTO `sys_oper_log` VALUES (191, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/kt_school', '127.0.0.1', '内网IP', '\"kt_school\"', NULL, 0, NULL, '2023-03-05 21:11:33', 608);
INSERT INTO `sys_oper_log` VALUES (192, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2061', '127.0.0.1', '内网IP', '2061', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-06 10:43:34', 429);
INSERT INTO `sys_oper_log` VALUES (193, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2060', '127.0.0.1', '内网IP', '2060', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-06 10:43:45', 18);
INSERT INTO `sys_oper_log` VALUES (194, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2055\"],\"parentId\":[\"2002\"],\"menuType\":[\"C\"],\"menuName\":[\"对象类概念注册\"],\"url\":[\"/register/concept\"],\"target\":[\"menuItem\"],\"perms\":[\"register:concept:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-06 14:39:40', 94);
INSERT INTO `sys_oper_log` VALUES (195, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2055\"],\"parentId\":[\"2002\"],\"menuType\":[\"C\"],\"menuName\":[\"对象类概念注册\"],\"url\":[\"/register/concept/concept\"],\"target\":[\"menuItem\"],\"perms\":[\"register:concept:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-06 15:01:00', 116);
INSERT INTO `sys_oper_log` VALUES (196, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2055\"],\"parentId\":[\"2002\"],\"menuType\":[\"C\"],\"menuName\":[\"对象类概念注册\"],\"url\":[\"/register/concept\"],\"target\":[\"menuItem\"],\"perms\":[\"register:concept:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-06 15:09:36', 132);
INSERT INTO `sys_oper_log` VALUES (197, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2055\"],\"parentId\":[\"2002\"],\"menuType\":[\"C\"],\"menuName\":[\"对象类概念注册\"],\"url\":[\"/register/concept/concept\"],\"target\":[\"menuItem\"],\"perms\":[\"register:concept:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-06 15:36:36', 138);
INSERT INTO `sys_oper_log` VALUES (198, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2055\"],\"parentId\":[\"2002\"],\"menuType\":[\"C\"],\"menuName\":[\"对象类概念注册\"],\"url\":[\"/register/concept\"],\"target\":[\"menuItem\"],\"perms\":[\"register:concept:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-06 16:05:55', 125);
INSERT INTO `sys_oper_log` VALUES (199, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2055\"],\"parentId\":[\"2002\"],\"menuType\":[\"C\"],\"menuName\":[\"对象类概念注册\"],\"url\":[\"/register/concept\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-06 16:35:06', 130);
INSERT INTO `sys_oper_log` VALUES (200, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2003\"],\"menuType\":[\"C\"],\"menuName\":[\"数据元注册\"],\"url\":[\"/register/data\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"4\"],\"icon\":[\"\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-07 09:50:42', 199);
INSERT INTO `sys_oper_log` VALUES (201, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2003\"],\"menuType\":[\"C\"],\"menuName\":[\"概念与注册\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"2\"],\"icon\":[\"\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-07 14:39:25', 260);
INSERT INTO `sys_oper_log` VALUES (202, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2003\"],\"menuType\":[\"C\"],\"menuName\":[\"值域注册\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"3\"],\"icon\":[\"\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-07 14:39:52', 16);
INSERT INTO `sys_oper_log` VALUES (203, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2063\"],\"parentId\":[\"2003\"],\"menuType\":[\"C\"],\"menuName\":[\"概念域注册\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"2\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-07 14:40:09', 58);
INSERT INTO `sys_oper_log` VALUES (204, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2043\"],\"parentId\":[\"2002\"],\"menuType\":[\"C\"],\"menuName\":[\"关系注册\"],\"url\":[\"/edge/search\"],\"target\":[\"menuItem\"],\"perms\":[\"edge:search:view\"],\"orderNum\":[\"4\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-07 14:41:32', 15);
INSERT INTO `sys_oper_log` VALUES (205, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2002\"],\"menuType\":[\"C\"],\"menuName\":[\"特性类注册\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"2\"],\"icon\":[\"\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-07 14:42:05', 15);
INSERT INTO `sys_oper_log` VALUES (206, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2002\"],\"menuType\":[\"C\"],\"menuName\":[\"表示类注册\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"3\"],\"icon\":[\"\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-07 14:42:29', 13);
INSERT INTO `sys_oper_log` VALUES (207, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"系统监控\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"2\"],\"icon\":[\"fa fa-video-camera\"],\"visible\":[\"1\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-07 14:43:44', 16);
INSERT INTO `sys_oper_log` VALUES (208, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateAvatar()', 'POST', 1, 'admin', '研发部门', '/system/user/profile/updateAvatar', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-07 14:45:12', 168);
INSERT INTO `sys_oper_log` VALUES (209, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.update()', 'POST', 1, 'admin', '研发部门', '/system/user/profile/update', '127.0.0.1', '内网IP', '{\"id\":[\"\"],\"userName\":[\"adminl\"],\"phonenumber\":[\"15888888888\"],\"email\":[\"ry@163.com\"],\"sex\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-07 15:04:38', 158);
INSERT INTO `sys_oper_log` VALUES (210, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.update()', 'POST', 1, 'admin', '研发部门', '/system/user/profile/update', '127.0.0.1', '内网IP', '{\"id\":[\"\"],\"userName\":[\"adminl\"],\"phonenumber\":[\"15888888888\"],\"email\":[\"ry@163.com\"],\"sex\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-07 15:04:45', 30);
INSERT INTO `sys_oper_log` VALUES (211, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.update()', 'POST', 1, 'admin', '研发部门', '/system/user/profile/update', '127.0.0.1', '内网IP', '{\"id\":[\"\"],\"userName\":[\"adminl\"],\"phonenumber\":[\"15888888888\"],\"email\":[\"ry@163.com\"],\"sex\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-07 15:04:55', 37);
INSERT INTO `sys_oper_log` VALUES (212, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.update()', 'POST', 1, 'admin', '研发部门', '/system/user/profile/update', '127.0.0.1', '内网IP', '{\"id\":[\"\"],\"userName\":[\"adminl\"],\"phonenumber\":[\"15888888888\"],\"email\":[\"ry@163.com\"],\"sex\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-07 15:23:36', 160);
INSERT INTO `sys_oper_log` VALUES (213, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2065\"],\"parentId\":[\"2002\"],\"menuType\":[\"C\"],\"menuName\":[\"特性类注册\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"2\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-07 15:25:34', 51);
INSERT INTO `sys_oper_log` VALUES (214, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2063', '127.0.0.1', '内网IP', '2063', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-07 15:35:00', 382);
INSERT INTO `sys_oper_log` VALUES (215, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"kt_mean\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-07 15:35:17', 461);
INSERT INTO `sys_oper_log` VALUES (216, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"10\"],\"tableName\":[\"kt_mean\"],\"tableComment\":[\"值含义注册表\"],\"className\":[\"KtMean\"],\"functionAuthor\":[\"w\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"63\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"编号\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"编号\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"64\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"值含义\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"值含义\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"textarea\"],\"columns[1].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.concept\"],\"moduleName\":[\"concept\"],\"businessName\":[\"register\"],\"functionName\":[\"概念域注册\"],\"params[parentMenuId]\":[\"2003\"],\"params[parentMenuName]\":[\"描述类概念注册\"],\"genType\":[\"0\"],\"genPath\":[\"/\"],\"subTableName\":[\"\"],\"params[treeCode]\":[\"\"],\"params[treeParentCode]\":[\"\"],\"params[treeName]\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-07 15:37:24', 18);
INSERT INTO `sys_oper_log` VALUES (217, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/kt_mean', '127.0.0.1', '内网IP', '\"kt_mean\"', NULL, 0, NULL, '2023-03-07 15:37:30', 633);
INSERT INTO `sys_oper_log` VALUES (218, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2065\"],\"parentId\":[\"2002\"],\"menuType\":[\"C\"],\"menuName\":[\"特性类注册\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"2\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-07 17:06:02', 140);
INSERT INTO `sys_oper_log` VALUES (219, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"3\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"系统工具\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"3\"],\"icon\":[\"fa fa-bars\"],\"visible\":[\"1\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-07 17:06:30', 16);
INSERT INTO `sys_oper_log` VALUES (220, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2065\"],\"parentId\":[\"2002\"],\"menuType\":[\"C\"],\"menuName\":[\"特性类注册\"],\"url\":[\"/register/concept\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"2\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-08 10:22:09', 243);
INSERT INTO `sys_oper_log` VALUES (221, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2066\"],\"parentId\":[\"2002\"],\"menuType\":[\"C\"],\"menuName\":[\"表示类注册\"],\"url\":[\"/register/concept\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"3\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-08 10:22:17', 15);
INSERT INTO `sys_oper_log` VALUES (222, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2064\"],\"parentId\":[\"2003\"],\"menuType\":[\"C\"],\"menuName\":[\"值域注册\"],\"url\":[\"/concept/register\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"3\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-08 10:22:51', 16);
INSERT INTO `sys_oper_log` VALUES (223, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateAvatar()', 'POST', 1, 'admin', '研发部门', '/system/user/profile/updateAvatar', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-08 11:06:19', 180);
INSERT INTO `sys_oper_log` VALUES (224, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.update()', 'POST', 1, 'admin', '研发部门', '/system/user/profile/update', '127.0.0.1', '内网IP', '{\"id\":[\"\"],\"userName\":[\"可欣\"],\"phonenumber\":[\"15888888888\"],\"email\":[\"ry@163.com\"],\"sex\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-08 11:06:43', 41);
INSERT INTO `sys_oper_log` VALUES (225, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2004\"],\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"数据元目录\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"9\"],\"icon\":[\"fa fa-address-book-o\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-08 19:37:08', 118);
INSERT INTO `sys_oper_log` VALUES (226, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"3\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"系统工具\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"3\"],\"icon\":[\"fa fa-bars\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-08 19:50:45', 145);
INSERT INTO `sys_oper_log` VALUES (227, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2005\"],\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"本体映射\"],\"url\":[\"/register/entity\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"10\"],\"icon\":[\"fa fa-address-book\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-09 09:05:41', 262);
INSERT INTO `sys_oper_log` VALUES (228, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"6\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-09 10:39:35', 400);
INSERT INTO `sys_oper_log` VALUES (229, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"kt_edge\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-09 10:39:40', 193);
INSERT INTO `sys_oper_log` VALUES (230, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"11\"],\"tableName\":[\"kt_edge\"],\"tableComment\":[\"关系查询表\"],\"className\":[\"KtEdge\"],\"functionAuthor\":[\"w\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"65\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"link_id\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"linkId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"66\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"ID\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"ID\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"67\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"source\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"source\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"textarea\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"68\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"relation\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"relation\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"textarea\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"69\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"end_role\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"endRole\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].isRequired\":[\"1\"],\"columns[4].htmlType\":[\"textarea\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"70\"],\"columns[5].sort\":[\"6\"],\"col', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-09 10:40:36', 33);
INSERT INTO `sys_oper_log` VALUES (231, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2048', '127.0.0.1', '内网IP', '2048', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":301}', 0, NULL, '2023-03-09 10:40:53', 17);
INSERT INTO `sys_oper_log` VALUES (232, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2048', '127.0.0.1', '内网IP', '2048', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":301}', 0, NULL, '2023-03-09 10:40:57', 9);
INSERT INTO `sys_oper_log` VALUES (233, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2044', '127.0.0.1', '内网IP', '2044', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":301}', 0, NULL, '2023-03-09 10:41:02', 12);
INSERT INTO `sys_oper_log` VALUES (234, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"11\"],\"tableName\":[\"kt_edge\"],\"tableComment\":[\"关系查询表\"],\"className\":[\"KtEdge\"],\"functionAuthor\":[\"w\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"65\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"link_id\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"linkId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"66\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"ID\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"ID\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"67\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"source\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"source\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"textarea\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"68\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"relation\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"relation\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"textarea\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"69\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"end_role\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"endRole\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].isRequired\":[\"1\"],\"columns[4].htmlType\":[\"textarea\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"70\"],\"columns[5].sort\":[\"6\"],\"col', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-09 10:42:21', 38);
INSERT INTO `sys_oper_log` VALUES (235, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/kt_edge', '127.0.0.1', '内网IP', '\"kt_edge\"', NULL, 0, NULL, '2023-03-09 10:42:26', 1119);
INSERT INTO `sys_oper_log` VALUES (236, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2043\"],\"parentId\":[\"2002\"],\"menuType\":[\"C\"],\"menuName\":[\"关系注册\"],\"url\":[\"/edge/search\"],\"target\":[\"menuItem\"],\"perms\":[\"edge:search:view\"],\"orderNum\":[\"4\"],\"icon\":[\"#\"],\"visible\":[\"1\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-09 11:07:05', 126);
INSERT INTO `sys_oper_log` VALUES (237, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2073\"],\"parentId\":[\"2002\"],\"menuType\":[\"C\"],\"menuName\":[\"关系注册\"],\"url\":[\"/edge/search\"],\"target\":[\"menuItem\"],\"perms\":[\"edge:search:view\"],\"orderNum\":[\"4\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"修改菜单\'关系注册\'失败，菜单名称已存在\",\"code\":500}', 0, NULL, '2023-03-09 11:07:13', 6);
INSERT INTO `sys_oper_log` VALUES (238, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2043\"],\"parentId\":[\"2002\"],\"menuType\":[\"C\"],\"menuName\":[\"关系注册\"],\"url\":[\"/edge/search\"],\"target\":[\"menuItem\"],\"perms\":[\"edge:search:view\"],\"orderNum\":[\"5\"],\"icon\":[\"#\"],\"visible\":[\"1\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-09 11:07:34', 15);
INSERT INTO `sys_oper_log` VALUES (239, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2073\"],\"parentId\":[\"2002\"],\"menuType\":[\"C\"],\"menuName\":[\"关系注册\"],\"url\":[\"/edge/search\"],\"target\":[\"menuItem\"],\"perms\":[\"edge:search:view\"],\"orderNum\":[\"4\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"修改菜单\'关系注册\'失败，菜单名称已存在\",\"code\":500}', 0, NULL, '2023-03-09 11:07:45', 6);
INSERT INTO `sys_oper_log` VALUES (240, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2043\"],\"parentId\":[\"2002\"],\"menuType\":[\"C\"],\"menuName\":[\"关系注册1\"],\"url\":[\"/edge/search\"],\"target\":[\"menuItem\"],\"perms\":[\"edge:search:view\"],\"orderNum\":[\"5\"],\"icon\":[\"#\"],\"visible\":[\"1\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-09 11:08:01', 28);
INSERT INTO `sys_oper_log` VALUES (241, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2073\"],\"parentId\":[\"2002\"],\"menuType\":[\"C\"],\"menuName\":[\"关系注册\"],\"url\":[\"/edge/search\"],\"target\":[\"menuItem\"],\"perms\":[\"edge:search:view\"],\"orderNum\":[\"4\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-09 11:08:16', 15);
INSERT INTO `sys_oper_log` VALUES (242, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2073', '127.0.0.1', '内网IP', '2073', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":301}', 0, NULL, '2023-03-09 11:14:06', 117);
INSERT INTO `sys_oper_log` VALUES (243, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2074', '127.0.0.1', '内网IP', '2074', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-09 11:14:11', 30);
INSERT INTO `sys_oper_log` VALUES (244, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2075', '127.0.0.1', '内网IP', '2075', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-09 11:14:19', 21);
INSERT INTO `sys_oper_log` VALUES (245, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2076', '127.0.0.1', '内网IP', '2076', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-09 11:14:27', 19);
INSERT INTO `sys_oper_log` VALUES (246, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2077', '127.0.0.1', '内网IP', '2077', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-09 11:14:35', 31);
INSERT INTO `sys_oper_log` VALUES (247, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2078', '127.0.0.1', '内网IP', '2078', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-09 11:14:42', 19);
INSERT INTO `sys_oper_log` VALUES (248, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2073', '127.0.0.1', '内网IP', '2073', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-09 11:14:48', 18);
INSERT INTO `sys_oper_log` VALUES (249, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2044', '127.0.0.1', '内网IP', '2044', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":301}', 0, NULL, '2023-03-09 11:14:54', 10);
INSERT INTO `sys_oper_log` VALUES (250, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"11\"],\"tableName\":[\"kt_edge\"],\"tableComment\":[\"关系查询表\"],\"className\":[\"KtEdge\"],\"functionAuthor\":[\"w\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"65\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"link_id\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"linkId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"66\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"ID\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"ID\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"67\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"source\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"source\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"textarea\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"68\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"relation\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"relation\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"textarea\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"69\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"end_role\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"endRole\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].isRequired\":[\"1\"],\"columns[4].htmlType\":[\"textarea\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"70\"],\"columns[5].sort\":[\"6\"],\"c', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-09 11:15:21', 54);
INSERT INTO `sys_oper_log` VALUES (251, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"11\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-09 11:16:06', 28);
INSERT INTO `sys_oper_log` VALUES (252, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"kt_edge\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-09 11:16:14', 118);
INSERT INTO `sys_oper_log` VALUES (253, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"12\"],\"tableName\":[\"kt_edge\"],\"tableComment\":[\"关系查询表\"],\"className\":[\"KtEdge\"],\"functionAuthor\":[\"w\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"72\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"link_id\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"linkId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"73\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"ID\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"ID\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"74\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"source\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"source\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"textarea\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"75\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"relation\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"relation\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"textarea\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"76\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"end_role\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"endRole\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].isRequired\":[\"1\"],\"columns[4].htmlType\":[\"textarea\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"77\"],\"columns[5].sort\":[\"6\"],\"c', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-09 11:16:40', 33);
INSERT INTO `sys_oper_log` VALUES (254, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/kt_edge', '127.0.0.1', '内网IP', '\"kt_edge\"', NULL, 0, NULL, '2023-03-09 11:16:44', 407);
INSERT INTO `sys_oper_log` VALUES (255, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/kt_edge', '127.0.0.1', '内网IP', '\"kt_edge\"', NULL, 0, NULL, '2023-03-09 11:17:01', 184);
INSERT INTO `sys_oper_log` VALUES (256, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2084', '127.0.0.1', '内网IP', '2084', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-09 11:23:44', 109);
INSERT INTO `sys_oper_log` VALUES (257, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2080', '127.0.0.1', '内网IP', '2080', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-09 11:25:01', 19);
INSERT INTO `sys_oper_log` VALUES (258, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2083', '127.0.0.1', '内网IP', '2083', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-09 11:25:09', 21);
INSERT INTO `sys_oper_log` VALUES (259, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"12\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-09 11:25:56', 36);
INSERT INTO `sys_oper_log` VALUES (260, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"kt_edge\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-09 11:26:01', 100);
INSERT INTO `sys_oper_log` VALUES (261, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"13\"],\"tableName\":[\"kt_edge\"],\"tableComment\":[\"关系查询表\"],\"className\":[\"KtEdge\"],\"functionAuthor\":[\"w\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"79\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"link_id\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"linkId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"80\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"l_id\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"lId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"81\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"source\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"source\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"textarea\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"82\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"relation\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"relation\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"textarea\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"83\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"end_role\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"endRole\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].isRequired\":[\"1\"],\"columns[4].htmlType\":[\"textarea\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"84\"],\"columns[5].sort\":[\"6\"]', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-09 11:26:49', 43);
INSERT INTO `sys_oper_log` VALUES (262, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/kt_edge', '127.0.0.1', '内网IP', '\"kt_edge\"', NULL, 0, NULL, '2023-03-09 11:26:53', 274);
INSERT INTO `sys_oper_log` VALUES (263, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2079', '127.0.0.1', '内网IP', '2079', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":301}', 0, NULL, '2023-03-09 11:31:10', 81);
INSERT INTO `sys_oper_log` VALUES (264, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"13\"],\"tableName\":[\"kt_edge\"],\"tableComment\":[\"关系查询表\"],\"className\":[\"KtEdge\"],\"functionAuthor\":[\"w\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"79\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"link_id\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"linkId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"80\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"l_id\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"lId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"81\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"source\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"source\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"textarea\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"82\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"relation\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"relation\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"textarea\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"83\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"end_role\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"endRole\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].isRequired\":[\"1\"],\"columns[4].htmlType\":[\"textarea\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"84\"],\"columns[5].sort\":[\"6\"]', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-09 11:31:42', 59);
INSERT INTO `sys_oper_log` VALUES (265, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2081', '127.0.0.1', '内网IP', '2081', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-09 11:32:38', 30);
INSERT INTO `sys_oper_log` VALUES (266, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2082', '127.0.0.1', '内网IP', '2082', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-09 11:32:54', 17);
INSERT INTO `sys_oper_log` VALUES (267, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2079', '127.0.0.1', '内网IP', '2079', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-09 11:33:01', 19);
INSERT INTO `sys_oper_log` VALUES (268, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2085\"],\"parentId\":[\"2002\"],\"menuType\":[\"C\"],\"menuName\":[\"关系注册\"],\"url\":[\"/egde/search\"],\"target\":[\"menuItem\"],\"perms\":[\"egde:search:view\"],\"orderNum\":[\"4\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-09 11:33:19', 15);
INSERT INTO `sys_oper_log` VALUES (269, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2085\"],\"parentId\":[\"2002\"],\"menuType\":[\"C\"],\"menuName\":[\"关系注册\"],\"url\":[\"/edge/search\"],\"target\":[\"menuItem\"],\"perms\":[\"edge:search:view\"],\"orderNum\":[\"4\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-09 14:21:04', 126);
INSERT INTO `sys_oper_log` VALUES (270, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2085\"],\"parentId\":[\"2002\"],\"menuType\":[\"C\"],\"menuName\":[\"关系注册\"],\"url\":[\"/egde/search\"],\"target\":[\"menuItem\"],\"perms\":[\"egde:search:view\"],\"orderNum\":[\"4\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-09 14:35:45', 133);
INSERT INTO `sys_oper_log` VALUES (271, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2004\"],\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"数据元目录与审核\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"9\"],\"icon\":[\"fa fa-address-book-o\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-09 14:45:34', 116);
INSERT INTO `sys_oper_log` VALUES (272, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2049\"],\"parentId\":[\"2004\"],\"menuType\":[\"C\"],\"menuName\":[\"数据元目录管理\"],\"url\":[\"/element/dictory\"],\"target\":[\"menuItem\"],\"perms\":[\"element:dictory:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-09 14:45:46', 14);
INSERT INTO `sys_oper_log` VALUES (273, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2004\"],\"menuType\":[\"C\"],\"menuName\":[\"主管部门审核\"],\"url\":[\"/register/concept\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"2\"],\"icon\":[\"\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-09 14:46:32', 17);
INSERT INTO `sys_oper_log` VALUES (274, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2091\"],\"parentId\":[\"2004\"],\"menuType\":[\"C\"],\"menuName\":[\"主管部门审核\"],\"url\":[\"/element/dictory\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"2\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-09 14:46:45', 14);
INSERT INTO `sys_oper_log` VALUES (275, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2005\"],\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"数据模型映射\"],\"url\":[\"/register/entity\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"10\"],\"icon\":[\"fa fa-address-book\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-09 14:47:00', 14);
INSERT INTO `sys_oper_log` VALUES (276, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"系统维护\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"8\"],\"icon\":[\"\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-09 14:47:26', 19);
INSERT INTO `sys_oper_log` VALUES (277, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2092\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"系统维护\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"11\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-09 14:47:37', 18);
INSERT INTO `sys_oper_log` VALUES (278, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2005\"],\"menuType\":[\"C\"],\"menuName\":[\"MDR向本体的映射\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-09 14:48:04', 14);
INSERT INTO `sys_oper_log` VALUES (279, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2005\"],\"menuType\":[\"C\"],\"menuName\":[\"MDR向关系模型的映射\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"2\"],\"icon\":[\"\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-09 14:48:30', 13);
INSERT INTO `sys_oper_log` VALUES (280, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2092\"],\"menuType\":[\"C\"],\"menuName\":[\"用户管理\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-09 14:48:48', 12);
INSERT INTO `sys_oper_log` VALUES (281, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2092\"],\"menuType\":[\"C\"],\"menuName\":[\"运行日志\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"2\"],\"icon\":[\"\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-09 14:49:05', 15);
INSERT INTO `sys_oper_log` VALUES (282, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2092\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"系统维护\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"11\"],\"icon\":[\"fa fa-address-book\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-09 14:56:20', 13);
INSERT INTO `sys_oper_log` VALUES (283, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2005\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"数据模型映射\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"10\"],\"icon\":[\"fa fa-address-book\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-09 14:57:06', 14);
INSERT INTO `sys_oper_log` VALUES (284, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2093\"],\"parentId\":[\"2005\"],\"menuType\":[\"C\"],\"menuName\":[\"MDR向本体的映射\"],\"url\":[\"/register/entity\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-09 14:57:14', 14);
INSERT INTO `sys_oper_log` VALUES (285, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2094\"],\"parentId\":[\"2005\"],\"menuType\":[\"C\"],\"menuName\":[\"MDR向关系模型的映射\"],\"url\":[\"属种关系\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"2\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-10 09:50:44', 284);
INSERT INTO `sys_oper_log` VALUES (286, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"3\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"系统工具\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"3\"],\"icon\":[\"fa fa-bars\"],\"visible\":[\"1\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-10 09:51:00', 20);
INSERT INTO `sys_oper_log` VALUES (287, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2094\"],\"parentId\":[\"2005\"],\"menuType\":[\"C\"],\"menuName\":[\"MDR向关系模型的映射\"],\"url\":[\"/register/entity\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"2\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-10 09:51:42', 21);
INSERT INTO `sys_oper_log` VALUES (288, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2095\"],\"parentId\":[\"2092\"],\"menuType\":[\"C\"],\"menuName\":[\"用户管理\"],\"url\":[\"/register/entity\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-10 09:51:51', 12);
INSERT INTO `sys_oper_log` VALUES (289, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2096\"],\"parentId\":[\"2092\"],\"menuType\":[\"C\"],\"menuName\":[\"运行日志\"],\"url\":[\"/register/entity\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"2\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-10 09:52:00', 14);
INSERT INTO `sys_oper_log` VALUES (290, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"系统管理\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-gear\"],\"visible\":[\"1\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-10 11:10:09', 119);
INSERT INTO `sys_oper_log` VALUES (291, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.update()', 'POST', 1, 'admin', '研发部门', '/system/user/profile/update', '127.0.0.1', '内网IP', '{\"id\":[\"\"],\"userName\":[\"adminl\"],\"phonenumber\":[\"15888888888\"],\"email\":[\"ry@163.com\"],\"sex\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-10 11:11:41', 35);
INSERT INTO `sys_oper_log` VALUES (292, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateAvatar()', 'POST', 1, 'admin', '研发部门', '/system/user/profile/updateAvatar', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2023-03-10 11:12:25', 124);
INSERT INTO `sys_oper_log` VALUES (293, '词表导入与管理', 5, 'com.ruoyi.cibiao.controller.KtCibiaoController.export()', 'POST', 1, 'admin', '研发部门', '/cibiao/manager/export', '127.0.0.1', '内网IP', '{\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}', '{\"msg\":\"8d8e003d-a816-4504-bba3-22e782e3a79b_词表导入与管理数据.xlsx\",\"code\":0}', 0, NULL, '2024-03-07 23:06:32', 2841);
INSERT INTO `sys_oper_log` VALUES (294, '概念域注册', 3, 'com.ruoyi.concept.controller.KtMeanController.remove()', 'POST', 1, 'admin', '研发部门', '/concept/register/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"4\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-08 09:36:16', 123);
INSERT INTO `sys_oper_log` VALUES (295, '词表基本信息', 5, 'com.ruoyi.cibiao.controller.KtCibiaoController.export()', 'POST', 1, 'admin', '研发部门', '/cibiao/manager/export', '127.0.0.1', '内网IP', '{\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}', '{\"msg\":\"cfa382a7-d034-44c5-a80f-16663c1a3ac1_词表基本信息数据.xlsx\",\"code\":0}', 0, NULL, '2024-03-08 16:29:13', 2958);
INSERT INTO `sys_oper_log` VALUES (296, '词表基本信息', 5, 'com.ruoyi.cibiao.controller.KtCibiaoController.export()', 'POST', 1, 'admin', '研发部门', '/cibiao/manager/export', '127.0.0.1', '内网IP', '{\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}', '{\"msg\":\"435e3020-40a7-4965-a3d3-dd1395dbe837_词表基本信息数据.xlsx\",\"code\":0}', 0, NULL, '2024-03-08 16:31:33', 98);
INSERT INTO `sys_oper_log` VALUES (297, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.update()', 'POST', 1, 'admin', '研发部门', '/system/user/profile/update', '127.0.0.1', '内网IP', '{\"id\":[\"\"],\"userName\":[\"adminl\"],\"phonenumber\":[\"15888888888\"],\"email\":[\"ry@163.com\"],\"sex\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-09 20:40:17', 357);
INSERT INTO `sys_oper_log` VALUES (298, '词表基本信息', 3, 'com.ruoyi.cibiao.controller.KtCibiaoController.remove()', 'POST', 1, 'admin', '研发部门', '/cibiao/manager/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"10\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-09 21:48:38', 118);
INSERT INTO `sys_oper_log` VALUES (299, '词表基本信息', 3, 'com.ruoyi.cibiao.controller.KtCibiaoController.remove()', 'POST', 1, 'admin', '研发部门', '/cibiao/manager/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"9\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-09 21:48:40', 6);
INSERT INTO `sys_oper_log` VALUES (300, '词表基本信息', 3, 'com.ruoyi.cibiao.controller.KtCibiaoController.remove()', 'POST', 1, 'admin', '研发部门', '/cibiao/manager/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"8\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-09 21:48:43', 11);
INSERT INTO `sys_oper_log` VALUES (301, '命名空间管理', 1, 'com.ruoyi.wj.controller.KtMingmingController.addSave()', 'POST', 1, 'admin', '研发部门', '/wj_mingming/wj_mingming/add', '127.0.0.1', '内网IP', '{\"prefix\":[\"111\"],\"namespace\":[\"222\"],\"authority\":[\"44\"],\"reference\":[\"66\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-09 21:56:20', 14);
INSERT INTO `sys_oper_log` VALUES (302, '命名空间管理', 3, 'com.ruoyi.wj.controller.KtMingmingController.remove()', 'POST', 1, 'admin', '研发部门', '/wj_mingming/wj_mingming/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"15\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-09 21:56:30', 8);
INSERT INTO `sys_oper_log` VALUES (303, '命名空间管理', 3, 'com.ruoyi.wj.controller.KtMingmingController.remove()', 'POST', 1, 'admin', '研发部门', '/wj_mingming/wj_mingming/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"14\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-09 21:56:56', 14);
INSERT INTO `sys_oper_log` VALUES (304, '命名空间管理', 3, 'com.ruoyi.wj.controller.KtMingmingController.remove()', 'POST', 1, 'admin', '研发部门', '/wj_mingming/wj_mingming/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"6\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-09 21:57:02', 10);
INSERT INTO `sys_oper_log` VALUES (305, '命名空间管理', 3, 'com.ruoyi.wj.controller.KtMingmingController.remove()', 'POST', 1, 'admin', '研发部门', '/wj_mingming/wj_mingming/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"2\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-09 21:57:07', 8);

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '岗位信息表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'ceo', '董事长', 1, '0', 'admin', '2023-03-02 10:08:02', '', NULL, '');
INSERT INTO `sys_post` VALUES (2, 'se', '项目经理', 2, '0', 'admin', '2023-03-02 10:08:02', '', NULL, '');
INSERT INTO `sys_post` VALUES (3, 'hr', '人力资源', 3, '0', 'admin', '2023-03-02 10:08:02', '', NULL, '');
INSERT INTO `sys_post` VALUES (4, 'user', '普通员工', 4, '0', 'admin', '2023-03-02 10:08:02', '', NULL, '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色信息表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'admin', 1, '1', '0', '0', 'admin', '2023-03-02 10:08:02', '', NULL, '超级管理员');
INSERT INTO `sys_role` VALUES (2, '普通角色', 'common', 2, '2', '0', '0', 'admin', '2023-03-02 10:08:02', 'admin', '2023-03-05 21:01:08', '普通角色');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色和部门关联表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES (2, 100);
INSERT INTO `sys_role_dept` VALUES (2, 101);
INSERT INTO `sys_role_dept` VALUES (2, 105);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (2, 1);
INSERT INTO `sys_role_menu` VALUES (2, 2);
INSERT INTO `sys_role_menu` VALUES (2, 3);
INSERT INTO `sys_role_menu` VALUES (2, 4);
INSERT INTO `sys_role_menu` VALUES (2, 100);
INSERT INTO `sys_role_menu` VALUES (2, 101);
INSERT INTO `sys_role_menu` VALUES (2, 102);
INSERT INTO `sys_role_menu` VALUES (2, 103);
INSERT INTO `sys_role_menu` VALUES (2, 104);
INSERT INTO `sys_role_menu` VALUES (2, 105);
INSERT INTO `sys_role_menu` VALUES (2, 106);
INSERT INTO `sys_role_menu` VALUES (2, 107);
INSERT INTO `sys_role_menu` VALUES (2, 108);
INSERT INTO `sys_role_menu` VALUES (2, 109);
INSERT INTO `sys_role_menu` VALUES (2, 110);
INSERT INTO `sys_role_menu` VALUES (2, 111);
INSERT INTO `sys_role_menu` VALUES (2, 112);
INSERT INTO `sys_role_menu` VALUES (2, 113);
INSERT INTO `sys_role_menu` VALUES (2, 114);
INSERT INTO `sys_role_menu` VALUES (2, 115);
INSERT INTO `sys_role_menu` VALUES (2, 116);
INSERT INTO `sys_role_menu` VALUES (2, 500);
INSERT INTO `sys_role_menu` VALUES (2, 501);
INSERT INTO `sys_role_menu` VALUES (2, 1000);
INSERT INTO `sys_role_menu` VALUES (2, 1001);
INSERT INTO `sys_role_menu` VALUES (2, 1002);
INSERT INTO `sys_role_menu` VALUES (2, 1003);
INSERT INTO `sys_role_menu` VALUES (2, 1004);
INSERT INTO `sys_role_menu` VALUES (2, 1005);
INSERT INTO `sys_role_menu` VALUES (2, 1006);
INSERT INTO `sys_role_menu` VALUES (2, 1007);
INSERT INTO `sys_role_menu` VALUES (2, 1008);
INSERT INTO `sys_role_menu` VALUES (2, 1009);
INSERT INTO `sys_role_menu` VALUES (2, 1010);
INSERT INTO `sys_role_menu` VALUES (2, 1011);
INSERT INTO `sys_role_menu` VALUES (2, 1012);
INSERT INTO `sys_role_menu` VALUES (2, 1013);
INSERT INTO `sys_role_menu` VALUES (2, 1014);
INSERT INTO `sys_role_menu` VALUES (2, 1015);
INSERT INTO `sys_role_menu` VALUES (2, 1016);
INSERT INTO `sys_role_menu` VALUES (2, 1017);
INSERT INTO `sys_role_menu` VALUES (2, 1018);
INSERT INTO `sys_role_menu` VALUES (2, 1019);
INSERT INTO `sys_role_menu` VALUES (2, 1020);
INSERT INTO `sys_role_menu` VALUES (2, 1021);
INSERT INTO `sys_role_menu` VALUES (2, 1022);
INSERT INTO `sys_role_menu` VALUES (2, 1023);
INSERT INTO `sys_role_menu` VALUES (2, 1024);
INSERT INTO `sys_role_menu` VALUES (2, 1025);
INSERT INTO `sys_role_menu` VALUES (2, 1026);
INSERT INTO `sys_role_menu` VALUES (2, 1027);
INSERT INTO `sys_role_menu` VALUES (2, 1028);
INSERT INTO `sys_role_menu` VALUES (2, 1029);
INSERT INTO `sys_role_menu` VALUES (2, 1030);
INSERT INTO `sys_role_menu` VALUES (2, 1031);
INSERT INTO `sys_role_menu` VALUES (2, 1032);
INSERT INTO `sys_role_menu` VALUES (2, 1033);
INSERT INTO `sys_role_menu` VALUES (2, 1034);
INSERT INTO `sys_role_menu` VALUES (2, 1035);
INSERT INTO `sys_role_menu` VALUES (2, 1036);
INSERT INTO `sys_role_menu` VALUES (2, 1037);
INSERT INTO `sys_role_menu` VALUES (2, 1038);
INSERT INTO `sys_role_menu` VALUES (2, 1039);
INSERT INTO `sys_role_menu` VALUES (2, 1040);
INSERT INTO `sys_role_menu` VALUES (2, 1041);
INSERT INTO `sys_role_menu` VALUES (2, 1042);
INSERT INTO `sys_role_menu` VALUES (2, 1043);
INSERT INTO `sys_role_menu` VALUES (2, 1044);
INSERT INTO `sys_role_menu` VALUES (2, 1045);
INSERT INTO `sys_role_menu` VALUES (2, 1046);
INSERT INTO `sys_role_menu` VALUES (2, 1047);
INSERT INTO `sys_role_menu` VALUES (2, 1048);
INSERT INTO `sys_role_menu` VALUES (2, 1049);
INSERT INTO `sys_role_menu` VALUES (2, 1050);
INSERT INTO `sys_role_menu` VALUES (2, 1051);
INSERT INTO `sys_role_menu` VALUES (2, 1052);
INSERT INTO `sys_role_menu` VALUES (2, 1053);
INSERT INTO `sys_role_menu` VALUES (2, 1054);
INSERT INTO `sys_role_menu` VALUES (2, 1055);
INSERT INTO `sys_role_menu` VALUES (2, 1056);
INSERT INTO `sys_role_menu` VALUES (2, 1057);
INSERT INTO `sys_role_menu` VALUES (2, 1058);
INSERT INTO `sys_role_menu` VALUES (2, 1059);
INSERT INTO `sys_role_menu` VALUES (2, 1060);
INSERT INTO `sys_role_menu` VALUES (2, 1061);
INSERT INTO `sys_role_menu` VALUES (2, 2001);
INSERT INTO `sys_role_menu` VALUES (2, 2002);
INSERT INTO `sys_role_menu` VALUES (2, 2003);
INSERT INTO `sys_role_menu` VALUES (2, 2004);
INSERT INTO `sys_role_menu` VALUES (2, 2005);
INSERT INTO `sys_role_menu` VALUES (2, 2007);
INSERT INTO `sys_role_menu` VALUES (2, 2008);
INSERT INTO `sys_role_menu` VALUES (2, 2009);
INSERT INTO `sys_role_menu` VALUES (2, 2010);
INSERT INTO `sys_role_menu` VALUES (2, 2011);
INSERT INTO `sys_role_menu` VALUES (2, 2012);
INSERT INTO `sys_role_menu` VALUES (2, 2025);
INSERT INTO `sys_role_menu` VALUES (2, 2026);
INSERT INTO `sys_role_menu` VALUES (2, 2027);
INSERT INTO `sys_role_menu` VALUES (2, 2028);
INSERT INTO `sys_role_menu` VALUES (2, 2029);
INSERT INTO `sys_role_menu` VALUES (2, 2030);
INSERT INTO `sys_role_menu` VALUES (2, 2031);
INSERT INTO `sys_role_menu` VALUES (2, 2032);
INSERT INTO `sys_role_menu` VALUES (2, 2033);
INSERT INTO `sys_role_menu` VALUES (2, 2034);
INSERT INTO `sys_role_menu` VALUES (2, 2035);
INSERT INTO `sys_role_menu` VALUES (2, 2036);
INSERT INTO `sys_role_menu` VALUES (2, 2043);
INSERT INTO `sys_role_menu` VALUES (2, 2044);
INSERT INTO `sys_role_menu` VALUES (2, 2045);
INSERT INTO `sys_role_menu` VALUES (2, 2046);
INSERT INTO `sys_role_menu` VALUES (2, 2047);
INSERT INTO `sys_role_menu` VALUES (2, 2048);
INSERT INTO `sys_role_menu` VALUES (2, 2049);
INSERT INTO `sys_role_menu` VALUES (2, 2050);
INSERT INTO `sys_role_menu` VALUES (2, 2051);
INSERT INTO `sys_role_menu` VALUES (2, 2052);
INSERT INTO `sys_role_menu` VALUES (2, 2053);
INSERT INTO `sys_role_menu` VALUES (2, 2054);
INSERT INTO `sys_role_menu` VALUES (2, 2055);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) NULL DEFAULT NULL COMMENT '部门ID',
  `login_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '登录账号',
  `user_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '00' COMMENT '用户类型（00系统用户 01注册用户）',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '头像路径',
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '密码',
  `salt` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '盐加密',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime NULL DEFAULT NULL COMMENT '最后登录时间',
  `pwd_update_date` datetime NULL DEFAULT NULL COMMENT '密码最后更新时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户信息表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 103, 'admin', 'adminl', '00', 'ry@163.com', '15888888888', '1', '/profile/avatar/2023/03/10/blob_20230310111225A001.png', '29c67a30398638269fe600f73a054934', '111111', '0', '0', '127.0.0.1', '2024-03-10 09:28:17', '2023-03-02 10:08:02', 'admin', '2023-03-02 10:08:02', '', '2024-03-10 09:28:18', '管理员');
INSERT INTO `sys_user` VALUES (2, 105, 'ry', '张三', '00', 'ry@qq.com', '15666666666', '1', '', '8e6d98b90472783cc73c17047ddccf36', '222222', '0', '0', '127.0.0.1', '2023-03-02 10:08:02', '2023-03-02 10:08:02', 'admin', '2023-03-02 10:08:02', '', NULL, '测试员');
INSERT INTO `sys_user` VALUES (100, NULL, '12', 'adminl', '00', '', '', '0', '', '3c0960b385542bbf131fd1c97b1e17fd', 'be0d8d', '0', '0', '', NULL, NULL, 'admin', '2023-03-02 14:36:32', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_user_online
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_online`;
CREATE TABLE `sys_user_online`  (
  `sessionId` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户会话id',
  `login_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '登录账号',
  `dept_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `ipaddr` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '在线状态on_line在线off_line离线',
  `start_timestamp` datetime NULL DEFAULT NULL COMMENT 'session创建时间',
  `last_access_time` datetime NULL DEFAULT NULL COMMENT 'session最后访问时间',
  `expire_time` int(5) NULL DEFAULT 0 COMMENT '超时时间，单位为分钟',
  PRIMARY KEY (`sessionId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '在线用户记录' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_user_online
-- ----------------------------

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户与岗位关联表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES (1, 1);
INSERT INTO `sys_user_post` VALUES (2, 2);
INSERT INTO `sys_user_post` VALUES (100, 4);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户和角色关联表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (2, 2);

SET FOREIGN_KEY_CHECKS = 1;
