--시퀀스
create sequence seq_comment_tb_comment_idx
DROP SEQUENCE ROLE

--테이블

DROP TABLE MEM_ROLE CASCADE CONSTRAINTS;

create table comment_tb
(
   comment_idx int ,                --댓글번호
   comment_content varchar2(2000),  --댓글내용
   comment_ip  varchar2(200),       --아이피  
   comment_regdate date,            --작성일자  
   q_idx       int,                 --게시글번호
   mem_idx     int,                 --회원번호
   mem_id      varchar2(100),       --회원아이디   
   mem_name    varchar2(200)        --회원명 
);

--기본키
alter table comment_tb 
  add constraint pk_comment_tb_comment_idx primary key(comment_idx);
 



--외래키(참조값)
alter table comment_tb
add constraint fk_comment_tb_q_idx foreign key(q_idx)
                                     references question(q_idx)
                                     on delete cascade    -- :부모글삭제시 자식들모두 삭제       

alter table comment_tb
  add constraint fk_comment_tb_mem_idx foreign key(mem_idx)
                                     references member(mem_idx) ;                                     
                                     
  
  
  
  