CREATE TABLE BOARD (
    NUM INTEGER NOT NULL,
    NAME VARCHAR(20) NOT NULL,
    PWD VARCHAR(10) NOT NULL,
    EMAIL VARCHAR(50),
    SUBJECT VARCHAR(50) NOT NULL,
    CONTENT VARCHAR(4000) NOT NULL,
    IPADDR VARCHAR(20),
    HITCOUNT INTEGER,
    CREATED DATE,
    CONSTRAINT PK_BOARD_NUM PRIMARY KEY(NUM)
);





select vTitle,vContent,tbl_bbsinfo.vID, tbl_userinfo.vName, nView, tbl_bbsinfo.dRegDate
	from tbl_bbsinfo, tbl_userinfo
		where tbl_bbsinfo.vID = tbl_userinfo.vID;

SELECT * FROM tbl_BBSInfo;
insert into tbl_BBSInfo
(vTitle,vContent,VID,cSecret,dRegdate)
values
('제목1','내용1','박준한','F',now());
update tbl_userinfo
set vPwd ='abcd', vEmail = ''
	where vID ='TestID';
delete from tbl_userinfo where vID = 'TestID';
insert into tbl_userinfo
(vID,vPwd,vName,vPhone,vEmail,dRegdate)

