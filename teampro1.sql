----------------------- 회원관리 member
DROP TABLE member;

-- 회원테이블 생성
CREATE TABLE member (
  mId VARCHAR2(20) PRIMARY KEY,
  mPw VARCHAR2(25) NOT NULL,
  mName VARCHAR2(20) NOT NULL,
  mPhone1 VARCHAR2(30) NOT NULL,
  mPhone2 VARCHAR2(30) NOT NULL,
  mPhone3 VARCHAR2(30) NOT NULL,
  mEmail VARCHAR2(60) NOT NULL,
  mAddress1 VARCHAR2(100),
  mAddress2 VARCHAR2(100),
  mAddress3 VARCHAR2(100),
  mOut NUMBER DEFAULT 1
);
-- 회원가입
INSERT INTO  member 
  VALUES ('user', '1234','홍길동', '010', '1234', '1234', 'abcd@naver.com', '05055', '서울시', '마포구', 1);
  
-- 회원정보보기
SELECT *
  FROM MEMBER
  WHERE MID='user' AND MOUT=1;

-- 회원정보수정
UPDATE MEMBER
  SET MPW='1111', MPHONE1='017', MPHONE2='3333', MPHONE3='4444', MEMAIL='a@a.com', MADDRESS1='01', MADDRESS2='울산', MADDRESS3='중구'
  WHERE MID='user';

-- 회원탈퇴
UPDATE MEMBER
  SET MPW='1111', MPHONE1='017', MPHONE2='3333', MPHONE3='4444', MEMAIL='a@a.com', MADDRESS1='01', MADDRESS2='울산', MADDRESS3='중구', MOUT=0
  WHERE MID='user';

-- 아이디찾기
SELECT *
  FROM MEMBER
  WHERE MEMAIL='abcd@naver.com' and MPHONE1='010' AND MPHONE2='1234' AND MPHONE3='1234' and MOUT=1;

-- 비번찾기
SELECT *
  FROM MEMBER
  WHERE MID='user' and MEMAIL='abcd@naver.com' and MOUT=1;
  
-----------------------------팀관리 team
DROP TABLE team;

CREATE TABLE team(
  tId number(10) PRIMARY KEY,
  tName varchar2(50) NOT NULL); 

DROP SEQUENCE tId_SQ;

CREATE SEQUENCE tId_SQ;

----------------------------회원_팀 tm_conn
DROP TABLE tm_conn;

CREATE TABLE tm_conn (
  tId NUMBER(10) REFERENCES team(tId),
  mId VARCHAR2(25) REFERENCES member(mId),
  tmLeader NUMBER(1) DEFAULT 0,
  tmOk NUMBER(1) DEFAULT 0); 

--- 전체 팀 목록 출력
SELECT * 
  FROM TEAM
  ORDER BY TID DESC;

--- 팀 생성
INSERT INTO TEAM VALUES(tId_SQ.NEXTVAL, '팀1');

--- 팀 해체
DELETE FROM team WHERE tId=1;

--- 팀장: 팀생성할때 tmConn insert
INSERT INTO TM_CONN VALUES ((select tId from TEAM where tName='팀1'), 'user14', 1, 1);

--- mId가 참여하고 있는 팀 목록 출력
SELECT * 
  FROM TM_CONN TM, TEAM T 
  WHERE TM.TID=T.TID AND TM.MID='user14' AND TM.TMOK=1 
  ORDER BY T.TID DESC;
  
--- 팀장: 팀해체할때 tmConn delete
DELETE FROM TM_CONN WHERE tId=1 AND mId='user14' AND tmLeader=1;

--- mId가 팀장으로 있는 팀 리스트 출력
SELECT T.TID, T.TNAME 
  FROM TEAM T, TM_CONN TM 
  WHERE T.TID=TM.TID AND TM.MID='user14' AND TM.TMLEADER=1;

--- 팀원: 팀 참여요청 보내기 
INSERT INTO TM_CONN 
  VALUES (3,'user10', 0, 0); 

--- 팀장: 팀 참여요청 승인
UPDATE TM_CONN 
  SET TMOK=1 
  WHERE MID='user2' AND TID=1;

--- 팀장: 팀 참여요청 거부 
DELETE 
  FROM TM_CONN 
  WHERE MID='user2' AND TID=1;
  
--- 팀원 팀 탈퇴
DELETE FROM TM_CONN WHERE MID='user15' AND TID=1;

--- 가입요청중복: 가입요청만 했을때
SELECT COUNT(*) 
  FROM TM_CONN 
  WHERE MID='user15' AND TID=1 AND TMOK=0;

--- 가입요청중복: 이미 가입되었을때 
SELECT COUNT(*) 
  FROM TM_CONN 
  WHERE MID='user15' AND TID=1 AND TMOK=1;

--- tId 팀 참여 요청 목록
SELECT M.MID, M.MNAME, M.MEMAIL, TM.TID 
  FROM MEMBER M, TM_CONN TM 
  WHERE M.MID=TM.MID AND 
      TM.TID IN (SELECT TID
                FROM TM_CONN
                WHERE MID='user14' AND TMLEADER=1) 
      AND TM.TMOK=0;

--- tId 연락처목록
SELECT *
  FROM member m, tm_conn TM , team t 
  WHERE m.mId = tm.mId and t.tId = tm.tId and tmOk=1 and tm.tId=1;
  
--- 팀 이름 검색
SELECT * FROM TEAM WHERE LOWER(TNAME) LIKE (LOWER('%팀%'));

--- 참여요청 알림(user14가 팀리더로 있는 모든 팀에 들어온 요청 갯수)
SELECT COUNT(*)
  FROM TM_CONN
  WHERE TID IN (SELECT TID FROM TM_CONN
                WHERE MID='user14' AND TMLEADER=1) AND TMOK=0;
                
--- user12가 팀id=1의 팀원인지 아닌지 TMOK결과값
SELECT TMOK FROM TM_CONN
  WHERE MID='user12' AND TID=1;


--- 참여요청 알림 
    
SELECT COUNT(*) FROM TM_CONN
  WHERE (MID='user14' AND TMOK=2)
  OR (TID IN (SELECT TID FROM TM_CONN WHERE MID='user14' AND TMLEADER=1) AND TMOK=0);
  
                
------------------------------------- 게시판 관리(Board)
DROP TABLE Board;
CREATE TABLE Board(
  mId varchar2(20) REFERENCES MEMBER(mId),
  tId number(10) REFERENCES TEAM(tId),
  bId NUMBER(10) PRIMARY KEY,
  bContent VARCHAR(500),
  bDate timestamp NOT NULL,
  bNo number(2) NOT NULL,
  bfId number(10),
  bfName varchar2(50),
  biId number(10),
  biName varchar2(50),
  bStart timestamp,
  bEnd timestamp,
  bTitle varchar2(100),
  bLoc varchar2(100),
  bMemo varchar2(100));

DROP SEQUENCE bId_sq;
CREATE SEQUENCE bId_SQ;

DROP SEQUENCE bfId_SQ;
CREATE SEQUENCE bfId_SQ;

DROP SEQUENCE biId_SQ;
CREATE SEQUENCE biId_SQ;

DROP TABLE BOARD_RE;
CREATE TABLE BOARD_RE(
  bId NUMBER(10) REFERENCES BOARD(bId), -- 게시물 번호
  mId varchar2(20) REFERENCES MEMBER(mId), -- 작성자
  brId NUMBER(10) PRIMARY KEY, -- 댓글번호
  bRcontent VARCHAR2(500), -- 댓글내용
  bRDate timestamp DEFAULT sysdate, -- 작성일자
  brDeleteYN CHAR(1 BYTE) DEFAULT 'n'-- 삭제여부  
); 

DROP SEQUENCE brId_SQ;
CREATE SEQUENCE brId_SQ; --brId_SQ 시퀸스

SELECT * FROM
  (SELECT ROWNUM RN, A.* 
   FROM (SELECT * FROM Board ORDER BY bId) A)
   WHERE RN BETWEEN #{startRow} AND #{endRow};
   SELECT * FROM board;
INSERT INTO Board
  VALUES('user', 1, bId_SQ.NEXTVAL, '내용냐용', sysdate, 1, bfId_SQ.NEXTVAL, 'sdsds', 0, '', sysdate,sysdate,'','','');
INSERT INTO EMP VALUES(#{empno}, #{ename}, #{job}, #{mgr}, #{hiredate}, #{sal}, #{comm}, #{deptno});
ROLLBACK;
commit;
UPDATE board SET BCONTENT='요를렣이ㅣ', BFNAME='파일이다', BINAME='이미지다' WHERE BID=8; 

DELETE FROM BOARD_RE WHERE brId=1;
DELETE FROM BOARD_RE WHERE bId=63;
DELETE FROM BOARD WHERE bId=63;
COMMIT;

SELECT * FROM BOARD WHERE BID=72;
SELECT COUNT(*) FROM TM_CONN
WHERE (MID='user12' AND TMOK=2)
 OR (TID IN (SELECT TID FROM TM_CONN WHERE MID='user12' AND TMLEADER=1) AND TMOK=0);