/*
 Navicat Premium Data Transfer

 Source Server         : 10th-KSHRD-Registration
 Source Server Type    : PostgreSQL
 Source Server Version : 140003
 Source Host           : localhost:5432
 Source Catalog        : 10th-kshrd-registration
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 140003
 File Encoding         : 65001

 Date: 14/06/2022 23:59:45
*/


-- ----------------------------
-- Sequence structure for app_user_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."app_user_id_seq";
CREATE SEQUENCE "public"."app_user_id_seq"
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."app_user_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for app_user_id_seq1
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."app_user_id_seq1";
CREATE SEQUENCE "public"."app_user_id_seq1"
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."app_user_id_seq1" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for education_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."education_id_seq";
CREATE SEQUENCE "public"."education_id_seq"
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."education_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for education_id_seq1
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."education_id_seq1";
CREATE SEQUENCE "public"."education_id_seq1"
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."education_id_seq1" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for exam_result_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."exam_result_id_seq";
CREATE SEQUENCE "public"."exam_result_id_seq"
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."exam_result_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for exam_result_id_seq1
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."exam_result_id_seq1";
CREATE SEQUENCE "public"."exam_result_id_seq1"
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."exam_result_id_seq1" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for generation_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."generation_id_seq";
CREATE SEQUENCE "public"."generation_id_seq"
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."generation_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for generation_id_seq1
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."generation_id_seq1";
CREATE SEQUENCE "public"."generation_id_seq1"
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."generation_id_seq1" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for information_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."information_id_seq";
CREATE SEQUENCE "public"."information_id_seq"
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."information_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for information_id_seq1
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."information_id_seq1";
CREATE SEQUENCE "public"."information_id_seq1"
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."information_id_seq1" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for province_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."province_id_seq";
CREATE SEQUENCE "public"."province_id_seq"
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."province_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for province_id_seq1
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."province_id_seq1";
CREATE SEQUENCE "public"."province_id_seq1"
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."province_id_seq1" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for relative_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."relative_id_seq";
CREATE SEQUENCE "public"."relative_id_seq"
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."relative_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for relative_id_seq1
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."relative_id_seq1";
CREATE SEQUENCE "public"."relative_id_seq1"
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."relative_id_seq1" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for role_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."role_id_seq";
CREATE SEQUENCE "public"."role_id_seq"
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."role_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for role_id_seq1
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."role_id_seq1";
CREATE SEQUENCE "public"."role_id_seq1"
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."role_id_seq1" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for university_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."university_id_seq";
CREATE SEQUENCE "public"."university_id_seq"
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."university_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for university_id_seq1
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."university_id_seq1";
CREATE SEQUENCE "public"."university_id_seq1"
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."university_id_seq1" OWNER TO "postgres";

-- ----------------------------
-- Table structure for app_user
-- ----------------------------
DROP TABLE IF EXISTS "public"."app_user";
CREATE TABLE "public"."app_user" (
  "id" int4 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1
),
  "fullname" varchar(255) COLLATE "pg_catalog"."default",
  "email" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "password" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "national_card" varchar(255) COLLATE "pg_catalog"."default",
  "pob_id" int4,
  "phone" varchar(255) COLLATE "pg_catalog"."default",
  "emergency_phone" varchar(255) COLLATE "pg_catalog"."default",
  "education_id" int4,
  "gender" varchar(255) COLLATE "pg_catalog"."default",
  "dob" timestamp(6),
  "address_id" int4,
  "relative_id" int4,
  "university_id" int4,
  "reference_url" varchar(255) COLLATE "pg_catalog"."default",
  "create_date" timestamp(6) DEFAULT now(),
  "status" bool DEFAULT false,
  "photo_url" varchar(255) COLLATE "pg_catalog"."default",
  "generation_id" int4,
  "token" varchar(255) COLLATE "pg_catalog"."default",
  "is_donated" bool DEFAULT false
)
;
ALTER TABLE "public"."app_user" OWNER TO "postgres";

-- ----------------------------
-- Table structure for education
-- ----------------------------
DROP TABLE IF EXISTS "public"."education";
CREATE TABLE "public"."education" (
  "id" int4 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1
),
  "description" varchar(255) COLLATE "pg_catalog"."default",
  "status" bool DEFAULT true
)
;
ALTER TABLE "public"."education" OWNER TO "postgres";

-- ----------------------------
-- Table structure for exam_result
-- ----------------------------
DROP TABLE IF EXISTS "public"."exam_result";
CREATE TABLE "public"."exam_result" (
  "id" int4 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1
),
  "title" varchar(255) COLLATE "pg_catalog"."default",
  "description" varchar(255) COLLATE "pg_catalog"."default",
  "create_date" timestamp(6) DEFAULT now(),
  "result_url" varchar[] COLLATE "pg_catalog"."default",
  "status" bool DEFAULT true,
  "generation_id" int4,
  "user_id" int4
)
;
ALTER TABLE "public"."exam_result" OWNER TO "postgres";

-- ----------------------------
-- Table structure for generation
-- ----------------------------
DROP TABLE IF EXISTS "public"."generation";
CREATE TABLE "public"."generation" (
  "id" int4 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1
),
  "name" varchar(255) COLLATE "pg_catalog"."default",
  "status" bool DEFAULT false,
  "start_date" timestamp(6),
  "end_date" timestamp(6),
  "delay_day" int4 DEFAULT 0,
  "description" varchar(255) COLLATE "pg_catalog"."default",
  "exam_url" varchar[] COLLATE "pg_catalog"."default",
  "timeline_url" varchar(255) COLLATE "pg_catalog"."default"
)
;
ALTER TABLE "public"."generation" OWNER TO "postgres";

-- ----------------------------
-- Table structure for information
-- ----------------------------
DROP TABLE IF EXISTS "public"."information";
CREATE TABLE "public"."information" (
  "id" int4 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1
),
  "title" varchar(255) COLLATE "pg_catalog"."default",
  "description" varchar(255) COLLATE "pg_catalog"."default",
  "post_url" varchar[] COLLATE "pg_catalog"."default",
  "create_date" timestamp(6) DEFAULT now(),
  "status" bool DEFAULT true,
  "user_id" int4,
  "generation_id" int4
)
;
ALTER TABLE "public"."information" OWNER TO "postgres";

-- ----------------------------
-- Table structure for province
-- ----------------------------
DROP TABLE IF EXISTS "public"."province";
CREATE TABLE "public"."province" (
  "id" int4 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1
),
  "name" varchar(255) COLLATE "pg_catalog"."default",
  "status" bool DEFAULT true
)
;
ALTER TABLE "public"."province" OWNER TO "postgres";

-- ----------------------------
-- Table structure for relative
-- ----------------------------
DROP TABLE IF EXISTS "public"."relative";
CREATE TABLE "public"."relative" (
  "id" int4 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1
),
  "description" varchar(255) COLLATE "pg_catalog"."default",
  "status" bool DEFAULT true
)
;
ALTER TABLE "public"."relative" OWNER TO "postgres";

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS "public"."role";
CREATE TABLE "public"."role" (
  "id" int4 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1
),
  "name" varchar(255) COLLATE "pg_catalog"."default",
  "status" bool DEFAULT true
)
;
ALTER TABLE "public"."role" OWNER TO "postgres";

-- ----------------------------
-- Table structure for university
-- ----------------------------
DROP TABLE IF EXISTS "public"."university";
CREATE TABLE "public"."university" (
  "id" int4 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1
),
  "name" varchar(255) COLLATE "pg_catalog"."default",
  "status" bool DEFAULT true
)
;
ALTER TABLE "public"."university" OWNER TO "postgres";

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS "public"."user_role";
CREATE TABLE "public"."user_role" (
  "user_id" int4 NOT NULL,
  "role_id" int4 NOT NULL
)
;
ALTER TABLE "public"."user_role" OWNER TO "postgres";

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."app_user_id_seq"
OWNED BY "public"."app_user"."id";
SELECT setval('"public"."app_user_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."app_user_id_seq1"
OWNED BY "public"."app_user"."id";
SELECT setval('"public"."app_user_id_seq1"', 4, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."education_id_seq"
OWNED BY "public"."education"."id";
SELECT setval('"public"."education_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."education_id_seq1"
OWNED BY "public"."education"."id";
SELECT setval('"public"."education_id_seq1"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."exam_result_id_seq"
OWNED BY "public"."exam_result"."id";
SELECT setval('"public"."exam_result_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."exam_result_id_seq1"
OWNED BY "public"."exam_result"."id";
SELECT setval('"public"."exam_result_id_seq1"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."generation_id_seq"
OWNED BY "public"."generation"."id";
SELECT setval('"public"."generation_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."generation_id_seq1"
OWNED BY "public"."generation"."id";
SELECT setval('"public"."generation_id_seq1"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."information_id_seq"
OWNED BY "public"."information"."id";
SELECT setval('"public"."information_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."information_id_seq1"
OWNED BY "public"."information"."id";
SELECT setval('"public"."information_id_seq1"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."province_id_seq"
OWNED BY "public"."province"."id";
SELECT setval('"public"."province_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."province_id_seq1"
OWNED BY "public"."province"."id";
SELECT setval('"public"."province_id_seq1"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."relative_id_seq"
OWNED BY "public"."relative"."id";
SELECT setval('"public"."relative_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."relative_id_seq1"
OWNED BY "public"."relative"."id";
SELECT setval('"public"."relative_id_seq1"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."role_id_seq"
OWNED BY "public"."role"."id";
SELECT setval('"public"."role_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."role_id_seq1"
OWNED BY "public"."role"."id";
SELECT setval('"public"."role_id_seq1"', 2, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."university_id_seq"
OWNED BY "public"."university"."id";
SELECT setval('"public"."university_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."university_id_seq1"
OWNED BY "public"."university"."id";
SELECT setval('"public"."university_id_seq1"', 1, false);

-- ----------------------------
-- Uniques structure for table app_user
-- ----------------------------
ALTER TABLE "public"."app_user" ADD CONSTRAINT "email_unique" UNIQUE ("email");

-- ----------------------------
-- Primary Key structure for table app_user
-- ----------------------------
ALTER TABLE "public"."app_user" ADD CONSTRAINT "app_user_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table education
-- ----------------------------
ALTER TABLE "public"."education" ADD CONSTRAINT "description_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table exam_result
-- ----------------------------
ALTER TABLE "public"."exam_result" ADD CONSTRAINT "exam_result_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table generation
-- ----------------------------
ALTER TABLE "public"."generation" ADD CONSTRAINT "generation_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table information
-- ----------------------------
ALTER TABLE "public"."information" ADD CONSTRAINT "information_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table province
-- ----------------------------
ALTER TABLE "public"."province" ADD CONSTRAINT "province_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table relative
-- ----------------------------
ALTER TABLE "public"."relative" ADD CONSTRAINT "relative_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table role
-- ----------------------------
ALTER TABLE "public"."role" ADD CONSTRAINT "role_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table university
-- ----------------------------
ALTER TABLE "public"."university" ADD CONSTRAINT "university_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table user_role
-- ----------------------------
ALTER TABLE "public"."user_role" ADD CONSTRAINT "user_role_pkey" PRIMARY KEY ("user_id", "role_id");

-- ----------------------------
-- Foreign Keys structure for table app_user
-- ----------------------------
ALTER TABLE "public"."app_user" ADD CONSTRAINT "address_user_fk" FOREIGN KEY ("address_id") REFERENCES "public"."province" ("id") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."app_user" ADD CONSTRAINT "education_user_fk" FOREIGN KEY ("education_id") REFERENCES "public"."education" ("id") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."app_user" ADD CONSTRAINT "generation_user_fk" FOREIGN KEY ("generation_id") REFERENCES "public"."generation" ("id") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."app_user" ADD CONSTRAINT "pob_user_fk" FOREIGN KEY ("pob_id") REFERENCES "public"."province" ("id") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."app_user" ADD CONSTRAINT "relatiive_user_fk" FOREIGN KEY ("relative_id") REFERENCES "public"."relative" ("id") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."app_user" ADD CONSTRAINT "university_user_fk" FOREIGN KEY ("university_id") REFERENCES "public"."university" ("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Keys structure for table exam_result
-- ----------------------------
ALTER TABLE "public"."exam_result" ADD CONSTRAINT "result_gen_fk" FOREIGN KEY ("generation_id") REFERENCES "public"."generation" ("id") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."exam_result" ADD CONSTRAINT "result_user_fk" FOREIGN KEY ("user_id") REFERENCES "public"."app_user" ("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Keys structure for table information
-- ----------------------------
ALTER TABLE "public"."information" ADD CONSTRAINT "gen_info_fk" FOREIGN KEY ("generation_id") REFERENCES "public"."generation" ("id") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."information" ADD CONSTRAINT "user_info_fk" FOREIGN KEY ("user_id") REFERENCES "public"."app_user" ("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Keys structure for table user_role
-- ----------------------------
ALTER TABLE "public"."user_role" ADD CONSTRAINT "role_fk" FOREIGN KEY ("role_id") REFERENCES "public"."role" ("id") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."user_role" ADD CONSTRAINT "user_fk" FOREIGN KEY ("user_id") REFERENCES "public"."app_user" ("id") ON DELETE CASCADE ON UPDATE CASCADE;


-- ADD TWO DEFAULT ROLE <ADMIN> & <USER>
INSERT INTO "public"."role" ("id", "name", "status") VALUES (1, 'ADMIN', 't');
INSERT INTO "public"."role" ("id", "name", "status") VALUES (2, 'USER', 't');


