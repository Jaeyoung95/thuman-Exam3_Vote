-- 테이블 만들기 (투표이력 테이블)
create table TBL_VOTE_202005(
V_JUMIN char(13) not null primary key,
V_NAME varchar2(20),
M_NO char(1),
V_TIME char(4),
V_AREA char(20),
V_CONFIRM char(1)
)
--투표이력 테이블 샘플데이터
insert into TBL_VOTE_202005(V_JUMIN,V_NAME,M_NO,V_TIME,V_AREA,V_CONFIRM)
values('99010110001','김유권','1','0930','제1투표장','N');
insert into TBL_VOTE_202005(V_JUMIN,V_NAME,M_NO,V_TIME,V_AREA,V_CONFIRM)
values('89010120002','이유권','2','0930','제1투표장','N');
insert into TBL_VOTE_202005(V_JUMIN,V_NAME,M_NO,V_TIME,V_AREA,V_CONFIRM)
values('69010110003','박유권','3','0930','제1투표장','Y');
insert into TBL_VOTE_202005(V_JUMIN,V_NAME,M_NO,V_TIME,V_AREA,V_CONFIRM)
values('59010120004','홍유권','4','0930','제1투표장','Y');
insert into TBL_VOTE_202005(V_JUMIN,V_NAME,M_NO,V_TIME,V_AREA,V_CONFIRM)
values('79010110005','조유권','5','0930','제1투표장','Y');
insert into TBL_VOTE_202005(V_JUMIN,V_NAME,M_NO,V_TIME,V_AREA,V_CONFIRM)
values('89010120006','최유권','1','0930','제1투표장','Y');
insert into TBL_VOTE_202005(V_JUMIN,V_NAME,M_NO,V_TIME,V_AREA,V_CONFIRM)
values('59010110007','지유권','1','0930','제1투표장','Y');
insert into TBL_VOTE_202005(V_JUMIN,V_NAME,M_NO,V_TIME,V_AREA,V_CONFIRM)
values('49010120008','장유권','3','0930','제1투표장','Y');
insert into TBL_VOTE_202005(V_JUMIN,V_NAME,M_NO,V_TIME,V_AREA,V_CONFIRM)
values('79010110009','정유권','3','0930','제1투표장','Y');
insert into TBL_VOTE_202005(V_JUMIN,V_NAME,M_NO,V_TIME,V_AREA,V_CONFIRM)
values('89010120010','강유권','4','0930','제1투표장','Y');
insert into TBL_VOTE_202005(V_JUMIN,V_NAME,M_NO,V_TIME,V_AREA,V_CONFIRM)
values('99010110011','신유권','5','0930','제1투표장','Y');
insert into TBL_VOTE_202005(V_JUMIN,V_NAME,M_NO,V_TIME,V_AREA,V_CONFIRM)
values('79010120012','오유권','1','1330','제1투표장','Y');
insert into TBL_VOTE_202005(V_JUMIN,V_NAME,M_NO,V_TIME,V_AREA,V_CONFIRM)
values('69010110013','현유권','4','1330','제2투표장','Y');
insert into TBL_VOTE_202005(V_JUMIN,V_NAME,M_NO,V_TIME,V_AREA,V_CONFIRM)
values('89010110014','왕유권','2','1330','제2투표장','Y');
insert into TBL_VOTE_202005(V_JUMIN,V_NAME,M_NO,V_TIME,V_AREA,V_CONFIRM)
values('89010110015','유유권','3','1330','제2투표장','Y');
insert into TBL_VOTE_202005(V_JUMIN,V_NAME,M_NO,V_TIME,V_AREA,V_CONFIRM)
values('99010110016','한유권','2','1330','제2투표장','Y');
insert into TBL_VOTE_202005(V_JUMIN,V_NAME,M_NO,V_TIME,V_AREA,V_CONFIRM)
values('79010110017','문유권','4','1330','제2투표장','Y');
insert into TBL_VOTE_202005(V_JUMIN,V_NAME,M_NO,V_TIME,V_AREA,V_CONFIRM)
values('89010110018','양유권','2','1330','제2투표장','Y');
insert into TBL_VOTE_202005(V_JUMIN,V_NAME,M_NO,V_TIME,V_AREA,V_CONFIRM)
values('99010110019','구유권','4','1330','제2투표장','Y');
insert into TBL_VOTE_202005(V_JUMIN,V_NAME,M_NO,V_TIME,V_AREA,V_CONFIRM)
values('99010110020','황유권','5','1330','제2투표장','Y');
insert into TBL_VOTE_202005(V_JUMIN,V_NAME,M_NO,V_TIME,V_AREA,V_CONFIRM)
values('69010110021','배유권','3','1330','제2투표장','Y');
insert into TBL_VOTE_202005(V_JUMIN,V_NAME,M_NO,V_TIME,V_AREA,V_CONFIRM)
values('79010110022','전유권','3','1330','제2투표장','Y');
insert into TBL_VOTE_202005(V_JUMIN,V_NAME,M_NO,V_TIME,V_AREA,V_CONFIRM)
values('99010110023','고유권','1','1330','제2투표장','Y');
insert into TBL_VOTE_202005(V_JUMIN,V_NAME,M_NO,V_TIME,V_AREA,V_CONFIRM)
values('59010110024','권유권','3','1330','제2투표장','Y')

-- 삽입 레코드 확인
select * from TBL_VOTE_202005

-- 레코드 삭제
delete from TBL_VOTE_202005
delete from TBL_MEMBER_202005
delete from TBL_PARTY_202005

-- 테이블 만들기 후보자 테이블
create table TBL_MEMBER_202005(
M_NO char(1) not null primary key,
M_NAME varchar2(20),
P_CODE char(2),
P_SCHOOL char(1),
M_JUMIN char(13),
M_CITY varchar2(20)
)

--후보자 테이블 샘플데이터
insert into TBL_MEMBER_202005 values('1','김후보','P1','1','660301999991','수선화동');
insert into TBL_MEMBER_202005 values('2','이후보','P2','3','550301999992','민들래동');
insert into TBL_MEMBER_202005 values('3','박후보','P3','2','770301999993','나팔꽃동');
insert into TBL_MEMBER_202005 values('4','조후보','P4','2','880301999994','진달래동');
insert into TBL_MEMBER_202005 values('5','최후보','P5','3','990301999995','개나리동')

-- 테이블 만들기 정당코드 테이블
create table TBL_PARTY_202005(
P_CODE char(2) not null primary key,
P_NAME varchar2(20),
P_INDATE date,
P_READER varchar2(20),
P_TEL1 char(3),
P_TEL2 char(4),
P_TEL3 char(4)
)

--정당코드 테이블 샘플데이터
insert into TBL_PARTY_202005(P_CODE,P_NAME,P_INDATE,P_READER,P_TEL1,P_TEL2,P_TEL3)
values('P1','A정당','2010-01-01','위대표','02','1111','0001');
insert into TBL_PARTY_202005(P_CODE,P_NAME,P_INDATE,P_READER,P_TEL1,P_TEL2,P_TEL3)
values('P2','B정당','2010-02-01','명대표','02','1111','0002');
insert into TBL_PARTY_202005(P_CODE,P_NAME,P_INDATE,P_READER,P_TEL1,P_TEL2,P_TEL3)
values('P3','C정당','2010-03-01','기대표','02','1111','0003');
insert into TBL_PARTY_202005(P_CODE,P_NAME,P_INDATE,P_READER,P_TEL1,P_TEL2,P_TEL3)
values('P4','D정당','2010-04-01','옥대표','02','1111','0004');
insert into TBL_PARTY_202005(P_CODE,P_NAME,P_INDATE,P_READER,P_TEL1,P_TEL2,P_TEL3)
values('P5','E정당','2010-05-01','임대표','02','1111','0005')

-- 후보조회 
select M.M_NO,M.M_NAME,P.P_NAME,
case M.P_SCHOOL
when '1' then '고졸'
when '2' then '학사'
when '3' then '석사'
when '4' then '박사'
end as school
,substr(M.M_JUMIN,1,6)||'-'||substr(M.M_JUMIN,6) as JUMIN,M.M_CITY,P.P_TEL1||'-'||P.P_TEL2||'-'||P.P_TEL3 as TEL
from TBL_MEMBER_202005 M,TBL_PARTY_202005 P
where M.P_CODE=P.P_CODE

-- 투표검수조회
select V_NAME,'19'||substr(V_JUMIN,1,2)||'년'||substr(V_JUMIN,3,2)||'월'||substr(V_JUMIN,5,2)||'일생' 
as birth,'만 ' || (to_char(sysdate,'YYYY')-1-('19'||substr(V_JUMIN,1,2))) || '세' as age,
case substr(V_JUMIN,7,1)
when '1' then '남'
else '여'
end as gender
,M_NO,substr(V_TIME,1,2)||':'||substr(V_TIME,3,2) as VOTETIME,
case V_CONFIRM 
when 'Y' then '확인'
else '미확인'
end as CONFIRM
from TBL_VOTE_202005 where V_AREA='제1투표장'
order by CONFIRM

-- 후보자등수
select V.M_NO,M.M_NAME,count(*) as CNT
from TBL_VOTE_202005 V,TBL_MEMBER_202005 M
where V.M_NO=M.M_NO
group by V.M_NO,M.M_NAME
order by CNT desc
