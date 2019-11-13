
-- 유저 생성
create user beshop06 identified by beshop06;
	grant connect, resource, dba to beshop06; 

-- 유저 테이블 조회
select * from user_tables;

-----------------------------------------------------------------------------
-----------------Trigger---------------------------

-- (가입시 포인트 0원 주기)
CREATE TRIGGER NewMemPoint
AFTER INSERT ON be_user
FOR EACH ROW 
BEGIN 
	INSERT INTO PBALANCE (BALANCENUM, CHARGENUM, PBALNOW, BEUID) 
		VALUES ((SELECT NVL(MAX(BALANCENUM),0) +1 FROM PBALANCE),0, 0,
		:new.BEUID);
END;

-- (포인트 충전트리거)
CREATE TRIGGER PLUSPOINT
AFTER INSERT ON PCHARGE
FOR EACH ROW 
BEGIN 
	UPDATE PBALANCE SET
		PBALNOW =:new.CHARGELIST+PBALNOW,
		CHARGENUM = :new.CHARGENUM
		WHERE BEUID = :new.BEUID;
END;

-- (포인트 사용트리거)
CREATE TRIGGER MINUSPOINT
AFTER INSERT ON PPAY
FOR EACH ROW 
BEGIN 
	UPDATE PBALANCE SET
		PBALNOW =PBALNOW-:new.PAYLIST,
		PAYNUM = :new.PAYNUM
		WHERE BEUID = :new.BEUID;
END;

-- (현재 보유포인트 구하기)
SELECT BEUID, PBALNOW FROM PBALANCE WHERE BEUID = 'nine';

--------------------------------------------------------------------
--------------Table(테이블)-----------------

-- PBALANCE

CREATE TABLE PBALANCE(
	BALANCENUM NUMBER PRIMARY KEY,
	CHARGENUM NUMBER,
	PAYNUM NUMBER,
	PBALNOW NUMBER NOT NULL,
	BEUID  VARCHAR2(20) NOT NULL
);

--  ppay

CREATE TABLE PPAY(
	paynum number primary key,
	beuid varchar2(20) not null references be_user(beuid),
	paydate date not null,
	paylist number not null
);


-- PCHARGE

CREATE TABLE PCHARGE(
	chargenum number primary key,
	beuid varchar2(20) not null references be_user(beuid),
	chargedate date not null,
	chargelist number not null,
	chargemethod varchar2(20)
);

-- category

create table category(ctnum number primary key not null,
 bigname varchar2(100) not null,
 smname varchar2(100));

-- product 상품
/*
create table product(
 Pnum number primary key not null,
 constraints fk_ctnum ctnum number references category(ctnum) not null on delete cascade,
 p_date date not null,
 as_info varchar2(100) not null,
 p_cdate date not null,
 pname varchar2(30) not null,
 brand varchar2(30) not null,
 stock number not null,
 p_category varchar2(30) not null,
 p_image varchar2(200) not null,
 p_sangse varchar2(200) not null,
p_price number not null,
 company varchar2(30) not null,
 origin varchar2(50) not null,
 select_op varchar2(20),
 likes number not null,
 hits number not null,
);
*/
CREATE TABLE "BESHOP06"."PRODUCT" 
   (   "PNUM" NUMBER NOT NULL ENABLE, 
   "CTNUM" NUMBER NOT NULL ENABLE, 
   "P_DATE" DATE NOT NULL ENABLE, 
   "AS_INFO" VARCHAR2(100 BYTE), 
   "P_CDATE" DATE NOT NULL ENABLE, 
   "PNAME" VARCHAR2(100 BYTE) NOT NULL ENABLE, 
   "DETAIL" VARCHAR2(500 BYTE) NOT NULL ENABLE, 
   "STOCK" NUMBER NOT NULL ENABLE, 
   "P_CATEGOGY" VARCHAR2(50 BYTE) NOT NULL ENABLE, 
   "P_VIDEO" VARCHAR2(100 BYTE) NOT NULL ENABLE, 
   "P_SANGSE" VARCHAR2(100 BYTE) NOT NULL ENABLE, 
   "OPTION1" VARCHAR2(30 BYTE), 
   "SELECT_OP1" VARCHAR2(100 BYTE), 
   "OPTION2" VARCHAR2(30 BYTE), 
   "SELECT_OP2" VARCHAR2(100 BYTE), 
   "OPTION3" VARCHAR2(30 BYTE), 
   "SELECT_OP3" VARCHAR2(100 BYTE), 
   "LIKES" NUMBER NOT NULL ENABLE, 
   "HITS" NUMBER NOT NULL ENABLE, 
   "P_PRICE" NUMBER NOT NULL ENABLE, 
   "ORIGIN" VARCHAR2(100 BYTE), 
   "P_SPRICE" NUMBER, 
   "AUCTION" CHAR(2 BYTE), 
   "BEUID" VARCHAR2(40 BYTE), 
    PRIMARY KEY ("PNUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE, 
    FOREIGN KEY ("CTNUM")
     REFERENCES "BESHOP06"."CATEGORY" ("CTNUM") ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

-- pgroup(분류)

create table pgroup(
gnum number primary key not null,
constraints fk_Pnum PNUM number not null references PRODUCT(PNUM) on delete cascade,
pg number not null
);



-- gbuy 공동구매

create table gbuy(
constraints fk_pnum pnum number not null references product(pnum) on delete cascade,
constraints fk_gnum gnum number not null references pgroup(gnum) on delete cascade,
primary key(pnum));

-- shopping(쇼핑)

create table shopping(
constraints fk_Pnum pnum number not null references product(pnum) ON DELETE CASCADE,
constraints fk_chnum chnum number not null  references channel(chnum) on delete cascade,
constraints fk_gnum gnum number not null references pgroup(gnum) on delete cascade,
small_search varchar2(30),
primary key(pnum)
);

-- shoplist(장바구니)

create table shoplist(
slnum number primary key not null,
constraints fk_Pnum pnum number not null references product(pnum) on delete cascade,
slcount number not null
);

-- review(상품후기)

create table review(renum number primary key not null,
constraints fk_UID beuid varchar2(20) not null  references be_user(beuid) on delete cascade,
constraints fk_Pnum pnum number not null references product(pnum) on delete cascade,
retitle varchar2(100) not null,
regrade number not null,
re_hits number not null,
redate date not null,
re_con varchar2(500) not null,
re_answer varchar2(500),
re_ref number ,
re_refNo number
);

-- video(영상)

CREATE TABLE Video (
       Vnum  NUMBER NOT NULL primary key,
       vname  varchar2(100) not null,
       vfile   varchar2(100) not null,
       Vupdate        DATE NOT NULL,
 constraints fk_Pnum Pnum  NUMBER NOT NULL  REFERENCES Product(Pnum) on delete cascade,
 constraints fk_UID beUid  VARCHAR2(20) NOT NULL REFERENCES be_user(beUid) on delete cascade,
 constraints fk_Snum Snum  NUMBER  NOT NULL   REFERENCES seller(Snum) on delete cascade, 
       Formnum  NUMBER NOT NULL,
       Formdate  DATE NOT NULL,
       Vtime  timestamp NOT NULL,
       vtag  varchar2(50)     
);

-- Channel(채널)
/*
CREATE TABLE Channel (
       Chnum          NUMBER NOT NULL primary key,
       Snum           NUMBER NOT NULL
);
*/
create table channel (
    chnum number primary key,
    ch_name varchar2(50),
    ch_img varchar2(100),
    constraints fk_b beuid varchar2(50) not null references be_user(beuid) on delete cascade
);



-- Recentbroadcast(최근 본 영상)

CREATE TABLE Recentbroadcast (
 constraints fk_UID beUid VARCHAR2(20) NOT NULL REFERENCES be_user(beUid) on delete cascade,
 constraints fk_VNUM Vnum NUMBER NOT NULL REFERENCES Video(Vnum) on delete cascade,
 constraints fk_Pnum Pnum NUMBER NOT NULL REFERENCES product(Pnum) on delete cascade,
 Primary key(beUid)
);

-- Seller(판매자)

CREATE TABLE Seller (
       Snum           NUMBER NOT NULL primary key,
       constraints fk_UID beUid VARCHAR2(20) NOT NULL references be_user(beuid) on delete cascade,
       constraints fk_Pnum Pnum NUMBER null references product(pnum) on delete cascade,
       Sunum       Number not null
);

-- Sub(구독)

/*
CREATE TABLE Sub(
       constraints fk_Snum Snum  NUMBER  NOT NULL   REFERENCES Seller(Snum) on delete cascade,
       constraints fk_UID beUid  VARCHAR2(20)  NOT NULL  REFERENCES  be_user(beUid) on delete cascade,
Primary key(beUid)
);
*/

CREATE TABLE "BESHOP06"."SUB" 
   (   "BEUID" VARCHAR2(40 BYTE), 
   "SBEUID" VARCHAR2(40 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

-- Qna(문의내역)

/*
CREATE TABLE Qna (
       Qnanum             NUMBER NOT NULL primary key,
       Sec_pw             VARCHAR2(20) NULL,
       Qna_title         VARCHAR2(50) NOT NULL,
       Qna_con             VARCHAR2(500) NOT NULL,
       Qna_answer         VARCHAR2(500) NULL,
       constraints fk_UID beUid    VARCHAR2(20) NULL REFERENCES be_User(beUid) on delete cascade,
       constraints fk_PNUM Pnum   NUMBER NULL REFERENCES Product(Pnum) on delete cascade,
       Answer_time             DATE NULL,
       Regist_date             DATE NOT NULL,
       Qna_category         VARCHAR2(40) NOT NULL,
       Qna_ref       NUMBER ,
       Qna_refNo    NUMBER
);
*/
CREATE TABLE Qna (
       Qnanum             NUMBER NOT NULL primary key,
       Qna_title         VARCHAR2(50) NOT NULL,
       Qna_con             VARCHAR2(500) NOT NULL,
       Qna_answer         VARCHAR2(500) NULL,
       beUid               VARCHAR2(20) NULL REFERENCES be_User(beUid),
       Pnum         NUMBER NULL REFERENCES Product(Pnum),
       Answer_time             DATE NULL,
       Regist_date             DATE NOT NULL,
       Qna_category                 number(20),
       qna_email varchar2(30)
);



-- customer(구매자)

create table customer (
 beuid varchar2(20) primary key,
 constraints fk_SLNUM slnum number references shoplist(slnum) on delete cascade,
 constraints fk_onum onum number not null references orderDelivery(onum) on delete cascade 
);

-- purchase(구매)

create table purchase(
 Pcnum  NUMBER  primary key,
 constraints fk_PNUM Pnum  NUMBER  not null  references  product(pnum) on delete cascade, 
 Pc_count  NUMBER  not null,
 Pc_price  NUMBER  not null,
 Pc_phone  VARCHAR2(15)  not null,
 Zipcode   char(5)  not null,
 Pc_addr1  VARCHAR2(100)  not null,
Pc_addr2  VARCHAR2(100)  not null
);

-- pay(결제)

/*
create table pay(
 Paynum  NUMBER  primary key,
 Payway  VARCHAR2(40)  not null,
 PayCondition  VARCHAR2(50)  not null,
 Paydate  DATE  not null,
 PayPrice  NUMBER  not null,
 Approvenum  NUMBER  not null,
 constraints fk_PCNUM Pcnum  NUMBER  not null  references  purchase(pcnum) on delete cascade
);
*/
CREATE TABLE pay(
   paynum number primary key,
   payway VARCHAR2(40 BYTE), 
   PAYCONDITION VARCHAR2(50 BYTE), 
   PAYDATE DATE, 
   PAYPRICE NUMBER, 
   APPROVENUM NUMBER, 
   PNUM NUMBER);     

-- orderDelivery(주문배송)

/*
create table orderDelivery(
 Onum  NUMBER  primary key,
 constraints fk_U beUid  VARCHAR2(20) not null references be_user(beuid) on delete cascade,
 constraints fk_P Pnum  NUMBER  not null  references  product(pnum) on delete cascade,
 constraints fk_D Dcnum  NUMBER  not null  references  deliveryCom(dcnum) on delete cascade,
 Ocount  NUMBER  not null,
 Oprice  NUMBER  not null, 
 Oaddr1  VARCHAR2(100)  not null,
 Oaddr2  VARCHAR2(100)  not null,
 Ophone  VARCHAR2(15)  not null,
 odzip  char(5)  not null,
 odate  DATE,
 dstatus  VARCHAR2(50) default '배송준비중'
);
*/
create table orderDelivery(
 Onum  NUMBER  primary key,
 constraints fk_U beUid  VARCHAR2(20) not null references be_user(beuid) on delete cascade,
 constraints fk_P Pnum  NUMBER  not null  references  product(pnum) on delete cascade,
 constraints fk_D Dcnum  NUMBER  not null  references  deliveryCom(dcnum) on delete cascade,
 constraints fk_pay paynum number not null references pay(paynum) on delete cascade,
 ONAME VARCHAR2(100) NOT NULL,
 Ocount  NUMBER  not null,
 Oprice  NUMBER  not null, 
 Oaddr1  VARCHAR2(100)  not null,
 Oaddr2  VARCHAR2(100)  not null,
 Ophone  VARCHAR2(15)  not null,
 odzip  char(5)  not null,
 odate  DATE,
 dprice number,
 dstatus  VARCHAR2(50) default '배송준비중',
 omemo varchar2(100),
 receivename varchar2(10),
 paymethod varchar2(20)
);

-- auction

create table auction( anum number not null,
beuid VARCHAR2(30) not null REFERENCES be_user(beuid),
price number not null,
day date not null,
cnt number not null,
endday date not null
);


-- Deliverycom(택배업체)

/*
create table Deliverycom(
 Dcnum   NUMBER  primary key, 
 Licensenum   number not null,
 Dcname    varchar2(100)  not null,
 Dcphone   number  not null, 
 Dcaddr   VARCHAR2(100)  not null,
 Dcharge   VARCHAR2(100),
 Dnum   VARCHAR2(30)
);
alter table orderdelivery modify dstatus varchar2(30) default '배송준비중';
*/

CREATE TABLE "BESHOP06"."DELIVERYCOM" 
   (   "DCNUM" NUMBER, 
   "LICENSENUM" NUMBER NOT NULL ENABLE, 
   "DCNAME" VARCHAR2(50 BYTE) NOT NULL ENABLE, 
   "DCPHONE" NUMBER NOT NULL ENABLE, 
   "DCADDR" VARCHAR2(100 BYTE) NOT NULL ENABLE, 
   "DCHARGE" NUMBER NOT NULL ENABLE, 
   "DSTATUS" VARCHAR2(100 BYTE), 
   "DNUM" VARCHAR2(30 BYTE), 
    PRIMARY KEY ("DCNUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;


-- be_user(회원)

create table be_user (
    beuid varchar2(20) primary key,
    upw varchar2(20) not null,
    sex varchar2(20) not null,
    birth  varchar2(10) not null,
    uname varchar2(30) not null,
    loginlog timestamp not null,
    addr1 varchar2(100) ,
    addr2 varchar2(100) ,
    uphone varchar(11) not null,
    email varchar2(25) not null,
    joindate date not null,
    pf1 varchar2(20),
    pf2 varchar2(20),
    pf3 varchar2(20),
    snsid varchar2(50)
);

-- div(구분)

create table div(
    dnum number primary key,
constraints fk_Uid beUid varchar2(20) not null references be_user(beuid) on delete cascade,
    ds number not null
);

-- wishlist(위시리스트)

create table wishlist(
    wnum number primary key,
constraints fk_Uid beuid varchar2(20) not null references be_user(beuid) on delete cascade,
constraints fk_pnum pnum number not null references product(pnum) on delete cascade
);

-- Notify(신고)

CREATE TABLE Notify(
       Nonum NUMBER NOT NULL primary key,
constraints fk_vnum  Vnum NUMBER NOT NULL  REFERENCES Video(vnum) on delete cascade,
       No_con            VARCHAR2(500) NOT NULL,
       Notitle             VARCHAR2(100) NOT NULL,
constraints fk_Uid  beUid VARCHAR2(20) NOT NULL REFERENCES be_user(beuid) on delete cascade,
constraints fk_pnum  Pnum NUMBER null REFERENCES product(pnum) on delete cascade
);

-- FAQ

CREATE TABLE FAQ (
       FAQnum              NUMBER NOT NULL primary key,
       FAQname                VARCHAR2(100) NOT NULL,
       FAQ_con              VARCHAR2(500) NOT NULL
);

-- Notice(공지사항)

CREATE TABLE Notice (
     Noticenum        NUMBER NOT NULL primary key,
       Notice_ca         VARCHAR2(100) NOT NULL,
       Noticedate         DATE NOT NULL,
       Notice_con         VARCHAR2(500) NOT NULL,
Notice_name varchar2(100) not null
);

-- Administration(관리)

CREATE TABLE Administration(
       Ad_num             NUMBER NOT NULL primary key,
       Nonum             NUMBER REFERENCES notify(nonum) NOT NULL ,
     Noticenum        NUMBER REFERENCES Notice(noticenum) NOT NULL,
       FAQnum              NUMBER REFERENCES FAQ(FAQnum) NOT NULL,
       Enum           NUMBER REFERENCES EVENT(Enum) NOT NULL,
       Cqnanum             NUMBER NOT NULL
);

-- Admin(관리자)

CREATE TABLE Admin (
constraints fk_Uid  beUid  VARCHAR2(20) NOT NULL REFERENCES be_user(beuid) on delete cascade,
       Adminnum            NUMBER primary key
);

-- Event

CREATE TABLE Event     (
       Enum           NUMBER NOT NULL primary key,
       Ename          VARCHAR2(200) NOT NULL,
       Edate          DATE NOT NULL,
       E_image        VARCHAR2(100) NOT NULL
);

-- Cqna(질문)

CREATE TABLE Cqna (
   Cqnanum             NUMBER NOT NULL primary key,
   Cqnas            NUMBER NOT NULL,    
   Cqnaname         VARCHAR2(100) NOT NULL,
   Cqna_con            VARCHAR2(500) NOT NULL,
   Cq_answer         VARCHAR2(500) NULL,
   Cq_ref   number,
   Cq_refNo  number
);

-- usergrade(회원등급)

create table usergrade(
    gradenum number primary key,
    grade varchar2(20) not null,
    gbenefit varchar2(100) not null
);







