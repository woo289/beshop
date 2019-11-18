--------------------------------------------------------
--  파일이 생성됨 - 월요일-11월-18-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table AUCTION
--------------------------------------------------------

  CREATE TABLE "AUCTION" 
   (	"ANUM" NUMBER, 
	"BEUID" VARCHAR2(30 BYTE), 
	"PRICE" NUMBER, 
	"DAY" DATE, 
	"CNT" NUMBER, 
	"ENDDAY" DATE
   ) ;
--------------------------------------------------------
--  DDL for Table BE_USER
--------------------------------------------------------

  CREATE TABLE "BE_USER" 
   (	"BEUID" VARCHAR2(20 BYTE), 
	"UPW" VARCHAR2(20 BYTE), 
	"SEX" VARCHAR2(20 BYTE), 
	"BIRTH" VARCHAR2(10 BYTE), 
	"UNAME" VARCHAR2(30 BYTE), 
	"LOGINLOG" TIMESTAMP (6), 
	"ADDR1" VARCHAR2(100 BYTE), 
	"ADDR2" VARCHAR2(100 BYTE), 
	"UPHONE" VARCHAR2(11 BYTE), 
	"EMAIL" VARCHAR2(25 BYTE), 
	"JOINDATE" DATE, 
	"PF1" VARCHAR2(20 BYTE), 
	"PF2" VARCHAR2(20 BYTE), 
	"PF3" VARCHAR2(20 BYTE), 
	"SNSID" VARCHAR2(50 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table CATEGORY
--------------------------------------------------------

  CREATE TABLE "CATEGORY" 
   (	"CTNUM" NUMBER, 
	"BIGNAME" VARCHAR2(100 BYTE), 
	"SMNAME" VARCHAR2(100 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table CHANNEL
--------------------------------------------------------

  CREATE TABLE "CHANNEL" 
   (	"CH_NAME" VARCHAR2(50 BYTE), 
	"CH_IMG" VARCHAR2(100 BYTE), 
	"BEUID" VARCHAR2(50 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table DELIVERYCOM
--------------------------------------------------------

  CREATE TABLE "DELIVERYCOM" 
   (	"DCNUM" NUMBER, 
	"LICENSENUM" NUMBER, 
	"DCNAME" VARCHAR2(50 BYTE), 
	"DCPHONE" NUMBER, 
	"DCADDR" VARCHAR2(100 BYTE), 
	"DCHARGE" NUMBER, 
	"DNUM" VARCHAR2(30 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table EVENT
--------------------------------------------------------

  CREATE TABLE "EVENT" 
   (	"ENUM" NUMBER, 
	"ENAME" VARCHAR2(200 BYTE), 
	"EDATE" DATE, 
	"E_IMAGE" VARCHAR2(100 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table GBUY
--------------------------------------------------------

  CREATE TABLE "GBUY" 
   (	"PNUM" NUMBER, 
	"GNUM" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table ORDERDELIVERY
--------------------------------------------------------

  CREATE TABLE "ORDERDELIVERY" 
   (	"ONUM" NUMBER, 
	"BEUID" VARCHAR2(20 BYTE), 
	"PNUM" NUMBER, 
	"DCNUM" NUMBER, 
	"ONAME" VARCHAR2(100 BYTE), 
	"OCOUNT" NUMBER, 
	"OPRICE" NUMBER, 
	"OADDR1" VARCHAR2(100 BYTE), 
	"OADDR2" VARCHAR2(100 BYTE), 
	"OPHONE" VARCHAR2(15 BYTE), 
	"ODZIP" CHAR(5 BYTE), 
	"ODATE" DATE, 
	"DPRICE" NUMBER, 
	"DSTATUS" VARCHAR2(50 BYTE) DEFAULT '배송준비중', 
	"OMEMO" VARCHAR2(100 BYTE), 
	"RECEIVENAME" VARCHAR2(10 BYTE), 
	"PAYMETHOD" VARCHAR2(20 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table PAY
--------------------------------------------------------

  CREATE TABLE "PAY" 
   (	"PAYNUM" NUMBER, 
	"PAYWAY" VARCHAR2(40 BYTE), 
	"PAYCONDITION" VARCHAR2(50 BYTE), 
	"PAYDATE" DATE, 
	"PAYPRICE" NUMBER, 
	"PNUM" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table PBALANCE
--------------------------------------------------------

  CREATE TABLE "PBALANCE" 
   (	"BALANCENUM" NUMBER, 
	"CHARGENUM" NUMBER, 
	"PAYNUM" NUMBER, 
	"PBALNOW" NUMBER, 
	"BEUID" VARCHAR2(20 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table PCHARGE
--------------------------------------------------------

  CREATE TABLE "PCHARGE" 
   (	"CHARGENUM" NUMBER, 
	"BEUID" VARCHAR2(20 BYTE), 
	"CHARGEDATE" DATE, 
	"CHARGELIST" NUMBER, 
	"CHARGEMETHOD" VARCHAR2(20 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table PGROUP
--------------------------------------------------------

  CREATE TABLE "PGROUP" 
   (	"GNUM" NUMBER, 
	"PNUM" NUMBER, 
	"PG" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table POINT
--------------------------------------------------------

  CREATE TABLE "POINT" 
   (	"POINTPURNUM" NUMBER, 
	"BEUID" VARCHAR2(20 BYTE), 
	"POINTBALANCE" NUMBER, 
	"CHANGEMETHOD" VARCHAR2(20 BYTE), 
	"CHANGEDATE" DATE, 
	"POINTDETAILS" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table POINTHIT
--------------------------------------------------------

  CREATE TABLE "POINTHIT" 
   (	"BEUID" VARCHAR2(20 BYTE), 
	"POINTPURNUM" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table PPAY
--------------------------------------------------------

  CREATE TABLE "PPAY" 
   (	"PAYNUM" NUMBER, 
	"BEUID" VARCHAR2(20 BYTE), 
	"PAYDATE" DATE, 
	"PAYLIST" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table PRODUCT
--------------------------------------------------------

  CREATE TABLE "PRODUCT" 
   (	"PNUM" NUMBER, 
	"CTNUM" NUMBER, 
	"P_DATE" DATE, 
	"AS_INFO" VARCHAR2(100 BYTE), 
	"P_CDATE" DATE, 
	"PNAME" VARCHAR2(100 BYTE), 
	"DETAIL" VARCHAR2(500 BYTE), 
	"STOCK" NUMBER, 
	"P_CATEGORY" VARCHAR2(50 BYTE), 
	"P_VIDEO" VARCHAR2(100 BYTE), 
	"P_SANGSE" VARCHAR2(100 BYTE), 
	"OPTION1" VARCHAR2(30 BYTE), 
	"SELECT_OP1" VARCHAR2(100 BYTE), 
	"OPTION2" VARCHAR2(30 BYTE), 
	"SELECT_OP2" VARCHAR2(100 BYTE), 
	"OPTION3" VARCHAR2(30 BYTE), 
	"SELECT_OP3" VARCHAR2(100 BYTE), 
	"LIKES" NUMBER, 
	"HITS" NUMBER, 
	"P_PRICE" NUMBER, 
	"ORIGIN" VARCHAR2(100 BYTE), 
	"P_SPRICE" NUMBER, 
	"AUCTION" CHAR(2 BYTE), 
	"BEUID" VARCHAR2(40 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table PURCHASE
--------------------------------------------------------

  CREATE TABLE "PURCHASE" 
   (	"PCNUM" NUMBER, 
	"PNUM" NUMBER, 
	"PC_COUNT" NUMBER, 
	"PC_PRICE" NUMBER, 
	"PC_PHONE" VARCHAR2(15 BYTE), 
	"ZIPCODE" CHAR(5 BYTE), 
	"PC_ADDR1" VARCHAR2(100 BYTE), 
	"PC_ADDR2" VARCHAR2(100 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table QNA
--------------------------------------------------------

  CREATE TABLE "QNA" 
   (	"QNANUM" NUMBER, 
	"QNA_TITLE" VARCHAR2(50 BYTE), 
	"QNA_CON" VARCHAR2(500 BYTE), 
	"QNA_ANSWER" VARCHAR2(500 BYTE), 
	"BEUID" VARCHAR2(20 BYTE), 
	"PNUM" NUMBER, 
	"ANSWER_TIME" DATE, 
	"REGIST_DATE" DATE, 
	"QNA_CATEGORY" NUMBER(20,0), 
	"QNA_EMAIL" VARCHAR2(30 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table REVIEW
--------------------------------------------------------

  CREATE TABLE "REVIEW" 
   (	"RENUM" NUMBER, 
	"BEUID" VARCHAR2(20 BYTE), 
	"PNUM" NUMBER, 
	"RETITLE" VARCHAR2(100 BYTE), 
	"REGRADE" NUMBER, 
	"RE_HITS" NUMBER, 
	"REDATE" DATE, 
	"RE_CON" VARCHAR2(500 BYTE), 
	"RE_ANSWER" VARCHAR2(500 BYTE), 
	"RE_REF" NUMBER, 
	"RE_REFNO" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table SELLER
--------------------------------------------------------

  CREATE TABLE "SELLER" 
   (	"SNUM" NUMBER, 
	"BEUID" VARCHAR2(20 BYTE), 
	"PNUM" NUMBER, 
	"SUNUM" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table SHOPLIST
--------------------------------------------------------

  CREATE TABLE "SHOPLIST" 
   (	"SLNUM" NUMBER, 
	"PNUM" NUMBER, 
	"SLCOUNT" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table SUB
--------------------------------------------------------

  CREATE TABLE "SUB" 
   (	"BEUID" VARCHAR2(40 BYTE), 
	"SBEUID" VARCHAR2(40 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table USERGRADE
--------------------------------------------------------

  CREATE TABLE "USERGRADE" 
   (	"GRADENUM" NUMBER, 
	"GRADE" VARCHAR2(20 BYTE), 
	"GBENEFIT" VARCHAR2(100 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table VIDEO
--------------------------------------------------------

  CREATE TABLE "VIDEO" 
   (	"VNUM" NUMBER, 
	"VNAME" VARCHAR2(100 BYTE), 
	"VFILE" VARCHAR2(100 BYTE), 
	"VUPDATE" DATE, 
	"PNUM" NUMBER, 
	"BEUID" VARCHAR2(20 BYTE), 
	"SNUM" NUMBER, 
	"FORMNUM" NUMBER, 
	"FORMDATE" DATE, 
	"VTIME" TIMESTAMP (6), 
	"VTAG" VARCHAR2(50 BYTE)
   ) ;
REM INSERTING into AUCTION
SET DEFINE OFF;
Insert into AUCTION (ANUM,BEUID,PRICE,DAY,CNT,ENDDAY) values (1,'gofl854',16000,to_date('19/11/17 17:49','RR/MM/DD HH24:MI'),1,to_date('19/11/18 17:49','RR/MM/DD HH24:MI'));
Insert into AUCTION (ANUM,BEUID,PRICE,DAY,CNT,ENDDAY) values (2,'gofl854',16500,to_date('19/11/17 17:53','RR/MM/DD HH24:MI'),2,to_date('19/11/18 17:53','RR/MM/DD HH24:MI'));
REM INSERTING into BE_USER
SET DEFINE OFF;
Insert into BE_USER (BEUID,UPW,SEX,BIRTH,UNAME,LOGINLOG,ADDR1,ADDR2,UPHONE,EMAIL,JOINDATE,PF1,PF2,PF3,SNSID) values ('goflrhdwn1','gofl1234','여자','1995624','김해리',to_timestamp('19/11/01 15:33:04.000000000','RR/MM/DD HH24:MI:SSXFF'),null,null,'01033033112','goflrhdwn1@hanmail.net',to_date('19/11/01 15:33','RR/MM/DD HH24:MI'),'computer','fashion','hobby/phrases',null);
Insert into BE_USER (BEUID,UPW,SEX,BIRTH,UNAME,LOGINLOG,ADDR1,ADDR2,UPHONE,EMAIL,JOINDATE,PF1,PF2,PF3,SNSID) values ('goflrhdwn2','gofl1234','남자','201911','이재우',to_timestamp('19/11/13 20:01:06.000000000','RR/MM/DD HH24:MI:SSXFF'),null,null,'01033033315','goflrhdwn1@google.com',to_date('19/11/13 20:01','RR/MM/DD HH24:MI'),'fashion','stuff/beauty','stuff/beauty',null);
Insert into BE_USER (BEUID,UPW,SEX,BIRTH,UNAME,LOGINLOG,ADDR1,ADDR2,UPHONE,EMAIL,JOINDATE,PF1,PF2,PF3,SNSID) values ('juoing','123123','남자','19891011','이재우',to_timestamp('19/11/17 18:13:36.000000000','RR/MM/DD HH24:MI:SSXFF'),null,null,'01087966399','rhddbgkqtlek@naver.com',to_date('19/11/17 18:13','RR/MM/DD HH24:MI'),'sports','stuff/beauty','fashion','1216002258');
Insert into BE_USER (BEUID,UPW,SEX,BIRTH,UNAME,LOGINLOG,ADDR1,ADDR2,UPHONE,EMAIL,JOINDATE,PF1,PF2,PF3,SNSID) values ('tjrwlsgur5','TJRWLSGUR','남자','1995217','석진혁',to_timestamp('19/11/13 18:31:17.000000000','RR/MM/DD HH24:MI:SSXFF'),null,null,'01049140974','tjrwlsgur4@naver.com',to_date('19/11/13 18:31','RR/MM/DD HH24:MI'),'선택하세요','선택하세요','선택하세요','석진혁');
Insert into BE_USER (BEUID,UPW,SEX,BIRTH,UNAME,LOGINLOG,ADDR1,ADDR2,UPHONE,EMAIL,JOINDATE,PF1,PF2,PF3,SNSID) values ('godkkoo','rktRN1234','남자','201911','천석훈',to_timestamp('19/11/04 17:39:48.000000000','RR/MM/DD HH24:MI:SSXFF'),null,null,'01033033112','godkkoo@gmail.com',to_date('19/11/04 17:39','RR/MM/DD HH24:MI'),'stuff/beauty','stuff/beauty','child',null);
Insert into BE_USER (BEUID,UPW,SEX,BIRTH,UNAME,LOGINLOG,ADDR1,ADDR2,UPHONE,EMAIL,JOINDATE,PF1,PF2,PF3,SNSID) values ('gofl854','gofl1234','여자','201911','김해리',to_timestamp('19/11/13 10:48:44.000000000','RR/MM/DD HH24:MI:SSXFF'),null,null,'01033033112','gofl854@naver.com',to_date('19/11/13 10:48','RR/MM/DD HH24:MI'),'stuff/beauty','child','fashion','1212532362');
Insert into BE_USER (BEUID,UPW,SEX,BIRTH,UNAME,LOGINLOG,ADDR1,ADDR2,UPHONE,EMAIL,JOINDATE,PF1,PF2,PF3,SNSID) values ('goflrhdwn','gofl1234','여자','1995624','김해리',to_timestamp('19/11/18 12:52:19.000000000','RR/MM/DD HH24:MI:SSXFF'),null,null,'01033033112','goflrhdwn1@hanmail.net',to_date('19/11/18 12:52','RR/MM/DD HH24:MI'),'fashion','car/tool','computer',null);
Insert into BE_USER (BEUID,UPW,SEX,BIRTH,UNAME,LOGINLOG,ADDR1,ADDR2,UPHONE,EMAIL,JOINDATE,PF1,PF2,PF3,SNSID) values ('godkkoo12','gofl1234','남자','201954','천석훈',to_timestamp('19/11/18 15:21:01.000000000','RR/MM/DD HH24:MI:SSXFF'),null,null,'01033033112','goflrhdwn1@google.com',to_date('19/11/18 15:21','RR/MM/DD HH24:MI'),'fashion','stuff/beauty','computer','1216665758');
REM INSERTING into CATEGORY
SET DEFINE OFF;
Insert into CATEGORY (CTNUM,BIGNAME,SMNAME) values (1,'가전디지털','컴퓨터');
Insert into CATEGORY (CTNUM,BIGNAME,SMNAME) values (2,'가전디지털','카메라');
Insert into CATEGORY (CTNUM,BIGNAME,SMNAME) values (3,'가전디지털','휴대폰/악세사리');
Insert into CATEGORY (CTNUM,BIGNAME,SMNAME) values (4,'가전디지털','영상기전');
Insert into CATEGORY (CTNUM,BIGNAME,SMNAME) values (5,'가전디지털','청소기');
Insert into CATEGORY (CTNUM,BIGNAME,SMNAME) values (6,'뷰티','명품화장품');
Insert into CATEGORY (CTNUM,BIGNAME,SMNAME) values (7,'뷰티','스킨케어');
Insert into CATEGORY (CTNUM,BIGNAME,SMNAME) values (8,'뷰티','향수');
Insert into CATEGORY (CTNUM,BIGNAME,SMNAME) values (9,'뷰티','네일');
Insert into CATEGORY (CTNUM,BIGNAME,SMNAME) values (10,'뷰티','메이크업');
Insert into CATEGORY (CTNUM,BIGNAME,SMNAME) values (11,'패션의류/잡화','여성의류');
Insert into CATEGORY (CTNUM,BIGNAME,SMNAME) values (12,'패션의류/잡화','남성의류');
Insert into CATEGORY (CTNUM,BIGNAME,SMNAME) values (13,'패션의류/잡화','베이비의류');
Insert into CATEGORY (CTNUM,BIGNAME,SMNAME) values (14,'패션의류/잡화','스포츠');
Insert into CATEGORY (CTNUM,BIGNAME,SMNAME) values (15,'패션의류/잡화','신발');
Insert into CATEGORY (CTNUM,BIGNAME,SMNAME) values (16,'가구/인테리어','거실가구');
Insert into CATEGORY (CTNUM,BIGNAME,SMNAME) values (17,'가구/인테리어','학생/주방/시스템가구');
Insert into CATEGORY (CTNUM,BIGNAME,SMNAME) values (18,'가구/인테리어','침구/커튼/카페트');
Insert into CATEGORY (CTNUM,BIGNAME,SMNAME) values (19,'가구/인테리어','홈데코/인테리어소품');
Insert into CATEGORY (CTNUM,BIGNAME,SMNAME) values (20,'가구/인테리어','침실가구');
Insert into CATEGORY (CTNUM,BIGNAME,SMNAME) values (21,'생활/건강/취미','생활/수납/청소');
Insert into CATEGORY (CTNUM,BIGNAME,SMNAME) values (22,'생활/건강/취미','건강/안마용품');
Insert into CATEGORY (CTNUM,BIGNAME,SMNAME) values (23,'생활/건강/취미','도서/악기');
Insert into CATEGORY (CTNUM,BIGNAME,SMNAME) values (24,'생활/건강/취미','문구/오피스');
Insert into CATEGORY (CTNUM,BIGNAME,SMNAME) values (25,'생활/건강/취미','취미/여행용품');
REM INSERTING into CHANNEL
SET DEFINE OFF;
Insert into CHANNEL (CH_NAME,CH_IMG,BEUID) values ('이재우','dpro.png','goflrhdwn2');
Insert into CHANNEL (CH_NAME,CH_IMG,BEUID) values ('이재우','dpro.png','juoing');
Insert into CHANNEL (CH_NAME,CH_IMG,BEUID) values ('천석훈','dpro.png','godkkoo');
Insert into CHANNEL (CH_NAME,CH_IMG,BEUID) values ('김해리','dpro.png','gofl854');
Insert into CHANNEL (CH_NAME,CH_IMG,BEUID) values ('김해리','dpro.png','goflrhdwn1');
Insert into CHANNEL (CH_NAME,CH_IMG,BEUID) values ('석진혁','dpro.png','thrwlsgur5');
Insert into CHANNEL (CH_NAME,CH_IMG,BEUID) values ('김해리','dpro.png','goflrhdwn');
Insert into CHANNEL (CH_NAME,CH_IMG,BEUID) values ('천석훈','dpro.png','godkkoo12');
REM INSERTING into DELIVERYCOM
SET DEFINE OFF;
Insert into DELIVERYCOM (DCNUM,LICENSENUM,DCNAME,DCPHONE,DCADDR,DCHARGE,DNUM) values (1,1111111111,'대한통운',1588555,'서울특별시 중구 세종대로 9길 53',2500,'1111');
Insert into DELIVERYCOM (DCNUM,LICENSENUM,DCNAME,DCPHONE,DCADDR,DCHARGE,DNUM) values (2,2222222222,'한진택배',15880011,'서울시 중구 남대문로 63',2500,'2222');
Insert into DELIVERYCOM (DCNUM,LICENSENUM,DCNAME,DCPHONE,DCADDR,DCHARGE,DNUM) values (3,3333333333,'우체국택배',15881300,'전라남도 나주시 정보화길 1, 인터넷우체국',2500,'3333');
REM INSERTING into EVENT
SET DEFINE OFF;
REM INSERTING into GBUY
SET DEFINE OFF;
REM INSERTING into ORDERDELIVERY
SET DEFINE OFF;
Insert into ORDERDELIVERY (ONUM,BEUID,PNUM,DCNUM,ONAME,OCOUNT,OPRICE,OADDR1,OADDR2,OPHONE,ODZIP,ODATE,DPRICE,DSTATUS,OMEMO,RECEIVENAME,PAYMETHOD) values (164251,'gofl854',1,1,'김해리',0,0,'인천','서구','01033033112','4000 ',to_date('19/11/17 16:36','RR/MM/DD HH24:MI'),0,'배송준비중','안녕하세여','김해리','iamport');
Insert into ORDERDELIVERY (ONUM,BEUID,PNUM,DCNUM,ONAME,OCOUNT,OPRICE,OADDR1,OADDR2,OPHONE,ODZIP,ODATE,DPRICE,DSTATUS,OMEMO,RECEIVENAME,PAYMETHOD) values (249928,'gofl854',1,1,'김해리',0,0,'인천','서구','01033033112','4000 ',to_date('19/11/17 16:45','RR/MM/DD HH24:MI'),0,'배송준비중','안녕하세여','김해리','iamport');
Insert into ORDERDELIVERY (ONUM,BEUID,PNUM,DCNUM,ONAME,OCOUNT,OPRICE,OADDR1,OADDR2,OPHONE,ODZIP,ODATE,DPRICE,DSTATUS,OMEMO,RECEIVENAME,PAYMETHOD) values (724771,'gofl854',1,1,'김해리',0,0,'인천','서구','01033033112','4000 ',to_date('19/11/17 16:48','RR/MM/DD HH24:MI'),0,'배송준비중','안녕하세여','김해리','iamport');
Insert into ORDERDELIVERY (ONUM,BEUID,PNUM,DCNUM,ONAME,OCOUNT,OPRICE,OADDR1,OADDR2,OPHONE,ODZIP,ODATE,DPRICE,DSTATUS,OMEMO,RECEIVENAME,PAYMETHOD) values (321010,'juoing',1,1,'김해리',0,0,'서울 서대문구 증가로28길 9','401호','01087966399','03667',to_date('19/11/17 18:31','RR/MM/DD HH24:MI'),0,'배송준비중','빠른배송부탁드립니다.','이재우','iamport');
Insert into ORDERDELIVERY (ONUM,BEUID,PNUM,DCNUM,ONAME,OCOUNT,OPRICE,OADDR1,OADDR2,OPHONE,ODZIP,ODATE,DPRICE,DSTATUS,OMEMO,RECEIVENAME,PAYMETHOD) values (131824,'juoing',1,1,'김해리',0,0,'서울 서대문구 증가로28길 9','401호','01087966399','03667',to_date('19/11/17 18:38','RR/MM/DD HH24:MI'),0,'배송준비중','빠른배송부탁드립니다.','이재우','iamport');
Insert into ORDERDELIVERY (ONUM,BEUID,PNUM,DCNUM,ONAME,OCOUNT,OPRICE,OADDR1,OADDR2,OPHONE,ODZIP,ODATE,DPRICE,DSTATUS,OMEMO,RECEIVENAME,PAYMETHOD) values (520216,'juoing',1,1,'[중고]',0,0,'서울 서대문구 증가로28길 9','401호','01087966399','03667',to_date('19/11/17 18:50','RR/MM/DD HH24:MI'),0,'배송준비중','빠른배송부탁드립니다.','이재우','iamport');
Insert into ORDERDELIVERY (ONUM,BEUID,PNUM,DCNUM,ONAME,OCOUNT,OPRICE,OADDR1,OADDR2,OPHONE,ODZIP,ODATE,DPRICE,DSTATUS,OMEMO,RECEIVENAME,PAYMETHOD) values (657329,'juoing',1,1,'김해리',0,0,'서울 서대문구 증가로28길 9','401호','01087966399','03667',to_date('19/11/17 18:59','RR/MM/DD HH24:MI'),0,'배송준비중','빠른배송부탁드립니다.','이재우','iamport');
Insert into ORDERDELIVERY (ONUM,BEUID,PNUM,DCNUM,ONAME,OCOUNT,OPRICE,OADDR1,OADDR2,OPHONE,ODZIP,ODATE,DPRICE,DSTATUS,OMEMO,RECEIVENAME,PAYMETHOD) values (153321,'juoing',1,1,'김해리',0,0,'인천 서구 경명대로694번길 10','102동 803호','01033033112','22709',to_date('19/11/17 19:48','RR/MM/DD HH24:MI'),0,'배송준비중','안녕하세요','이재우','iamport');
Insert into ORDERDELIVERY (ONUM,BEUID,PNUM,DCNUM,ONAME,OCOUNT,OPRICE,OADDR1,OADDR2,OPHONE,ODZIP,ODATE,DPRICE,DSTATUS,OMEMO,RECEIVENAME,PAYMETHOD) values (323430,'juoing',1,1,'김해리',0,0,'서울 서대문구 증가로28길 9','401호','01087966399','03667',to_date('19/11/17 18:20','RR/MM/DD HH24:MI'),0,'배송준비중','빠른배송부탁드립니다.','이재우','iamport');
Insert into ORDERDELIVERY (ONUM,BEUID,PNUM,DCNUM,ONAME,OCOUNT,OPRICE,OADDR1,OADDR2,OPHONE,ODZIP,ODATE,DPRICE,DSTATUS,OMEMO,RECEIVENAME,PAYMETHOD) values (172107,'godkkoo12',1,1,'[중고]에어팟',0,0,'인천 서구 경명대로694번길 10','102','01011111111','22709',to_date('19/11/18 15:28','RR/MM/DD HH24:MI'),0,'배송준비중',null,'김해리','iamport');
Insert into ORDERDELIVERY (ONUM,BEUID,PNUM,DCNUM,ONAME,OCOUNT,OPRICE,OADDR1,OADDR2,OPHONE,ODZIP,ODATE,DPRICE,DSTATUS,OMEMO,RECEIVENAME,PAYMETHOD) values (644239,'godkkoo12',1,1,'[중고]에어팟',0,0,'인천 서구 경명대로694번길 10','102동 803호','01011111111','22709',to_date('19/11/18 15:28','RR/MM/DD HH24:MI'),0,'배송준비중','빠른 배송 부탁드립ㄴ다.','김해리','iamport');
Insert into ORDERDELIVERY (ONUM,BEUID,PNUM,DCNUM,ONAME,OCOUNT,OPRICE,OADDR1,OADDR2,OPHONE,ODZIP,ODATE,DPRICE,DSTATUS,OMEMO,RECEIVENAME,PAYMETHOD) values (657779,'goflrhdwn1',1,1,'김해리',0,0,'인천','석구','01033033112','5000 ',to_date('19/11/15 12:53','RR/MM/DD HH24:MI'),0,'배송준비중','안녕하세여','김철수','iamport');
Insert into ORDERDELIVERY (ONUM,BEUID,PNUM,DCNUM,ONAME,OCOUNT,OPRICE,OADDR1,OADDR2,OPHONE,ODZIP,ODATE,DPRICE,DSTATUS,OMEMO,RECEIVENAME,PAYMETHOD) values (908417,'gofl854',1,1,'김해리',0,0,'인천 서구 경명대로694번길 10','102동 803호','01033033112','22709',to_date('19/11/18 14:45','RR/MM/DD HH24:MI'),0,'배송준비중','빠른배송부탁드립니다.','천석훈','iamport');
Insert into ORDERDELIVERY (ONUM,BEUID,PNUM,DCNUM,ONAME,OCOUNT,OPRICE,OADDR1,OADDR2,OPHONE,ODZIP,ODATE,DPRICE,DSTATUS,OMEMO,RECEIVENAME,PAYMETHOD) values (562276,'juoing',1,1,'김해리',0,0,'인천 서구 경명대로694번길 10','102동803호','01033033112','22709',to_date('19/11/17 19:22','RR/MM/DD HH24:MI'),0,'배송준비중','빠른배송부탁드립니다.','이재우','iamport');
REM INSERTING into PAY
SET DEFINE OFF;
Insert into PAY (PAYNUM,PAYWAY,PAYCONDITION,PAYDATE,PAYPRICE,PNUM) values (637082,'카드','결제완료',to_date('19/11/17 19:49','RR/MM/DD HH24:MI'),15000,1);
Insert into PAY (PAYNUM,PAYWAY,PAYCONDITION,PAYDATE,PAYPRICE,PNUM) values (326301,'카드','결제완료',to_date('19/11/18 15:29','RR/MM/DD HH24:MI'),190000,1);
Insert into PAY (PAYNUM,PAYWAY,PAYCONDITION,PAYDATE,PAYPRICE,PNUM) values (942088,'카드','결제완료',to_date('19/11/18 14:46','RR/MM/DD HH24:MI'),15000,1);
Insert into PAY (PAYNUM,PAYWAY,PAYCONDITION,PAYDATE,PAYPRICE,PNUM) values (237488,'카드','결제완료',to_date('19/11/17 19:22','RR/MM/DD HH24:MI'),100,1);
Insert into PAY (PAYNUM,PAYWAY,PAYCONDITION,PAYDATE,PAYPRICE,PNUM) values (514364,'카드','결제완료',to_date('19/11/17 19:29','RR/MM/DD HH24:MI'),15000,1);
Insert into PAY (PAYNUM,PAYWAY,PAYCONDITION,PAYDATE,PAYPRICE,PNUM) values (903659,'카드','결제완료',to_date('19/11/17 19:34','RR/MM/DD HH24:MI'),15000,1);
REM INSERTING into PBALANCE
SET DEFINE OFF;
Insert into PBALANCE (BALANCENUM,CHARGENUM,PAYNUM,PBALNOW,BEUID) values (4,0,null,0,'goflrhdwn2');
Insert into PBALANCE (BALANCENUM,CHARGENUM,PAYNUM,PBALNOW,BEUID) values (5,0,null,0,'juoing');
Insert into PBALANCE (BALANCENUM,CHARGENUM,PAYNUM,PBALNOW,BEUID) values (3,0,null,0,'goflrhdwn2');
Insert into PBALANCE (BALANCENUM,CHARGENUM,PAYNUM,PBALNOW,BEUID) values (2,0,null,0,'tjrwlsgur5');
Insert into PBALANCE (BALANCENUM,CHARGENUM,PAYNUM,PBALNOW,BEUID) values (1,0,null,0,'gofl854');
Insert into PBALANCE (BALANCENUM,CHARGENUM,PAYNUM,PBALNOW,BEUID) values (6,0,null,0,'goflrhdwn');
Insert into PBALANCE (BALANCENUM,CHARGENUM,PAYNUM,PBALNOW,BEUID) values (7,0,null,0,'godkkoo12');
REM INSERTING into PCHARGE
SET DEFINE OFF;
Insert into PCHARGE (CHARGENUM,BEUID,CHARGEDATE,CHARGELIST,CHARGEMETHOD) values (1,'goflrhdwn1',to_date('19/11/08 16:08','RR/MM/DD HH24:MI'),5000,'CARD');
Insert into PCHARGE (CHARGENUM,BEUID,CHARGEDATE,CHARGELIST,CHARGEMETHOD) values (2,'godkkoo',to_date('19/11/08 16:08','RR/MM/DD HH24:MI'),1000,'CARD');
REM INSERTING into PGROUP
SET DEFINE OFF;
REM INSERTING into POINT
SET DEFINE OFF;
REM INSERTING into POINTHIT
SET DEFINE OFF;
REM INSERTING into PPAY
SET DEFINE OFF;
Insert into PPAY (PAYNUM,BEUID,PAYDATE,PAYLIST) values (1,'goflrhdwn1',to_date('19/11/08 16:09','RR/MM/DD HH24:MI'),1000);
Insert into PPAY (PAYNUM,BEUID,PAYDATE,PAYLIST) values (2,'godkkoo',to_date('19/11/08 16:09','RR/MM/DD HH24:MI'),1000);
REM INSERTING into PRODUCT
SET DEFINE OFF;
Insert into PRODUCT (PNUM,CTNUM,P_DATE,AS_INFO,P_CDATE,PNAME,DETAIL,STOCK,P_CATEGORY,P_VIDEO,P_SANGSE,OPTION1,SELECT_OP1,OPTION2,SELECT_OP2,OPTION3,SELECT_OP3,LIKES,HITS,P_PRICE,ORIGIN,P_SPRICE,AUCTION,BEUID) values (14,1,to_date('19/11/11 20:50','RR/MM/DD HH24:MI'),'testsangse2.jpg',to_date('19/11/11 20:48','RR/MM/DD HH24:MI'),'에어팟 최공','끝내주는 에어팟이에여
하얀색인데 세상 깨끄삽니다.
',3,'더미','air.mp4','test6.jpg','색상','화이트,블랙,그레이','크기','스몰,라지',null,null,0,0,150000,null,300000,'0 ','goflrhdwn1');
Insert into PRODUCT (PNUM,CTNUM,P_DATE,AS_INFO,P_CDATE,PNAME,DETAIL,STOCK,P_CATEGORY,P_VIDEO,P_SANGSE,OPTION1,SELECT_OP1,OPTION2,SELECT_OP2,OPTION3,SELECT_OP3,LIKES,HITS,P_PRICE,ORIGIN,P_SPRICE,AUCTION,BEUID) values (15,1,to_date('19/11/12 12:21','RR/MM/DD HH24:MI'),'test4.jpg',to_date('19/11/12 12:19','RR/MM/DD HH24:MI'),'[중고상품]컴퓨터 의자','회사에서 사용하던 컴퓨터 의자입니다.
상태 A급 이구요.
하자 있을 시 교환, 환불 가능합니다.
개당 10000원 입니다.',11,'홈데코','KakaoTalk_Video_20191104_1255_55_209.mp4','testsangse4.jpg','색상','블랙,화이트',null,null,null,null,0,0,10000,null,15000,'0 ','goflrhdwn1');
Insert into PRODUCT (PNUM,CTNUM,P_DATE,AS_INFO,P_CDATE,PNAME,DETAIL,STOCK,P_CATEGORY,P_VIDEO,P_SANGSE,OPTION1,SELECT_OP1,OPTION2,SELECT_OP2,OPTION3,SELECT_OP3,LIKES,HITS,P_PRICE,ORIGIN,P_SPRICE,AUCTION,BEUID) values (18,1,to_date('19/11/18 14:37','RR/MM/DD HH24:MI'),'hotvest_sangse.jpg',to_date('19/11/18 14:37','RR/MM/DD HH24:MI'),'[쇼핑] 야외활동 많으신 분들 주목! 발열조끼 3만원대 특가!','앗 추추! 진짜 겨울이 다가오고 있는데 아직 발열조끼 안 사신 분 계세요? 자전거, 낚시, 스키, 등산 등 야외활동에 
발열 조끼 하나로 온 세상 추위 다 이겨내세요!!
간편하게  USB 연결 톡~ 저전력으로 따뜻하게! 가격대는 3만원대로 구매 고고싱~~',20,'패션의류','KakaoTalk_Video_20191104_1254_38_338.mp4','hotvest.JPG','색상','블랙,화이트','크기','S,M,L',null,null,0,0,15000,null,20000,'0 ','gofl854');
Insert into PRODUCT (PNUM,CTNUM,P_DATE,AS_INFO,P_CDATE,PNAME,DETAIL,STOCK,P_CATEGORY,P_VIDEO,P_SANGSE,OPTION1,SELECT_OP1,OPTION2,SELECT_OP2,OPTION3,SELECT_OP3,LIKES,HITS,P_PRICE,ORIGIN,P_SPRICE,AUCTION,BEUID) values (3,1,to_date('19/11/04 12:57','RR/MM/DD HH24:MI'),'01.jpg',to_date('19/11/05 12:57','RR/MM/DD HH24:MI'),'냥냥이','테스',5,'더미','KakaoTalk_Video_20191104_1255_51_657.mp4','10924736_671536696303086_6707258228798435616_n.jpg','옵션1','삼색이','옵션2','사색이','옵션3','오색이',0,0,15000,null,30000,'1 ','goflrhdwn1');
Insert into PRODUCT (PNUM,CTNUM,P_DATE,AS_INFO,P_CDATE,PNAME,DETAIL,STOCK,P_CATEGORY,P_VIDEO,P_SANGSE,OPTION1,SELECT_OP1,OPTION2,SELECT_OP2,OPTION3,SELECT_OP3,LIKES,HITS,P_PRICE,ORIGIN,P_SPRICE,AUCTION,BEUID) values (4,1,to_date('19/11/04 12:59','RR/MM/DD HH24:MI'),'06.jpg',to_date('19/11/04 18:59','RR/MM/DD HH24:MI'),'청하요','청하',1,'더미','KakaoTalk_Video_20191104_1255_55_209.mp4','KakaoTalk_Video_20191104_1255_55_209.mp4','옵션1','색상','옵션2','삼색이','옵션3','삼사이',0,0,15000,null,20000,'0 ','goflrhdwn1');
Insert into PRODUCT (PNUM,CTNUM,P_DATE,AS_INFO,P_CDATE,PNAME,DETAIL,STOCK,P_CATEGORY,P_VIDEO,P_SANGSE,OPTION1,SELECT_OP1,OPTION2,SELECT_OP2,OPTION3,SELECT_OP3,LIKES,HITS,P_PRICE,ORIGIN,P_SPRICE,AUCTION,BEUID) values (5,1,to_date('19/11/04 13:00','RR/MM/DD HH24:MI'),'06.jpg',to_date('19/11/06 13:00','RR/MM/DD HH24:MI'),'중고상품','test',11,'더미','KakaoTalk_Video_20180823_1252_28_604.mp4','01.jpg','옵션1','색상','옵션2','화이트','옵션3','색상',0,0,20000,null,200000,'0 ','goflrhdwn1');
Insert into PRODUCT (PNUM,CTNUM,P_DATE,AS_INFO,P_CDATE,PNAME,DETAIL,STOCK,P_CATEGORY,P_VIDEO,P_SANGSE,OPTION1,SELECT_OP1,OPTION2,SELECT_OP2,OPTION3,SELECT_OP3,LIKES,HITS,P_PRICE,ORIGIN,P_SPRICE,AUCTION,BEUID) values (7,1,to_date('19/11/06 10:18','RR/MM/DD HH24:MI'),'01.jpg',to_date('19/11/09 10:18','RR/MM/DD HH24:MI'),'기가막힘','호우',3,'더미','KakaoTalk_Video_20191104_1255_55_209.mp4','65wANr2_tdQXg_5SbrsW.jpg','옵션1','색상','옵션1','색상','옵션1','색상',0,0,15000,null,25000,'0 ','goflrhdwn1');
Insert into PRODUCT (PNUM,CTNUM,P_DATE,AS_INFO,P_CDATE,PNAME,DETAIL,STOCK,P_CATEGORY,P_VIDEO,P_SANGSE,OPTION1,SELECT_OP1,OPTION2,SELECT_OP2,OPTION3,SELECT_OP3,LIKES,HITS,P_PRICE,ORIGIN,P_SPRICE,AUCTION,BEUID) values (1,1,to_date('19/11/04 12:51','RR/MM/DD HH24:MI'),'06.jpg',to_date('19/11/04 12:59','RR/MM/DD HH24:MI'),'김해리','test',33,'더미','KakaoTalk_Video_20180823_1252_28_604.mp4','01.jpg','옵션1','색상',null,null,null,null,0,0,16000,null,20000,'0 ','goflrhdwn1');
Insert into PRODUCT (PNUM,CTNUM,P_DATE,AS_INFO,P_CDATE,PNAME,DETAIL,STOCK,P_CATEGORY,P_VIDEO,P_SANGSE,OPTION1,SELECT_OP1,OPTION2,SELECT_OP2,OPTION3,SELECT_OP3,LIKES,HITS,P_PRICE,ORIGIN,P_SPRICE,AUCTION,BEUID) values (2,1,to_date('19/11/04 12:53','RR/MM/DD HH24:MI'),'20130121_191325.jpg',to_date('19/11/08 12:53','RR/MM/DD HH24:MI'),'중고상품','2019년 최신형',5,'더미','KakaoTalk_Video_20191023_1723_26_868.mp4','720x405_crop.jpg','화이트','색상',null,null,null,null,0,0,15000,null,20000,'0 ','goflrhdwn1');
Insert into PRODUCT (PNUM,CTNUM,P_DATE,AS_INFO,P_CDATE,PNAME,DETAIL,STOCK,P_CATEGORY,P_VIDEO,P_SANGSE,OPTION1,SELECT_OP1,OPTION2,SELECT_OP2,OPTION3,SELECT_OP3,LIKES,HITS,P_PRICE,ORIGIN,P_SPRICE,AUCTION,BEUID) values (8,1,to_date('19/11/06 10:20','RR/MM/DD HH24:MI'),'01.jpg',to_date('19/11/09 10:18','RR/MM/DD HH24:MI'),'기가막힘','호우',3,'더미','KakaoTalk_Video_20191104_1255_55_209.mp4','65wANr2_tdQXg_5SbrsW.jpg','옵션1','색상',null,null,null,null,0,0,15000,null,25000,'0 ','goflrhdwn1');
Insert into PRODUCT (PNUM,CTNUM,P_DATE,AS_INFO,P_CDATE,PNAME,DETAIL,STOCK,P_CATEGORY,P_VIDEO,P_SANGSE,OPTION1,SELECT_OP1,OPTION2,SELECT_OP2,OPTION3,SELECT_OP3,LIKES,HITS,P_PRICE,ORIGIN,P_SPRICE,AUCTION,BEUID) values (9,1,to_date('19/11/06 17:20','RR/MM/DD HH24:MI'),'testsangse1.jpg',to_date('19/11/05 17:18','RR/MM/DD HH24:MI'),'[중고상품]발 안마기','한번도 안썼어용',50,'더미','KakaoTalk_Video_20191104_1255_55_209.mp4','test1.jpg','화이트','색상',null,null,null,null,0,0,35000,null,50000,'0 ','godkkoo');
Insert into PRODUCT (PNUM,CTNUM,P_DATE,AS_INFO,P_CDATE,PNAME,DETAIL,STOCK,P_CATEGORY,P_VIDEO,P_SANGSE,OPTION1,SELECT_OP1,OPTION2,SELECT_OP2,OPTION3,SELECT_OP3,LIKES,HITS,P_PRICE,ORIGIN,P_SPRICE,AUCTION,BEUID) values (11,1,to_date('19/11/06 17:52','RR/MM/DD HH24:MI'),'testsangse3.jpg',to_date('19/11/06 17:52','RR/MM/DD HH24:MI'),'중고[아이폰8]','화이트',11,'더미','KakaoTalk_Video_20191023_1723_26_868.mp4','test3.jpg','옵션1','색상',null,null,null,null,0,0,15000,null,30000,'0 ','goflrhdwn1');
Insert into PRODUCT (PNUM,CTNUM,P_DATE,AS_INFO,P_CDATE,PNAME,DETAIL,STOCK,P_CATEGORY,P_VIDEO,P_SANGSE,OPTION1,SELECT_OP1,OPTION2,SELECT_OP2,OPTION3,SELECT_OP3,LIKES,HITS,P_PRICE,ORIGIN,P_SPRICE,AUCTION,BEUID) values (12,1,to_date('19/11/06 17:54','RR/MM/DD HH24:MI'),'testsangse4.jpg',to_date('19/11/06 17:54','RR/MM/DD HH24:MI'),'[중고]의자','겜의자에요',1,'더미','KakaoTalk_Video_20191023_1723_26_868.mp4','test4.jpg','옵션1','색상',null,null,null,null,0,0,70000,null,5000,'0 ','goflrhdwn1');
Insert into PRODUCT (PNUM,CTNUM,P_DATE,AS_INFO,P_CDATE,PNAME,DETAIL,STOCK,P_CATEGORY,P_VIDEO,P_SANGSE,OPTION1,SELECT_OP1,OPTION2,SELECT_OP2,OPTION3,SELECT_OP3,LIKES,HITS,P_PRICE,ORIGIN,P_SPRICE,AUCTION,BEUID) values (6,1,to_date('19/11/04 17:58','RR/MM/DD HH24:MI'),'06.jpg',to_date('19/11/06 17:58','RR/MM/DD HH24:MI'),'ㅡㅡ','ㅎㅎ',3,'더미','KakaoTalk_Video_20191006_1500_59_439.mp4','KakaoTalk_20140614_150420597.jpg','ㅁㅁ','색상',null,null,null,null,0,0,15000,null,30000,'0 ','godkkoo');
Insert into PRODUCT (PNUM,CTNUM,P_DATE,AS_INFO,P_CDATE,PNAME,DETAIL,STOCK,P_CATEGORY,P_VIDEO,P_SANGSE,OPTION1,SELECT_OP1,OPTION2,SELECT_OP2,OPTION3,SELECT_OP3,LIKES,HITS,P_PRICE,ORIGIN,P_SPRICE,AUCTION,BEUID) values (10,1,to_date('19/11/06 17:50','RR/MM/DD HH24:MI'),'testsangse2.jpg',to_date('19/11/06 17:49','RR/MM/DD HH24:MI'),'[중고]복합기','컬러도돼요',1,'더미','test2.jpg','test2.jpg','블랙','색상',null,null,null,null,0,0,35000,null,70000,'0 ','godkkoo');
Insert into PRODUCT (PNUM,CTNUM,P_DATE,AS_INFO,P_CDATE,PNAME,DETAIL,STOCK,P_CATEGORY,P_VIDEO,P_SANGSE,OPTION1,SELECT_OP1,OPTION2,SELECT_OP2,OPTION3,SELECT_OP3,LIKES,HITS,P_PRICE,ORIGIN,P_SPRICE,AUCTION,BEUID) values (16,1,to_date('19/11/13 12:07','RR/MM/DD HH24:MI'),'testsangse1.jpg',to_date('19/11/13 12:07','RR/MM/DD HH24:MI'),'김해리','ㅎㅎㅎㅎㅎㅎ',11,'잡화/뷰티','KakaoTalk_Video_20191023_1723_26_868.mp4','test1.jpg','색상','빨,주,노','크기','S,M,L',null,null,0,0,15000,null,20000,'0 ','goflrhdwn1');
Insert into PRODUCT (PNUM,CTNUM,P_DATE,AS_INFO,P_CDATE,PNAME,DETAIL,STOCK,P_CATEGORY,P_VIDEO,P_SANGSE,OPTION1,SELECT_OP1,OPTION2,SELECT_OP2,OPTION3,SELECT_OP3,LIKES,HITS,P_PRICE,ORIGIN,P_SPRICE,AUCTION,BEUID) values (17,1,to_date('19/11/17 18:18','RR/MM/DD HH24:MI'),'testsangse5.jpg',to_date('19/11/17 16:17','RR/MM/DD HH24:MI'),'에어팟 판매[중고]','관리잘된 에어팟 팝니다.!!!!',1,'디지털/가전','air.mp4','test3.jpg','색상','화이트,블랙',null,null,null,null,0,0,150000,null,200000,'1 ','juoing');
Insert into PRODUCT (PNUM,CTNUM,P_DATE,AS_INFO,P_CDATE,PNAME,DETAIL,STOCK,P_CATEGORY,P_VIDEO,P_SANGSE,OPTION1,SELECT_OP1,OPTION2,SELECT_OP2,OPTION3,SELECT_OP3,LIKES,HITS,P_PRICE,ORIGIN,P_SPRICE,AUCTION,BEUID) values (19,1,to_date('19/11/18 15:24','RR/MM/DD HH24:MI'),'airpot_case.jpg',to_date('19/11/18 15:25','RR/MM/DD HH24:MI'),'[중고]에어팟 화이트 판매합니다.','애플 스토어에서 산거라 유심칩만 끼워 사용하시면 됩니다.
항상 케이스 끼워 사용해서 흠집이나 잔기스 없고
사진에서 보이듯이 상태 A급 입니다.
앞에 붙여놓은 필름만 제거하면 새 것 같아요.
채팅이나 번호로 연락주세요~~~',1,'디지털/가전','air.mp4','airpods.jpg','색상','화이트',null,null,null,null,0,0,190000,null,250000,'0 ','godkkoo12');
Insert into PRODUCT (PNUM,CTNUM,P_DATE,AS_INFO,P_CDATE,PNAME,DETAIL,STOCK,P_CATEGORY,P_VIDEO,P_SANGSE,OPTION1,SELECT_OP1,OPTION2,SELECT_OP2,OPTION3,SELECT_OP3,LIKES,HITS,P_PRICE,ORIGIN,P_SPRICE,AUCTION,BEUID) values (13,1,to_date('19/11/11 12:54','RR/MM/DD HH24:MI'),'testsangse5.jpg',to_date('19/11/11 12:54','RR/MM/DD HH24:MI'),'[중고] 에어팟','사용감이 거의 없는 1세대 에어팟 입니다.
화이트, 블랙 남아있고용
두개 다 구매하시는 분들에게는 그 머지 에어팟 케이스를
선물로 드립니다욤',11,'더미','air.mp4','testsangse1.jpg','색상','화이트,블랙','크기','s,m,l',null,null,0,0,15000,null,20000,'0 ','goflrhdwn1');
REM INSERTING into PURCHASE
SET DEFINE OFF;
REM INSERTING into QNA
SET DEFINE OFF;
Insert into QNA (QNANUM,QNA_TITLE,QNA_CON,QNA_ANSWER,BEUID,PNUM,ANSWER_TIME,REGIST_DATE,QNA_CATEGORY,QNA_EMAIL) values (1,'안녕하세요','반갑습니다.',null,'goflrhdwn1',0,to_date('19/11/18 16:54','RR/MM/DD HH24:MI'),to_date('19/11/18 16:54','RR/MM/DD HH24:MI'),2,'goflrhdwn1@hanmail.net');
Insert into QNA (QNANUM,QNA_TITLE,QNA_CON,QNA_ANSWER,BEUID,PNUM,ANSWER_TIME,REGIST_DATE,QNA_CATEGORY,QNA_EMAIL) values (2,'안녕하세요','ㅎㅎ',null,'goflrhdwn1',0,to_date('19/11/18 17:01','RR/MM/DD HH24:MI'),to_date('19/11/18 17:01','RR/MM/DD HH24:MI'),1,'goflrhdwn1@hanmail.net');
Insert into QNA (QNANUM,QNA_TITLE,QNA_CON,QNA_ANSWER,BEUID,PNUM,ANSWER_TIME,REGIST_DATE,QNA_CATEGORY,QNA_EMAIL) values (3,'안녕하세요','ㅇㅇ',null,'goflrhdwn1',0,to_date('19/11/18 17:02','RR/MM/DD HH24:MI'),to_date('19/11/18 17:02','RR/MM/DD HH24:MI'),2,'goflrhdwn1@hanmail.net');
Insert into QNA (QNANUM,QNA_TITLE,QNA_CON,QNA_ANSWER,BEUID,PNUM,ANSWER_TIME,REGIST_DATE,QNA_CATEGORY,QNA_EMAIL) values (4,'aa','aaaa',null,'goflrhdwn1',0,to_date('19/11/18 17:02','RR/MM/DD HH24:MI'),to_date('19/11/18 17:02','RR/MM/DD HH24:MI'),3,'goflrhdwn1@hanmail.net');
Insert into QNA (QNANUM,QNA_TITLE,QNA_CON,QNA_ANSWER,BEUID,PNUM,ANSWER_TIME,REGIST_DATE,QNA_CATEGORY,QNA_EMAIL) values (5,'배송이안와요','dddd',null,'goflrhdwn1',0,to_date('19/11/18 17:03','RR/MM/DD HH24:MI'),to_date('19/11/18 17:03','RR/MM/DD HH24:MI'),3,'goflrhdwn1@hanmail.net');
REM INSERTING into REVIEW
SET DEFINE OFF;
REM INSERTING into SELLER
SET DEFINE OFF;
REM INSERTING into SHOPLIST
SET DEFINE OFF;
REM INSERTING into SUB
SET DEFINE OFF;
Insert into SUB (BEUID,SBEUID) values ('godkkoo','goflrhdwn1');
Insert into SUB (BEUID,SBEUID) values ('godkkoo','goflrhdwn');
Insert into SUB (BEUID,SBEUID) values ('gofl854','goflrhdwn');
Insert into SUB (BEUID,SBEUID) values ('gofl','goflrhdwn1');
Insert into SUB (BEUID,SBEUID) values ('gofl44','goflrhdwn1');
Insert into SUB (BEUID,SBEUID) values ('gofl854','godkkoo12');
Insert into SUB (BEUID,SBEUID) values ('godkkoo','goflrhdwn1');
Insert into SUB (BEUID,SBEUID) values ('goflrhdwn1','gofl854');
Insert into SUB (BEUID,SBEUID) values ('goflrhdwn1','godkkoo');
Insert into SUB (BEUID,SBEUID) values ('goflrhdwn1','godkkoo');
REM INSERTING into USERGRADE
SET DEFINE OFF;
REM INSERTING into VIDEO
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index SYS_C008316
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C008316" ON "BE_USER" ("BEUID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C008196
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C008196" ON "CATEGORY" ("CTNUM") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C008714
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C008714" ON "DELIVERYCOM" ("DCNUM") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C008229
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C008229" ON "EVENT" ("ENUM") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C008222
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C008222" ON "GBUY" ("PNUM") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C008727
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C008727" ON "ORDERDELIVERY" ("ONUM") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C008715
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C008715" ON "PAY" ("PAYNUM") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C008682
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C008682" ON "PBALANCE" ("BALANCENUM") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C008673
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C008673" ON "PCHARGE" ("CHARGENUM") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C008218
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C008218" ON "PGROUP" ("GNUM") 
  ;
--------------------------------------------------------
--  DDL for Index BEUID_POINTPURNUM
--------------------------------------------------------

  CREATE UNIQUE INDEX "BEUID_POINTPURNUM" ON "POINT" ("BEUID", "POINTPURNUM") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C008248
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C008248" ON "POINTHIT" ("BEUID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C008678
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C008678" ON "PPAY" ("PAYNUM") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C008696
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C008696" ON "PRODUCT" ("PNUM") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C008306
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C008306" ON "PURCHASE" ("PCNUM") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C008706
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C008706" ON "QNA" ("QNANUM") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C008258
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C008258" ON "REVIEW" ("RENUM") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C008276
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C008276" ON "SELLER" ("SNUM") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C008268
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C008268" ON "SHOPLIST" ("SLNUM") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C008232
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C008232" ON "USERGRADE" ("GRADENUM") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C008289
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C008289" ON "VIDEO" ("VNUM") 
  ;
--------------------------------------------------------
--  DDL for Trigger NEWMEMPOINT
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "NEWMEMPOINT" 
AFTER INSERT ON be_user
FOR EACH ROW 
BEGIN 
	INSERT INTO PBALANCE (BALANCENUM, CHARGENUM, PBALNOW, BEUID) 
		VALUES ((SELECT NVL(MAX(BALANCENUM),0) +1 FROM PBALANCE),0, 0,
		:new.BEUID);
END;
/
ALTER TRIGGER "NEWMEMPOINT" ENABLE;
--------------------------------------------------------
--  DDL for Trigger PLUSPOINT
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "PLUSPOINT" 
AFTER INSERT ON PCHARGE
FOR EACH ROW 
BEGIN 
	UPDATE PBALANCE SET
		PBALNOW =:new.CHARGELIST+PBALNOW,
		CHARGENUM = :new.CHARGENUM
		WHERE BEUID = :new.BEUID;
END;
/
ALTER TRIGGER "PLUSPOINT" ENABLE;
--------------------------------------------------------
--  DDL for Trigger MINUSPOINT
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "MINUSPOINT" 
AFTER INSERT ON PPAY
FOR EACH ROW 
BEGIN 
	UPDATE PBALANCE SET
		PBALNOW =PBALNOW-:new.PAYLIST,
		PAYNUM = :new.PAYNUM
		WHERE BEUID = :new.BEUID;
END;
/
ALTER TRIGGER "MINUSPOINT" ENABLE;
--------------------------------------------------------
--  Constraints for Table AUCTION
--------------------------------------------------------

  ALTER TABLE "AUCTION" MODIFY ("ANUM" NOT NULL ENABLE);
  ALTER TABLE "AUCTION" MODIFY ("BEUID" NOT NULL ENABLE);
  ALTER TABLE "AUCTION" MODIFY ("PRICE" NOT NULL ENABLE);
  ALTER TABLE "AUCTION" MODIFY ("DAY" NOT NULL ENABLE);
  ALTER TABLE "AUCTION" MODIFY ("CNT" NOT NULL ENABLE);
  ALTER TABLE "AUCTION" MODIFY ("ENDDAY" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BE_USER
--------------------------------------------------------

  ALTER TABLE "BE_USER" MODIFY ("UPW" NOT NULL ENABLE);
  ALTER TABLE "BE_USER" MODIFY ("SEX" NOT NULL ENABLE);
  ALTER TABLE "BE_USER" MODIFY ("BIRTH" NOT NULL ENABLE);
  ALTER TABLE "BE_USER" MODIFY ("UNAME" NOT NULL ENABLE);
  ALTER TABLE "BE_USER" MODIFY ("LOGINLOG" NOT NULL ENABLE);
  ALTER TABLE "BE_USER" MODIFY ("UPHONE" NOT NULL ENABLE);
  ALTER TABLE "BE_USER" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "BE_USER" MODIFY ("JOINDATE" NOT NULL ENABLE);
  ALTER TABLE "BE_USER" ADD PRIMARY KEY ("BEUID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table CATEGORY
--------------------------------------------------------

  ALTER TABLE "CATEGORY" MODIFY ("CTNUM" NOT NULL ENABLE);
  ALTER TABLE "CATEGORY" MODIFY ("BIGNAME" NOT NULL ENABLE);
  ALTER TABLE "CATEGORY" ADD PRIMARY KEY ("CTNUM")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table DELIVERYCOM
--------------------------------------------------------

  ALTER TABLE "DELIVERYCOM" MODIFY ("LICENSENUM" NOT NULL ENABLE);
  ALTER TABLE "DELIVERYCOM" MODIFY ("DCNAME" NOT NULL ENABLE);
  ALTER TABLE "DELIVERYCOM" MODIFY ("DCPHONE" NOT NULL ENABLE);
  ALTER TABLE "DELIVERYCOM" MODIFY ("DCADDR" NOT NULL ENABLE);
  ALTER TABLE "DELIVERYCOM" MODIFY ("DCHARGE" NOT NULL ENABLE);
  ALTER TABLE "DELIVERYCOM" ADD PRIMARY KEY ("DCNUM")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table EVENT
--------------------------------------------------------

  ALTER TABLE "EVENT" MODIFY ("ENUM" NOT NULL ENABLE);
  ALTER TABLE "EVENT" MODIFY ("ENAME" NOT NULL ENABLE);
  ALTER TABLE "EVENT" MODIFY ("EDATE" NOT NULL ENABLE);
  ALTER TABLE "EVENT" MODIFY ("E_IMAGE" NOT NULL ENABLE);
  ALTER TABLE "EVENT" ADD PRIMARY KEY ("ENUM")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table GBUY
--------------------------------------------------------

  ALTER TABLE "GBUY" MODIFY ("PNUM" NOT NULL ENABLE);
  ALTER TABLE "GBUY" MODIFY ("GNUM" NOT NULL ENABLE);
  ALTER TABLE "GBUY" ADD PRIMARY KEY ("PNUM")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table ORDERDELIVERY
--------------------------------------------------------

  ALTER TABLE "ORDERDELIVERY" MODIFY ("BEUID" NOT NULL ENABLE);
  ALTER TABLE "ORDERDELIVERY" MODIFY ("PNUM" NOT NULL ENABLE);
  ALTER TABLE "ORDERDELIVERY" MODIFY ("DCNUM" NOT NULL ENABLE);
  ALTER TABLE "ORDERDELIVERY" MODIFY ("ONAME" NOT NULL ENABLE);
  ALTER TABLE "ORDERDELIVERY" MODIFY ("OCOUNT" NOT NULL ENABLE);
  ALTER TABLE "ORDERDELIVERY" MODIFY ("OPRICE" NOT NULL ENABLE);
  ALTER TABLE "ORDERDELIVERY" MODIFY ("OADDR1" NOT NULL ENABLE);
  ALTER TABLE "ORDERDELIVERY" MODIFY ("OADDR2" NOT NULL ENABLE);
  ALTER TABLE "ORDERDELIVERY" MODIFY ("OPHONE" NOT NULL ENABLE);
  ALTER TABLE "ORDERDELIVERY" MODIFY ("ODZIP" NOT NULL ENABLE);
  ALTER TABLE "ORDERDELIVERY" ADD PRIMARY KEY ("ONUM")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table PAY
--------------------------------------------------------

  ALTER TABLE "PAY" ADD PRIMARY KEY ("PAYNUM")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table PBALANCE
--------------------------------------------------------

  ALTER TABLE "PBALANCE" MODIFY ("PBALNOW" NOT NULL ENABLE);
  ALTER TABLE "PBALANCE" MODIFY ("BEUID" NOT NULL ENABLE);
  ALTER TABLE "PBALANCE" ADD PRIMARY KEY ("BALANCENUM")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table PCHARGE
--------------------------------------------------------

  ALTER TABLE "PCHARGE" MODIFY ("BEUID" NOT NULL ENABLE);
  ALTER TABLE "PCHARGE" MODIFY ("CHARGEDATE" NOT NULL ENABLE);
  ALTER TABLE "PCHARGE" MODIFY ("CHARGELIST" NOT NULL ENABLE);
  ALTER TABLE "PCHARGE" ADD PRIMARY KEY ("CHARGENUM")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table PGROUP
--------------------------------------------------------

  ALTER TABLE "PGROUP" MODIFY ("GNUM" NOT NULL ENABLE);
  ALTER TABLE "PGROUP" MODIFY ("PNUM" NOT NULL ENABLE);
  ALTER TABLE "PGROUP" MODIFY ("PG" NOT NULL ENABLE);
  ALTER TABLE "PGROUP" ADD PRIMARY KEY ("GNUM")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table POINT
--------------------------------------------------------

  ALTER TABLE "POINT" MODIFY ("BEUID" NOT NULL ENABLE);
  ALTER TABLE "POINT" MODIFY ("POINTBALANCE" NOT NULL ENABLE);
  ALTER TABLE "POINT" ADD CONSTRAINT "BEUID_POINTPURNUM" PRIMARY KEY ("BEUID", "POINTPURNUM")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table POINTHIT
--------------------------------------------------------

  ALTER TABLE "POINTHIT" ADD PRIMARY KEY ("BEUID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table PPAY
--------------------------------------------------------

  ALTER TABLE "PPAY" MODIFY ("BEUID" NOT NULL ENABLE);
  ALTER TABLE "PPAY" MODIFY ("PAYDATE" NOT NULL ENABLE);
  ALTER TABLE "PPAY" MODIFY ("PAYLIST" NOT NULL ENABLE);
  ALTER TABLE "PPAY" ADD PRIMARY KEY ("PAYNUM")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table PRODUCT
--------------------------------------------------------

  ALTER TABLE "PRODUCT" MODIFY ("PNUM" NOT NULL ENABLE);
  ALTER TABLE "PRODUCT" MODIFY ("CTNUM" NOT NULL ENABLE);
  ALTER TABLE "PRODUCT" MODIFY ("P_DATE" NOT NULL ENABLE);
  ALTER TABLE "PRODUCT" MODIFY ("P_CDATE" NOT NULL ENABLE);
  ALTER TABLE "PRODUCT" MODIFY ("PNAME" NOT NULL ENABLE);
  ALTER TABLE "PRODUCT" MODIFY ("DETAIL" NOT NULL ENABLE);
  ALTER TABLE "PRODUCT" MODIFY ("STOCK" NOT NULL ENABLE);
  ALTER TABLE "PRODUCT" MODIFY ("P_CATEGORY" NOT NULL ENABLE);
  ALTER TABLE "PRODUCT" MODIFY ("P_VIDEO" NOT NULL ENABLE);
  ALTER TABLE "PRODUCT" MODIFY ("P_SANGSE" NOT NULL ENABLE);
  ALTER TABLE "PRODUCT" MODIFY ("LIKES" NOT NULL ENABLE);
  ALTER TABLE "PRODUCT" MODIFY ("HITS" NOT NULL ENABLE);
  ALTER TABLE "PRODUCT" MODIFY ("P_PRICE" NOT NULL ENABLE);
  ALTER TABLE "PRODUCT" ADD PRIMARY KEY ("PNUM")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table PURCHASE
--------------------------------------------------------

  ALTER TABLE "PURCHASE" MODIFY ("PNUM" NOT NULL ENABLE);
  ALTER TABLE "PURCHASE" MODIFY ("PC_COUNT" NOT NULL ENABLE);
  ALTER TABLE "PURCHASE" MODIFY ("PC_PRICE" NOT NULL ENABLE);
  ALTER TABLE "PURCHASE" MODIFY ("PC_PHONE" NOT NULL ENABLE);
  ALTER TABLE "PURCHASE" MODIFY ("ZIPCODE" NOT NULL ENABLE);
  ALTER TABLE "PURCHASE" MODIFY ("PC_ADDR1" NOT NULL ENABLE);
  ALTER TABLE "PURCHASE" MODIFY ("PC_ADDR2" NOT NULL ENABLE);
  ALTER TABLE "PURCHASE" ADD PRIMARY KEY ("PCNUM")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table QNA
--------------------------------------------------------

  ALTER TABLE "QNA" MODIFY ("QNANUM" NOT NULL ENABLE);
  ALTER TABLE "QNA" MODIFY ("QNA_TITLE" NOT NULL ENABLE);
  ALTER TABLE "QNA" MODIFY ("QNA_CON" NOT NULL ENABLE);
  ALTER TABLE "QNA" MODIFY ("REGIST_DATE" NOT NULL ENABLE);
  ALTER TABLE "QNA" ADD PRIMARY KEY ("QNANUM")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table REVIEW
--------------------------------------------------------

  ALTER TABLE "REVIEW" MODIFY ("RENUM" NOT NULL ENABLE);
  ALTER TABLE "REVIEW" MODIFY ("BEUID" NOT NULL ENABLE);
  ALTER TABLE "REVIEW" MODIFY ("PNUM" NOT NULL ENABLE);
  ALTER TABLE "REVIEW" MODIFY ("RETITLE" NOT NULL ENABLE);
  ALTER TABLE "REVIEW" MODIFY ("REGRADE" NOT NULL ENABLE);
  ALTER TABLE "REVIEW" MODIFY ("RE_HITS" NOT NULL ENABLE);
  ALTER TABLE "REVIEW" MODIFY ("REDATE" NOT NULL ENABLE);
  ALTER TABLE "REVIEW" MODIFY ("RE_CON" NOT NULL ENABLE);
  ALTER TABLE "REVIEW" ADD PRIMARY KEY ("RENUM")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table SELLER
--------------------------------------------------------

  ALTER TABLE "SELLER" MODIFY ("SNUM" NOT NULL ENABLE);
  ALTER TABLE "SELLER" MODIFY ("BEUID" NOT NULL ENABLE);
  ALTER TABLE "SELLER" MODIFY ("SUNUM" NOT NULL ENABLE);
  ALTER TABLE "SELLER" ADD PRIMARY KEY ("SNUM")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table SHOPLIST
--------------------------------------------------------

  ALTER TABLE "SHOPLIST" MODIFY ("SLNUM" NOT NULL ENABLE);
  ALTER TABLE "SHOPLIST" MODIFY ("PNUM" NOT NULL ENABLE);
  ALTER TABLE "SHOPLIST" MODIFY ("SLCOUNT" NOT NULL ENABLE);
  ALTER TABLE "SHOPLIST" ADD PRIMARY KEY ("SLNUM")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table USERGRADE
--------------------------------------------------------

  ALTER TABLE "USERGRADE" MODIFY ("GRADE" NOT NULL ENABLE);
  ALTER TABLE "USERGRADE" MODIFY ("GBENEFIT" NOT NULL ENABLE);
  ALTER TABLE "USERGRADE" ADD PRIMARY KEY ("GRADENUM")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table VIDEO
--------------------------------------------------------

  ALTER TABLE "VIDEO" MODIFY ("VNUM" NOT NULL ENABLE);
  ALTER TABLE "VIDEO" MODIFY ("VNAME" NOT NULL ENABLE);
  ALTER TABLE "VIDEO" MODIFY ("VFILE" NOT NULL ENABLE);
  ALTER TABLE "VIDEO" MODIFY ("VUPDATE" NOT NULL ENABLE);
  ALTER TABLE "VIDEO" MODIFY ("PNUM" NOT NULL ENABLE);
  ALTER TABLE "VIDEO" MODIFY ("BEUID" NOT NULL ENABLE);
  ALTER TABLE "VIDEO" MODIFY ("SNUM" NOT NULL ENABLE);
  ALTER TABLE "VIDEO" MODIFY ("FORMNUM" NOT NULL ENABLE);
  ALTER TABLE "VIDEO" MODIFY ("FORMDATE" NOT NULL ENABLE);
  ALTER TABLE "VIDEO" MODIFY ("VTIME" NOT NULL ENABLE);
  ALTER TABLE "VIDEO" ADD PRIMARY KEY ("VNUM")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table AUCTION
--------------------------------------------------------

  ALTER TABLE "AUCTION" ADD FOREIGN KEY ("BEUID")
	  REFERENCES "BE_USER" ("BEUID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table GBUY
--------------------------------------------------------

  ALTER TABLE "GBUY" ADD FOREIGN KEY ("GNUM")
	  REFERENCES "PGROUP" ("GNUM") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ORDERDELIVERY
--------------------------------------------------------

  ALTER TABLE "ORDERDELIVERY" ADD FOREIGN KEY ("BEUID")
	  REFERENCES "BE_USER" ("BEUID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "ORDERDELIVERY" ADD FOREIGN KEY ("PNUM")
	  REFERENCES "PRODUCT" ("PNUM") ON DELETE CASCADE ENABLE;
  ALTER TABLE "ORDERDELIVERY" ADD FOREIGN KEY ("DCNUM")
	  REFERENCES "DELIVERYCOM" ("DCNUM") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PCHARGE
--------------------------------------------------------

  ALTER TABLE "PCHARGE" ADD FOREIGN KEY ("BEUID")
	  REFERENCES "BE_USER" ("BEUID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PPAY
--------------------------------------------------------

  ALTER TABLE "PPAY" ADD FOREIGN KEY ("BEUID")
	  REFERENCES "BE_USER" ("BEUID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PRODUCT
--------------------------------------------------------

  ALTER TABLE "PRODUCT" ADD FOREIGN KEY ("CTNUM")
	  REFERENCES "CATEGORY" ("CTNUM") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table QNA
--------------------------------------------------------

  ALTER TABLE "QNA" ADD FOREIGN KEY ("BEUID")
	  REFERENCES "BE_USER" ("BEUID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table VIDEO
--------------------------------------------------------

  ALTER TABLE "VIDEO" ADD FOREIGN KEY ("SNUM")
	  REFERENCES "SELLER" ("SNUM") ON DELETE CASCADE ENABLE;
