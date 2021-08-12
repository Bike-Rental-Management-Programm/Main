/* 
	SQL Script File : community_ddl.sql
	communitySehema
*/

-- drop table
drop table community cascade constraints purge;
--create table
create table community(
    community_write_no number not null, 
    member_email varchar2(100) not null,
    community_subject varchar2(255) not null,
    community_content varchar2(4000) not null,
    community_attached_file varchar2(300),
    community_like_cnt number default 0,
    community_view_cnt nubmer default 0,
    community_time date default sysdate,
    constraint community_tbl_pk primary key(community_write_no)
);
-- 
select * from community;