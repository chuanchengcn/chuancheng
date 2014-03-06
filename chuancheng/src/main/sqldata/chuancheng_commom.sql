/*==============================================================*/
/* Database name:  womiga                                       */
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2013/10/31 1:06:29                           */
/*==============================================================*/


drop database if exists chuancheng_common;

/*==============================================================*/
/* Database: womiga                                             */
/*==============================================================*/
create database chuancheng_common;

use chuancheng_common;

/*==============================================================*/
/* Table: auth                                                  */
/*==============================================================*/
create table auth
(
   authid               int(11) not null auto_increment,
   authcode             varchar(50) not null,
   primary key (authid)
)
ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*==============================================================*/
/* Table: contact_message                                       */
/*==============================================================*/
create table contact_message
(
   id                   int(11) not null auto_increment,
   firstname            varchar(30) not null,
   lastname             varchar(30) default NULL,
   email                varchar(50) default NULL,
   title                varchar(200) not null,
   message              text not null,
   addTime              timestamp not null default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
   statu                int(11) not null,
   isReply              int(11) default NULL,
   reply_content        text,
   reply_time           timestamp not null default '0000-00-00 00:00:00',
   primary key (id)
)
ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*==============================================================*/
/* Table: member                                                */
/*==============================================================*/
create table member
(
   memberid             int(11) not null auto_increment,
   name                 varchar(100) not null,
   email                varchar(200) not null,
   password             varchar(100) not null,
   createtime           timestamp not null default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
   updatetime           timestamp not null default '0000-00-00 00:00:00',
   roleid               int(11) default NULL,
   primary key (memberid)
)
ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*==============================================================*/
/* Table: memberinfo                                            */
/*==============================================================*/
create table memberinfo
(
   memberid             int(11) not null,
   sex                  varchar(10) default NULL,
   birthday             date default NULL,
   degree               varchar(100) default NULL,
   qq                   varchar(50) default NULL,
   phone                varchar(20) default NULL,
   weibo                varchar(100) default NULL,
   address              varchar(100) default NULL,
   country              varchar(50) default NULL,
   province             varchar(100) default NULL,
   city                 varchar(100) default NULL,
   postcode             varchar(20) default NULL,
   telephone            varchar(50) default NULL,
   description          text,
   remark               varchar(200) default NULL,
   primary key (memberid)
)
ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*==============================================================*/
/* Table: role                                                  */
/*==============================================================*/
create table role
(
   roleid               int(11) not null auto_increment,
   name                 varchar(50) not null,
   statu                int(11) not null,
   primary key (roleid)
)
ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*==============================================================*/
/* Table: roleauth                                              */
/*==============================================================*/
create table roleauth
(
   id                   int(11) not null auto_increment,
   roleid               int(11) not null,
   authid               int(11) not null,
   primary key (id)
)
ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*==============================================================*/
/* Table: sys_session_visitor_history                           */
/*==============================================================*/
create table sys_session_visitor_history
(
   id                   int(10) unsigned not null auto_increment,
   session_id           varchar(100) not null,
   ip                   varchar(50) not null,
   accBrowser           varchar(50) not null,
   accOs                varchar(50) not null,
   onlineTime           timestamp not null default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
   addTime              date not null,
   member_id            int(11) default NULL,
   primary key (id)
)
ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS common_file;

/*==============================================================*/
/* Table: treasure_pic                                          */
/*==============================================================*/
CREATE TABLE common_file
(
   id                   INT NOT NULL AUTO_INCREMENT,
   kind                 INT NOT NULL COMMENT '类型 0 图片  1 文件',
   product_kind         INT NOT NULL COMMENT '产品线',
   product_id           INT NOT NULL COMMENT '产品线 id',
   member_id            INT NOT NULL COMMENT '用户id',
   path                 VARCHAR(200) NOT NULL COMMENT '路径',
   title                VARCHAR(200) NOT NULL COMMENT '标题',
   COMMENT              VARCHAR(500) NOT NULL COMMENT '描述',
   create_time          TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
   update_time          TIMESTAMP NOT NULL COMMENT '更新时间',
   statu                INT NOT NULL COMMENT '状态 0 有效 1 删除',
   PRIMARY KEY (id)
)
ENGINE=INNODB DEFAULT CHARSET=utf8;