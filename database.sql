/*=======删除表=======*/
drop table if exists user;


/*=============================登录账号信息==============================*/
create table user(
    id            varchar(50) not null,
    remark        varchar(200),
    create_time   datetime    not null,
    version       bigint      not null default 0,
    status        varchar(36) not null,
    name          varchar(50) not null comment '登录账号',
    password      varchar(100) not null comment '密码',
    salt          varchar(50) not null,
    telephone     varchar(36) not null,
    mail          varchar(36) not null,
    type          varchar(36) not null,
    primary key (id),
    unique key ak_key_1 (name)
);
/*=============================登录账号信息默认数据==============================*/
insert into user (id, version,  create_time, remark, name, password, salt, telephone, mail, status, type) values ('10000001', 0, '2016-06-03 11:07:43', '超级管理员', 'admin', '$2a$10$17uA83z.P/yNCYFiJ8hleO/sPlZ0NrO.o11V9darRXfzj/h3EJKhe', '8d78869f470951332959580424d4bf4f','1882981911','1882981911@qq.com', '0', '0');