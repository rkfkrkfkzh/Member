alter table A add(name3 varchar2(50));--�÷� �߰� 

alter table A RENAME column name to name2;--�÷� �̸� ���� 

alter table A drop column name2; --�÷� ���� 
INSERT INTO A (tel,AA,name3)		VALUES ('111','AAA','add');







--- table ����
select * from tab;
---table ����
create table member(
	id varchar2(50) primary key, --������ ���� ������ null �̵Ǿ�� �ȵȴ�. (unique + not null)
	password varchar2(50) not null, --�ݵ�� �����͸� �־���Ѵ�.
	name varchar2(50) not null,
	address varchar2(50)
)
--table ����
drop table member;
--insert ����
insert into member(id,password, name, address) values('java','1234','�տ���','����');
insert into member(id,password, name, address) values('jdbc','abcd','��ڻ�','�Ǳ�');
--adress�� null�� ��� ... not null �������� �÷��� ������ �Է�
insert into member(id,password,name)values('jsp','king','Ȳ����');
--name�� not null �̹Ƿ� �ݵ�� insert �ؾ��Ѵ�.
insert into member(id,password,address)values('servlet','a','������');
--id�� �ߺ�, primary key �̹Ƿ� ���Ἲ ���� ���� ����
insert into member(id,password,name)values('jsp','aaa','ũ����Ż');
--��ȸ (�ǹ������� ������ ���Ѵ�)
select * from member;
select id,password,name,address from member;
--��ȸ�� where ���� ���(���ǰ˻�)
select id, name from member where address='����';
-- �̸� ��ڻ��̰� �ּҰ� �Ǳ��� ȸ���� ��ȸ
select id,password from member where name='��ڻ�'and address='�Ǳ�';
-- ���� : update �̸��� ��ڻ��� ȸ�� �ּҸ� ������ ����
update member set address='����' where name='��ڻ�';
-- ��ȸ : �ּҰ� ������ ȸ���� ���̵�� �̸��� ��� ��ȸ
select id, name from member where address='����';

-- ����: �տ��� ȸ���� �ּҸ� �������� �¸����� �����ϰ�
-- 			 �н����带 abcd�� ����
update member set address='�¸�',password='abcd' where name='�տ���';
-- ���� : delete
-- �̸��� Ȳ������ ȸ���� �����͸� ����
delete from member where name='Ȳ����';

select * from member;

