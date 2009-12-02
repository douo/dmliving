/*==============================================================*/
/* Database: living  By PowerDesigner v.15                      */
/*==============================================================*/
drop database if exists living;

create database living;

use living;

drop table if exists address_book;

drop table if exists image;

drop table if exists options_name;

drop table if exists options_value;

drop table if exists order_from;

drop table if exists orderline;

drop table if exists price;

drop table if exists product;

drop table if exists product_category;

drop table if exists role;

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
   address_line1        varchar(100),
   address_line2        varchar(100),
   city                 varchar(100),
   state_province       varchar(100),
   post_zip_code        varchar(30),
   isactive             char(1),
   primary key (addressbook_id)
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
/* Table: options_name                                          */
/*==============================================================*/
create table options_name
(
   options_name_id      numeric(10) not null,
   options_value_id     numeric(10),
   name                 varchar(50),
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
/* Table: price                                                 */
/*==============================================================*/
create table price
(
   price_id             numeric(10) not null,
   normal_price         numeric(10,2),
   member_price         numeric(10,2),
   stock_price          numeric(10,2),
   special_price        numeric(10,2),
   primary key (price_id)
);

alter table price comment '价格表';

/*==============================================================*/
/* Table: product                                               */
/*==============================================================*/
create table product
(
   product_id           numeric(10) not null,
   options_name_id      numeric(10),
   product_category_id  numeric(10),
   name                 varchar(50),
   description          varchar(8000),
   item_number          varchar(30),
   price_id             numeric(10),
   isactive             char,
   stock_quantity       numeric,
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
   description          varchar(500),
   level                numeric,
   order_level          numeric,
   isactive             char,
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
   country              varchar(50),
   email                varchar(100) not null,
   password             varchar(36),
   phone                varchar(20),
   fax                  varchar(50),
   isnewsletter         char(1),
   isactive             char(1),
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

alter table options_name add constraint FK_Reference_3 foreign key (options_value_id)
      references options_value (options_value_id) on delete restrict on update restrict;

alter table order_from add constraint FK_Reference_8 foreign key (orderline_id)
      references orderline (orderline_id) on delete restrict on update restrict;

alter table orderline add constraint FK_Reference_7 foreign key (product_id)
      references product (product_id) on delete restrict on update restrict;

alter table product add constraint FK_Reference_2 foreign key (options_name_id)
      references options_name (options_name_id) on delete restrict on update restrict;

alter table product add constraint FK_Reference_4 foreign key (product_category_id)
      references product_category (product_category_id) on delete restrict on update restrict;

alter table product add constraint FK_Reference_5 foreign key (price_id)
      references price (price_id) on delete restrict on update restrict;

alter table system_log add constraint FK_Reference_12 foreign key (user_id)
      references user (user_id) on delete restrict on update restrict;

alter table user_role add constraint FK_Reference_10 foreign key (role_id)
      references role (role_id) on delete restrict on update restrict;

alter table user_role add constraint FK_Reference_9 foreign key (user_id)
      references user (user_id) on delete restrict on update restrict;

