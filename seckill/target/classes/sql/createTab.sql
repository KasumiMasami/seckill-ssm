-- �������ݿ�
create database seckill;

-- ʹ�����ݿ�
use seckill;

-- ������ɱ����
create table seckill(
`seckill_id` bigint NOT NULL AUTO_INCREMENT COMMENT '��Ʒ���id',
`name` varchar(120) NOT NULL COMMENT '��Ʒ����',
`number` int NOT NULL COMMENT '�������',
`start_time` timestamp NOT NULL COMMENT '��ʼʱ��',
`end_time` timestamp NOT NULL COMMENT '����ʱ��',
`create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '����ʱ��',
PRIMARY KEY(seckill_id),
key index_start_time(start_time),
key index_end_time(end_time),
key index_create_time(create_time)
)ENGINE = InnoDB AUTO_INCREMENT = 1000 DEFAULT CHARSET = utf8 COMMENT  '��ɱ����';

-- ��ʼ������
insert into
	seckill(name,number,start_time,end_time)
values
	('1000Ԫ��ɱIphone6',100,'2015-11-01 00:00:00','2015-11-01 01:00:00'),
    ('1000Ԫ��ɱIphone5s',200,'2015-11-01 00:00:00','2015-11-01 01:00:00'),
    ('1000Ԫ��ɱIphone6s',300,'2015-11-01 00:00:00','2015-11-01 01:00:00'),
    ('1000Ԫ��ɱIphone6plus',300,'2015-11-01 00:00:00','2015-11-01 01:00:00');


-- �ɹ���ɱ��ϸ
create table success_killed(
`seckill_id` bigint NOT NULL COMMENT '��ɱ��Ʒid',
`user_phone` bigint NOT NULL COMMENT '�û��ֻ���',
`state` tinyint NOT NULL DEFAULT -1 COMMENT '״̬(-1:��Ч,0:�ɹ�,1:�Ѹ���,2:�ѷ���)',
`create_time` timestamp NOT NULL COMMENT '����ʱ��',
primary key(seckill_id,user_phone),-- ��������
key index_create_time(create_time)
)ENGINE = InnoDB DEFAULT CHARSET = utf8 COMMENT '��ɱ�ɹ���ϸ��';
