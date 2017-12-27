create database userdb charset utf8;
use userdb;
/**
 * @author xubowei
 * 建立用户表
 * */
create table usertable(
	user_email varchar(40) not null,
	user_name varchar(40) not null,
	user_password varchar(40) not null,
	primary key (user_email)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
