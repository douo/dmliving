/*==============================================================*/
/* Database: living  By PowerDesigner v.15                      */
/*==============================================================*/
drop database if exists living;

create database living;

use living;

/*==============================================================*/
/* Tables below							                        */
/*==============================================================*/
drop table if exists address_book;

drop table if exists email;

drop table if exists image;

drop table if exists manufacturer;

drop table if exists options_name;

drop table if exists options_value;

drop table if exists order_from;

drop table if exists orderline;

drop table if exists product;

drop table if exists product_category;

drop table if exists role;

drop table if exists shoping_car;

drop table if exists system_log;

drop table if exists user;

drop table if exists user_role;

/*==============================================================*/
/* Table: address_book                                          */
/*==============================================================*/
create table address_book
(
   addressbook_id       numeric(10) not null,
   user_id              numeric(10),
   first_name           varchar(50),
   last_name            varchar(50),
   company_name         varchar(50),
   street_address       varchar(100),
   suburb               varchar(100),
   city                 varchar(100),
   state_province       varchar(100),
   post_zip_code        varchar(30),
   country              varchar(50),
   isPrimary            char(1),
   isactive             char(1),
   primary key (addressbook_id)
);

/*==============================================================*/
/* Table: email                                                 */
/*==============================================================*/
create table email
(
   email_id             numeric(8) not null,
   title                varchar(50),
   Column_3             char(10),
   Column_4             char(10),
   Column_5             char(10),
   Column_6             char(10),
   Column_7             char(10),
   primary key (email_id)
);

/*==============================================================*/
/* Table: image                                                 */
/*==============================================================*/
create table image
(
   image_id             numeric(10) not null,
   product_id           numeric(10),
   image_url            varchar(50),
   order_level          numeric,
   isactive             char(1),
   primary key (image_id)
);

alter table image comment '图片表';

/*==============================================================*/
/* Table: manufacturer                                          */
/*==============================================================*/
create table manufacturer
(
   manufacturer_id      numeric(10) not null,
   name                 varchar(50),
   picture              varchar(120),
   loc                  varchar(50),
   url                  varchar(255),
   add_date             date,
   state                char,
   primary key (manufacturer_id)
);

/*==============================================================*/
/* Table: options_name                                          */
/*==============================================================*/
create table options_name
(
   options_name_id      numeric(10) not null,
   product_id           numeric(10),
   name                 varchar(50),
   value_type           varchar(10),
   description          varchar(1000),
   primary key (options_name_id)
);

alter table options_name comment '颜色,大小等属性选项';

/*==============================================================*/
/* Table: options_value                                         */
/*==============================================================*/
create table options_value
(
   options_value_id     numeric(10) not null,
   options_name_id      numeric(10),
   options_value        varchar(100),
   isactive             char(1),
   primary key (options_value_id)
);

alter table options_value comment '选项属性值';

/*==============================================================*/
/* Table: order_from                                            */
/*==============================================================*/
create table order_from
(
   order_id             numeric(10) not null,
   orderline_id         numeric(10),
   user_id              numeric(10),
   isactive             char(1),
   created              date,
   createdby            numeric(10),
   updated              date,
   updatedby            numeric(10),
   postway              numeric(10),
   payment_method       numeric(10),
   description          varchar(1000),
   isinvoiced           char(1),
   promotional_num      numeric(20),
   state                char(1),
   primary key (order_id)
);

/*==============================================================*/
/* Table: orderline                                             */
/*==============================================================*/
create table orderline
(
   orderline_id         numeric(10) not null,
   product_id           numeric(10),
   quantity             numeric,
   discount             numeric(5,2),
   isactive             char(1),
   primary key (orderline_id)
);

/*==============================================================*/
/* Table: product                                               */
/*==============================================================*/
create table product
(
   product_id           numeric(10) not null,
   name                 varchar(50),
   description          varchar(8000),
   item_number          varchar(30),
   product_category_id  numeric(10),
   manufacturer_id      numeric(10),
   image_url            varchar(50),
   isactive             char,
   stock_quantity       numeric,
   normal_price         numeric(10,2),
   member_price         numeric(10,2),
   stock_price          numeric(10,2),
   special_price        numeric(10,2),
   ptype                varchar(30),
   free_ship            char,
   is_free              char,
   is_virtual           char,
   add_date             date,
   updated              date,
   date_available       date,
   least_buy            numeric,
   most_buy             numeric,
   buy_unit             numeric,
   weight               numeric(10,2),
   is_call              char,
   is_number_box        char,
   sort_order           char,
   primary key (product_id)
);

alter table product comment '家具等产品';

/*==============================================================*/
/* Table: product_category                                      */
/*==============================================================*/
create table product_category
(
   product_category_id  numeric(10) not null,
   parent_category_id   numeric(10),
   name                 varchar(50),
   description          varchar(2000),
   level                numeric,
   order_level          numeric,
   curren_level         varchar(100),
   isactive             char,
   image_url            varchar(200),
   primary key (product_category_id)
);

/*==============================================================*/
/* Table: role                                                  */
/*==============================================================*/
create table role
(
   role_id              numeric(10) not null,
   role_name            varchar(50),
   description          varchar(100),
   isactive             char(1),
   primary key (role_id)
);

/*==============================================================*/
/* Table: shoping_car                                           */
/*==============================================================*/
create table shoping_car
(
   shoping_car_id       numeric(10,0) not null,
   user_id              numeric(10),
   product_id           numeric(10),
   product_number       numeric,
   remark               varchar(100),
   created              date,
   expires              numeric,
   state                char,
   primary key (shoping_car_id)
);

/*==============================================================*/
/* Table: system_log                                            */
/*==============================================================*/
create table system_log
(
   system_log_id        numeric(10) not null,
   user_id              numeric(10),
   table_name           varchar(50),
   model_name           varchar(50),
   user_name            varchar(50),
   ip_address           varchar(50),
   log_date             date,
   operate_url          varchar(256),
   remark               varchar(100),
   primary key (system_log_id)
);

/*==============================================================*/
/* Table: user                                                  */
/*==============================================================*/
create table user
(
   user_id              numeric(10) not null,
   first_name           varchar(50) not null,
   last_name            varchar(50) not null,
   email                varchar(100) not null,
   password             varchar(36),
   company_name         varchar(50),
   street_address       varchar(100),
   suburb               varchar(100),
   city                 varchar(100),
   state_province       varchar(100),
   country              varchar(30),
   post_zip_code        varchar(30),
   phone                varchar(20),
   fax                  varchar(50),
   isnewsletter         char(1),
   email_format         varchar(10),
   created              date,
   created_by           numeric(10),
   upated               date,
   update_by            numeric(10),
   description          varchar(30),
   state                char,
   primary key (user_id)
);

alter table user comment 'user account Information';

/*==============================================================*/
/* Table: user_role                                             */
/*==============================================================*/
create table user_role
(
   user_role_id         numeric(10) not null,
   user_id              numeric(10),
   role_id              numeric(10),
   primary key (user_role_id)
);

alter table address_book add constraint FK_Reference_11 foreign key (user_id)
      references user (user_id) on delete restrict on update restrict;

alter table image add constraint FK_Reference_13 foreign key (product_id)
      references product (product_id) on delete restrict on update restrict;

alter table options_name add constraint FK_Reference_15 foreign key (product_id)
      references product (product_id) on delete restrict on update restrict;

alter table options_value add constraint FK_Reference_16 foreign key (options_name_id)
      references options_name (options_name_id) on delete restrict on update restrict;

alter table order_from add constraint FK_Reference_14 foreign key (user_id)
      references user (user_id) on delete restrict on update restrict;

alter table order_from add constraint FK_Reference_8 foreign key (orderline_id)
      references orderline (orderline_id) on delete restrict on update restrict;

alter table orderline add constraint FK_Reference_7 foreign key (product_id)
      references product (product_id) on delete restrict on update restrict;

alter table product add constraint FK_Reference_17 foreign key (product_category_id)
      references product_category (product_category_id) on delete restrict on update restrict;

alter table product add constraint FK_Reference_20 foreign key (manufacturer_id)
      references manufacturer (manufacturer_id) on delete restrict on update restrict;

alter table shoping_car add constraint FK_Reference_18 foreign key (user_id)
      references user (user_id) on delete restrict on update restrict;

alter table shoping_car add constraint FK_Reference_19 foreign key (product_id)
      references product (product_id) on delete restrict on update restrict;

alter table system_log add constraint FK_Reference_12 foreign key (user_id)
      references user (user_id) on delete restrict on update restrict;

alter table user_role add constraint FK_Reference_10 foreign key (role_id)
      references role (role_id) on delete restrict on update restrict;

alter table user_role add constraint FK_Reference_9 foreign key (user_id)
      references user (user_id) on delete restrict on update restrict;


      
/* 初始化管理员和权限数据 */
insert into user(user_id, first_name, last_name, email,password,description,state) values(1,'admin','admin','admin','21232f297a57a5a743894a0e4a801fc3','管理员', 'A');

insert into role(role_id,role_name,description,isactive) values(1,'ROLE_ADMIN','管理员角色', 'Y');
insert into role(role_id,role_name,description,isactive) values(2,'ROLE_USER','用户角色', 'Y');

insert into user_role(user_role_id,user_id,role_id) values(1,1,1);
insert into user_role(user_role_id,user_id,role_id) values(2,1,2);

/* 以下SQL就可以获得当前用户所拥有的权限 */
select u.email, r.role_name
from user u
join user_role ur
on u.user_id = ur.user_id
join role r
on r.role_id = ur.role_id
where email = 'admin';

