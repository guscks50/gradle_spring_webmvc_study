-- 주소
CREATE TABLE "address" (
		"addr_id" <데이터 타입 없음> NOT NULL COMMENT '주소코드' ,
		"COL2" <데이터 타입 없음> NULL COMMENT '새 컬럼' 
);

INSERT INTO _cub_schema_comments (table_name, column_name, description, last_updated, last_updated_user) VALUES ('address', '*', '주소', systimestamp, CURRENT_USER);

-- 주소
ALTER TABLE "address"
	ADD CONSTRAINT "PK_address" -- 주소 기본키
	PRIMARY KEY (
		"addr_id" -- 주소코드
	);

INSERT INTO _cub_schema_comments (table_name, column_name, description, last_updated, last_updated_user) VALUES ('address', 'addr_id', '주소코드', systimestamp, CURRENT_USER);

INSERT INTO _cub_schema_comments (table_name, column_name, description, last_updated, last_updated_user) VALUES ('address', 'COL2', '새 컬럼', systimestamp, CURRENT_USER);

-- 회원
CREATE TABLE "member" (
		"id" VARCHAR2(20) NOT NULL COMMENT '회원이이디' ,
		"pwd" VARCHAR2(20) NULL COMMENT '회원암호' ,
		"name" VARCHAR2(20) NULL COMMENT '회원이름' ,
		"email" VARCHAR2(30) NULL COMMENT '회원이메일' ,
		"address" VARCHAR2(40) NULL COMMENT '주소' ,
		"phone" varchar2(30) NULL COMMENT '전화번호' ,
		"useyn" CHAR(1) NULL COMMENT '탈퇴여부' ,
		"indate" DATE NULL COMMENT '가입일' 
);

INSERT INTO _cub_schema_comments (table_name, column_name, description, last_updated, last_updated_user) VALUES ('member', '*', '회원', systimestamp, CURRENT_USER);

-- 회원
ALTER TABLE "member"
	ADD CONSTRAINT "PK_member" -- 회원 기본키
	PRIMARY KEY (
		"id" -- 회원이이디
	);

INSERT INTO _cub_schema_comments (table_name, column_name, description, last_updated, last_updated_user) VALUES ('member', 'id', '회원이이디', systimestamp, CURRENT_USER);

INSERT INTO _cub_schema_comments (table_name, column_name, description, last_updated, last_updated_user) VALUES ('member', 'pwd', '회원암호', systimestamp, CURRENT_USER);

INSERT INTO _cub_schema_comments (table_name, column_name, description, last_updated, last_updated_user) VALUES ('member', 'name', '회원이름', systimestamp, CURRENT_USER);

INSERT INTO _cub_schema_comments (table_name, column_name, description, last_updated, last_updated_user) VALUES ('member', 'email', '회원이메일', systimestamp, CURRENT_USER);

INSERT INTO _cub_schema_comments (table_name, column_name, description, last_updated, last_updated_user) VALUES ('member', 'address', '주소', systimestamp, CURRENT_USER);

INSERT INTO _cub_schema_comments (table_name, column_name, description, last_updated, last_updated_user) VALUES ('member', 'phone', '전화번호', systimestamp, CURRENT_USER);

INSERT INTO _cub_schema_comments (table_name, column_name, description, last_updated, last_updated_user) VALUES ('member', 'useyn', '탈퇴여부', systimestamp, CURRENT_USER);

INSERT INTO _cub_schema_comments (table_name, column_name, description, last_updated, last_updated_user) VALUES ('member', 'indate', '가입일', systimestamp, CURRENT_USER);

-- 상품대분류
CREATE TABLE "TABLE3" (
		"COL" <데이터 타입 없음> NOT NULL COMMENT '상품대분류' 
);

INSERT INTO _cub_schema_comments (table_name, column_name, description, last_updated, last_updated_user) VALUES ('TABLE3', '*', '상품대분류', systimestamp, CURRENT_USER);

-- 상품대분류
ALTER TABLE "TABLE3"
	ADD CONSTRAINT "PK_TABLE3" -- 상품대분류 기본키
	PRIMARY KEY (
		"COL" -- 상품대분류
	);

INSERT INTO _cub_schema_comments (table_name, column_name, description, last_updated, last_updated_user) VALUES ('TABLE3', 'COL', '상품대분류', systimestamp, CURRENT_USER);

-- 상품소분류
CREATE TABLE "TABLE4" (
		"COL" <데이터 타입 없음> NOT NULL COMMENT '상품소분류' 
);

INSERT INTO _cub_schema_comments (table_name, column_name, description, last_updated, last_updated_user) VALUES ('TABLE4', '*', '상품소분류', systimestamp, CURRENT_USER);

-- 상품소분류
ALTER TABLE "TABLE4"
	ADD CONSTRAINT "PK_TABLE4" -- 상품소분류 기본키
	PRIMARY KEY (
		"COL" -- 상품소분류
	);

INSERT INTO _cub_schema_comments (table_name, column_name, description, last_updated, last_updated_user) VALUES ('TABLE4', 'COL', '상품소분류', systimestamp, CURRENT_USER);

-- 관리자
CREATE TABLE "worker" (
		"id" VARCHAR2(20) NOT NULL COMMENT '아이디' ,
		"pwd" VARCHAR2(20) NULL COMMENT '암호' ,
		"name" VARCHAR2(20) NULL COMMENT '이름' ,
		"phone" varchar2(30) NULL COMMENT '전화번호' 
);

INSERT INTO _cub_schema_comments (table_name, column_name, description, last_updated, last_updated_user) VALUES ('worker', '*', '관리자', systimestamp, CURRENT_USER);

-- 관리자
ALTER TABLE "worker"
	ADD CONSTRAINT "PK_worker" -- 관리자 기본키
	PRIMARY KEY (
		"id" -- 아이디
	);

INSERT INTO _cub_schema_comments (table_name, column_name, description, last_updated, last_updated_user) VALUES ('worker', 'id', '아이디', systimestamp, CURRENT_USER);

INSERT INTO _cub_schema_comments (table_name, column_name, description, last_updated, last_updated_user) VALUES ('worker', 'pwd', '암호', systimestamp, CURRENT_USER);

INSERT INTO _cub_schema_comments (table_name, column_name, description, last_updated, last_updated_user) VALUES ('worker', 'name', '이름', systimestamp, CURRENT_USER);

INSERT INTO _cub_schema_comments (table_name, column_name, description, last_updated, last_updated_user) VALUES ('worker', 'phone', '전화번호', systimestamp, CURRENT_USER);

-- 주소
CREATE TABLE "addresses" (
		"addr_id" NUMBER NOT NULL COMMENT '주소코드' ,
		"street" VARCHAR2(50) NOT NULL COMMENT '도로' ,
		"city" VARCHAR2(50) NOT NULL COMMENT '시' ,
		"state" VARCHAR2(50) NOT NULL COMMENT '구' ,
		"zio" VARCHAR2(10) NULL COMMENT '우편번호' ,
		"county" VARCHAR2(50) NOT NULL COMMENT '읍' 
);

INSERT INTO _cub_schema_comments (table_name, column_name, description, last_updated, last_updated_user) VALUES ('addresses', '*', '주소', systimestamp, CURRENT_USER);

-- 주소
ALTER TABLE "addresses"
	ADD CONSTRAINT "PK_addresses" -- 주소 기본키
	PRIMARY KEY (
		"addr_id" -- 주소코드
	);

INSERT INTO _cub_schema_comments (table_name, column_name, description, last_updated, last_updated_user) VALUES ('addresses', 'addr_id', '주소코드', systimestamp, CURRENT_USER);

INSERT INTO _cub_schema_comments (table_name, column_name, description, last_updated, last_updated_user) VALUES ('addresses', 'street', '도로', systimestamp, CURRENT_USER);

INSERT INTO _cub_schema_comments (table_name, column_name, description, last_updated, last_updated_user) VALUES ('addresses', 'city', '시', systimestamp, CURRENT_USER);

INSERT INTO _cub_schema_comments (table_name, column_name, description, last_updated, last_updated_user) VALUES ('addresses', 'state', '구', systimestamp, CURRENT_USER);

INSERT INTO _cub_schema_comments (table_name, column_name, description, last_updated, last_updated_user) VALUES ('addresses', 'zio', '우편번호', systimestamp, CURRENT_USER);

INSERT INTO _cub_schema_comments (table_name, column_name, description, last_updated, last_updated_user) VALUES ('addresses', 'county', '읍', systimestamp, CURRENT_USER);

-- 상품
CREATE TABLE "product" (
		"pd_num" NUMBER(5) NOT NULL COMMENT '상품번호' ,
		"pd_name" VARCHAR2(20) NULL COMMENT '상품이름' ,
		"kind" VARCHAR2(10) NULL COMMENT '종류' ,
		"price" NUMBER NULL COMMENT '가격' ,
		"origin_price" NUMBER NULL COMMENT '상품원가' ,
		"pd_content" VARCHAR2(1000) NULL COMMENT '상품내용' ,
		"pd_image" VARCHAR2(50) NULL COMMENT '상품이미지' ,
		"useyn" CHAR(1) NULL COMMENT '탈퇴여부' ,
		"best_pd" CHAR(1) NULL COMMENT '베스트상품여부' ,
		"indate" DATE NULL COMMENT '가입일' 
);

INSERT INTO _cub_schema_comments (table_name, column_name, description, last_updated, last_updated_user) VALUES ('product', '*', '상품', systimestamp, CURRENT_USER);

-- 상품
ALTER TABLE "product"
	ADD CONSTRAINT "PK_product" -- 상품 기본키
	PRIMARY KEY (
		"pd_num" -- 상품번호
	);

INSERT INTO _cub_schema_comments (table_name, column_name, description, last_updated, last_updated_user) VALUES ('product', 'pd_num', '상품번호', systimestamp, CURRENT_USER);

INSERT INTO _cub_schema_comments (table_name, column_name, description, last_updated, last_updated_user) VALUES ('product', 'pd_name', '상품이름', systimestamp, CURRENT_USER);

INSERT INTO _cub_schema_comments (table_name, column_name, description, last_updated, last_updated_user) VALUES ('product', 'kind', '종류', systimestamp, CURRENT_USER);

INSERT INTO _cub_schema_comments (table_name, column_name, description, last_updated, last_updated_user) VALUES ('product', 'price', '가격', systimestamp, CURRENT_USER);

INSERT INTO _cub_schema_comments (table_name, column_name, description, last_updated, last_updated_user) VALUES ('product', 'origin_price', '상품원가', systimestamp, CURRENT_USER);

INSERT INTO _cub_schema_comments (table_name, column_name, description, last_updated, last_updated_user) VALUES ('product', 'pd_content', '상품내용', systimestamp, CURRENT_USER);

INSERT INTO _cub_schema_comments (table_name, column_name, description, last_updated, last_updated_user) VALUES ('product', 'pd_image', '상품이미지', systimestamp, CURRENT_USER);

INSERT INTO _cub_schema_comments (table_name, column_name, description, last_updated, last_updated_user) VALUES ('product', 'useyn', '탈퇴여부', systimestamp, CURRENT_USER);

INSERT INTO _cub_schema_comments (table_name, column_name, description, last_updated, last_updated_user) VALUES ('product', 'best_pd', '베스트상품여부', systimestamp, CURRENT_USER);

INSERT INTO _cub_schema_comments (table_name, column_name, description, last_updated, last_updated_user) VALUES ('product', 'indate', '가입일', systimestamp, CURRENT_USER);

-- QNA게시판
CREATE TABLE "qna" (
		"qna_num" NUMBER NOT NULL COMMENT '글번호' ,
		"subject" VARCHAR2(40) NULL COMMENT '제목' ,
		"content" VARCHAR2(1000) NULL COMMENT '내용' ,
		"as_content" VARCHAR2(1000) NULL COMMENT '답변내용' ,
		"id" VARCHAR2(20) NULL COMMENT '아이디' ,
		"useyn" CHAR(1) NULL COMMENT '탈퇴여부' ,
		"indate" DATE NULL COMMENT '작성일' 
);

INSERT INTO _cub_schema_comments (table_name, column_name, description, last_updated, last_updated_user) VALUES ('qna', '*', 'QNA게시판', systimestamp, CURRENT_USER);

-- QNA게시판
ALTER TABLE "qna"
	ADD CONSTRAINT "PK_qna" -- QNA게시판 기본키
	PRIMARY KEY (
		"qna_num" -- 글번호
	);

INSERT INTO _cub_schema_comments (table_name, column_name, description, last_updated, last_updated_user) VALUES ('qna', 'qna_num', '글번호', systimestamp, CURRENT_USER);

INSERT INTO _cub_schema_comments (table_name, column_name, description, last_updated, last_updated_user) VALUES ('qna', 'subject', '제목', systimestamp, CURRENT_USER);

INSERT INTO _cub_schema_comments (table_name, column_name, description, last_updated, last_updated_user) VALUES ('qna', 'content', '내용', systimestamp, CURRENT_USER);

INSERT INTO _cub_schema_comments (table_name, column_name, description, last_updated, last_updated_user) VALUES ('qna', 'as_content', '답변내용', systimestamp, CURRENT_USER);

INSERT INTO _cub_schema_comments (table_name, column_name, description, last_updated, last_updated_user) VALUES ('qna', 'id', '아이디', systimestamp, CURRENT_USER);

INSERT INTO _cub_schema_comments (table_name, column_name, description, last_updated, last_updated_user) VALUES ('qna', 'useyn', '탈퇴여부', systimestamp, CURRENT_USER);

INSERT INTO _cub_schema_comments (table_name, column_name, description, last_updated, last_updated_user) VALUES ('qna', 'indate', '작성일', systimestamp, CURRENT_USER);

-- 주문
CREATE TABLE "TABLE7" (
);

INSERT INTO _cub_schema_comments (table_name, column_name, description, last_updated, last_updated_user) VALUES ('TABLE7', '*', '주문', systimestamp, CURRENT_USER);

-- 주문
CREATE TABLE "order" (
		"od_num" NUMBER(5) NOT NULL COMMENT '주문번호' ,
		"id" VARCHAR2(20) NULL COMMENT '회원이이디' ,
		"indate" DATE NULL COMMENT '가입일' 
);

INSERT INTO _cub_schema_comments (table_name, column_name, description, last_updated, last_updated_user) VALUES ('order', '*', '주문', systimestamp, CURRENT_USER);

-- 주문
ALTER TABLE "order"
	ADD CONSTRAINT "PK_order" -- 주문 기본키
	PRIMARY KEY (
		"od_num" -- 주문번호
	);

INSERT INTO _cub_schema_comments (table_name, column_name, description, last_updated, last_updated_user) VALUES ('order', 'od_num', '주문번호', systimestamp, CURRENT_USER);

INSERT INTO _cub_schema_comments (table_name, column_name, description, last_updated, last_updated_user) VALUES ('order', 'id', '회원이이디', systimestamp, CURRENT_USER);

INSERT INTO _cub_schema_comments (table_name, column_name, description, last_updated, last_updated_user) VALUES ('order', 'indate', '가입일', systimestamp, CURRENT_USER);

-- 주문상세
CREATE TABLE "order_detail" (
		"od_num" NUMBER(5) NULL COMMENT '주문번호' ,
		"pd_num" NUMBER(5) NULL COMMENT '상품번호' ,
		"quanity" NUMBER NULL COMMENT '수량' ,
		"result" CHAR(1) NULL COMMENT '처리완료여부' 
);

INSERT INTO _cub_schema_comments (table_name, column_name, description, last_updated, last_updated_user) VALUES ('order_detail', '*', '주문상세', systimestamp, CURRENT_USER);

INSERT INTO _cub_schema_comments (table_name, column_name, description, last_updated, last_updated_user) VALUES ('order_detail', 'od_num', '주문번호', systimestamp, CURRENT_USER);

INSERT INTO _cub_schema_comments (table_name, column_name, description, last_updated, last_updated_user) VALUES ('order_detail', 'pd_num', '상품번호', systimestamp, CURRENT_USER);

INSERT INTO _cub_schema_comments (table_name, column_name, description, last_updated, last_updated_user) VALUES ('order_detail', 'quanity', '수량', systimestamp, CURRENT_USER);

INSERT INTO _cub_schema_comments (table_name, column_name, description, last_updated, last_updated_user) VALUES ('order_detail', 'result', '처리완료여부', systimestamp, CURRENT_USER);

-- 장바구니
CREATE TABLE "cart" (
		"cart_num" NUMBER NOT NULL COMMENT '장바구니번호' ,
		"id" VARCHAR2(20) NULL COMMENT '아이디' ,
		"pd_num" NUMBER(5) NULL COMMENT '상품번호' ,
		"quanity" NUMBER(5) NULL COMMENT '수량' ,
		"result" CHAR(1) NULL COMMENT '처리완료여부' ,
		"indate" DATE NULL COMMENT '가입일' 
);

INSERT INTO _cub_schema_comments (table_name, column_name, description, last_updated, last_updated_user) VALUES ('cart', '*', '장바구니', systimestamp, CURRENT_USER);

-- 장바구니
ALTER TABLE "cart"
	ADD CONSTRAINT "PK_cart" -- 장바구니 기본키
	PRIMARY KEY (
		"cart_num" -- 장바구니번호
	);

INSERT INTO _cub_schema_comments (table_name, column_name, description, last_updated, last_updated_user) VALUES ('cart', 'cart_num', '장바구니번호', systimestamp, CURRENT_USER);

INSERT INTO _cub_schema_comments (table_name, column_name, description, last_updated, last_updated_user) VALUES ('cart', 'id', '아이디', systimestamp, CURRENT_USER);

INSERT INTO _cub_schema_comments (table_name, column_name, description, last_updated, last_updated_user) VALUES ('cart', 'pd_num', '상품번호', systimestamp, CURRENT_USER);

INSERT INTO _cub_schema_comments (table_name, column_name, description, last_updated, last_updated_user) VALUES ('cart', 'quanity', '수량', systimestamp, CURRENT_USER);

INSERT INTO _cub_schema_comments (table_name, column_name, description, last_updated, last_updated_user) VALUES ('cart', 'result', '처리완료여부', systimestamp, CURRENT_USER);

INSERT INTO _cub_schema_comments (table_name, column_name, description, last_updated, last_updated_user) VALUES ('cart', 'indate', '가입일', systimestamp, CURRENT_USER);

-- 주문
ALTER TABLE "order"
	ADD CONSTRAINT "FK_member_TO_order" -- 회원 -> 주문
	FOREIGN KEY (
		"id" -- 회원이이디
	)
	REFERENCES "member" ( -- 회원
		"id" -- 회원이이디
	);

-- 주문상세
ALTER TABLE "order_detail"
	ADD CONSTRAINT "FK_order_TO_order_detail" -- 주문 -> 주문상세
	FOREIGN KEY (
		"od_num" -- 주문번호
	)
	REFERENCES "order" ( -- 주문
		"od_num" -- 주문번호
	);

-- 주문상세
ALTER TABLE "order_detail"
	ADD CONSTRAINT "FK_product_TO_order_detail" -- 상품 -> 주문상세
	FOREIGN KEY (
		"pd_num" -- 상품번호
	)
	REFERENCES "product" ( -- 상품
		"pd_num" -- 상품번호
	);

-- 장바구니
ALTER TABLE "cart"
	ADD CONSTRAINT "FK_product_TO_cart" -- 상품 -> 장바구니
	FOREIGN KEY (
		"pd_num" -- 상품번호
	)
	REFERENCES "product" ( -- 상품
		"pd_num" -- 상품번호
	);

-- 장바구니
ALTER TABLE "cart"
	ADD CONSTRAINT "FK_member_TO_cart" -- 회원 -> 장바구니
	FOREIGN KEY (
		"id" -- 아이디
	)
	REFERENCES "member" ( -- 회원
		"id" -- 회원이이디
	);