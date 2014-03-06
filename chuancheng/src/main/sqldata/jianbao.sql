create database chuancheng_jianbao;
use chuancheng_jianbao;


drop table if exists professor;

/*==============================================================*/
/* Table: professor                                             */
/*==============================================================*/
create table professor
(
   id                   int not null auto_increment,
   name                 varchar(50) not null comment '姓名',
   nick_name            varchar(50) comment '昵称',
   photo                varchar(200) comment '头像',
   telephone            varchar(20) not null comment '电话',
   iphone               varchar(20) not null comment '移动电话',
   sex                  varchar(10),
   birthday             timestamp default '0000-00-00 00:00:00' comment '生日',
   nation               varchar(10) comment '国家',
   province             varchar(20) comment '省份',
   city                 varchar(20) comment '市',
   country              varchar(20) comment '县',
   address              varchar(100) comment '地址',
   introduction         text comment '简介',
   member_id            int comment '绑定用户id',
   create_time           timestamp not null default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP  comment '创建时间',
   update_time           timestamp not null default '0000-00-00 00:00:00'  comment '修改时间',
   create_member_id     int not null comment '创建人',
   vistor_count         int not null default 0 comment '浏览次数',
   follow_count         int not null default 0 comment '关注人数',
   favour_count         int not null default 0 comment '赞次数',
   hot                  int not null default 0 comment '关注度',
   identified_count     int not null default 0 comment '已经鉴定作品数',
   identifying_count    int not null default 0 comment '排队鉴定数目',
   statu                int not null default 0 comment '状态 0 有效 1 删除',
   store_id          	int(11) DEFAULT NULL COMMENT '属于某个实体店',
   primary key (id)
)
ENGINE=InnoDB DEFAULT CHARSET=utf8;


drop table if exists treasure;

/*==============================================================*/
/* Table: treasure                                              */
/*==============================================================*/
create table treasure
(
   id                   int not null auto_increment,
   member_id            int not null comment '会员id',
   create_time          timestamp not null default CURRENT_TIMESTAMP comment '添加时间',
   update_time          timestamp not null comment '更新时间',
   add_member_id        int not null comment '添加人id',
   number               varchar(100) not null comment '编号（memberid+create_time md5）',
   category_id          int not null comment '分类id',
   name                 varchar(200) not null comment '名称',
   history_time         timestamp comment '创造年代',
   author               varchar(100) comment '作者',
   statu                int not null default 0 comment '状态0 有效 1 删除',
   telephone            varchar(20) comment '联系电话',
   story                text comment '故事',
   description          text comment '描述',
   visit_count          int not null default 0 comment '浏览次数',
   follow_count         int not null default 0 comment '关注次数',
   comment_count        int not null default 0 comment '评论次数',
   ori_price        int not null default 0 comment '自评价格',
   professor_price        int not null default 0 comment '鉴定价格',
   primary key (id)
)
ENGINE=InnoDB DEFAULT CHARSET=utf8;




drop table if exists treasure_pic;

/*==============================================================*/
/* Table: treasure_pic                                          */
/*==============================================================*/
create table treasure_pic
(
   id                   int not null auto_increment,
   treasure_id         int not null comment '宝贝id',
   member_id            int not null comment '用户id',
   path                 varchar(200) binary not null comment '路径',
   comment              varchar(500) not null comment '描述',
   create_time          timestamp not null default CURRENT_TIMESTAMP comment '创建时间',
   update_time          timestamp not null comment '更新时间',
   statu                int not null comment '状态 0 有效 1 删除',
   primary key (id)
)
ENGINE=InnoDB DEFAULT CHARSET=utf8;


drop table if exists category;

/*==============================================================*/
/* Table: category                                              */
/*==============================================================*/
create table category
(
   id                   int not null auto_increment,
   name                 varchar(100) not null comment '名称',
   parentId             int not null default 0 comment '父类id',
   remark               varchar(200) comment '备注',
   orderid				int(11) NOT NULL DEFAULT '0',
   statu                int not null default 0 comment '状态 0 有效 1删除 ',
   primary key (id)
)
ENGINE=InnoDB DEFAULT CHARSET=utf8;

drop table if exists work_experience;

/*==============================================================*/
/* Table: work_experience                                       */
/*==============================================================*/
create table work_experience
(
   id                   int not null auto_increment,
   year_name            varchar(20) not null,
   description          text not null comment '描述',
   professor_id         int not null comment '专家id',
   statu                int default '0' comment '状态 0 有效 1 删除',
   primary key (id)
)
ENGINE=InnoDB DEFAULT CHARSET=utf8;


drop table if exists store;

/*==============================================================*/
/* Table: store                                                 */
/*==============================================================*/
create table store
(
   id                   int not null auto_increment,
   store_name           varchar(200) not null comment '分店',
   statu                int not null default 0 comment '状态 0 有效开业中  1 筹备中 3 删除',
   title                varchar(500) comment '标题 备用',
   description          text comment '描述',
   create_time          timestamp not null default CURRENT_TIMESTAMP comment '创建时间',
   telephone            varchar(20) comment '联系电话',
   kind                 int not null default 1 comment '类型 1 标示店 2 标示活动',
   
  startTime		 		timestamp NULL DEFAULT NULL COMMENT '开始时间',
  endTime 				timestamp NULL DEFAULT NULL COMMENT '结束时间',
  location              varchar(200) DEFAULT NULL COMMENT '活动地点',
  organizer             varchar(200) DEFAULT NULL COMMENT '主办方',
  follow_count          int(11) DEFAULT NULL COMMENT '关注人数',
  enter_count            int(11) DEFAULT NULL COMMENT '参数人数',
  visitor_count          int(11) DEFAULT NULL COMMENT '浏览人数',
  max_enter_count          int(11) DEFAULT NULL COMMENT '参加最多人数',
  store_id          int(11) DEFAULT NULL COMMENT '属于某个实体店',
   primary key (id)
)
ENGINE=InnoDB DEFAULT CHARSET=utf8;

drop table if exists store_plan;

/*==============================================================*/
/* Table: store_plan                                            */
/*==============================================================*/
create table store_plan
(
   id                   int not null auto_increment,
   store_id             int not null,
   date                 timestamp not null comment '日期',
   statu                int not null default 0 comment '0 正常',
   primary key (id)
)
ENGINE=InnoDB DEFAULT CHARSET=utf8;

drop table if exists store_plan_info;

/*==============================================================*/
/* Table: store_plan_info                                       */
/*==============================================================*/
create table store_plan_info
(
   id                   int not null auto_increment,
   time                 int not null comment '时间端标示 标示 0~1 小时 2：标示 1~2 小时',
   max_count            int not null comment '预约人数',
   statu                int not null comment '状态',
   store_id             int not null,
   store_plan_id        int comment '关联工作日',
   primary key (id)
)
ENGINE=InnoDB DEFAULT CHARSET=utf8;

drop table if exists jianbao_order;

/*==============================================================*/
/* Table: jianbao_order                                         */
/*==============================================================*/
create table jianbao_order
(
   id                   int not null auto_increment,
   order_number         varchar(50) not null comment '订单编号',
   member_id            int not null comment '会员id',
   order_kind           int not null default 1 comment '类型：1 线下活动 2 专家',
   store_id             int comment '活动id',
   professor_id         int comment '专家id',
   statu                int default 0 comment '状态 0 临时 1 有效 ',
   treasure_id          int not null comment '宝贝id',
   price                int comment '鉴宝费用',
   progress             int not null default 0 comment '进度',
   create_time          timestamp not null default CURRENT_TIMESTAMP comment ' 创建时间',
   update_time          timestamp not null comment '更新时间',
   isOnline              int default 0 comment  '0 网上鉴宝 1 线下鉴宝',
   primary key (id)
)
ENGINE=InnoDB DEFAULT CHARSET=utf8;




