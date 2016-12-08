----------------------- È¸¿ø°ü¸® p_member
DROP TABLE p_member;
CREATE TABLE p_member (
mId VARCHAR2(20) PRIMARY KEY,
mPw VARCHAR2(25) NOT NULL,
mName VARCHAR2(20) NOT NULL,
mPhone NUMBER(30) NOT NULL,
mEmail VARCHAR2(60) NOT NULL,
mAddress VARCHAR2(100));

INSERT INTO  p_member VALUES ('user', '1234','È«±æµ¿', 01012341234, 'abcd@naver.com','Áß¾ÓÇÐ¿ø');
SELECT * FROM p_member;
--------------------------ÆÀ°ü¸® p_team
DROP TABLE p_team;
CREATE TABLE p_team(
tId number(10) PRIMARY KEY,
tName varchar2(50) NOT NULL); 

DROP SEQUENCE tId_SQ;
CREATE SEQUENCE tId_SQ;

INSERT INTO p_team VALUES (tId_SQ.NEXTVAL, 'ABC');
SELECT * FROM p_team;

-------------------------È¸¿ø_ÆÀ  p_tm_conn
DROP TABLE p_tm_conn;
CREATE TABLE p_tm_conn (
tId NUMBER(10) REFERENCES p_team(tId),
mId VARCHAR2(25) REFERENCES p_member(mId),
tmLeader NUMBER(1) DEFAULT 0,
tmOk NUMBER(1) DEFAULT 0);

INSERT INTO p_tm_conn VALUES (1, 'user',1,1);
SELECT * FROM p_tm_conn;
COMMIT;