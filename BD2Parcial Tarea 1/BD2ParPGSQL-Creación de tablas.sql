/*==============================================================*/
/* DBMS name:      PostgreSQL 8                                 */
/* Created on:     20/01/2022 22:49:00                          */
/*==============================================================*/


drop index ESTA_ESTABLECIDO_FK;

drop index REGISTRA_FK;

drop index TIENEN_FK;

drop index ASISTENCIA_PK;

drop table ASISTENCIA;

drop index CUENTAN_CON_FK;

drop index CLIENTE_PK;

drop table CLIENTE;

drop index CUMPLEN_UN_FK;

drop index EMPLEADO_PK;

drop table EMPLEADO;

drop index PAGA_FK;

drop index FACTURA_PK;

drop table FACTURA;

drop index TIENE_FK;

drop index HORARIO_EMP_PK;

drop table HORARIO_EMP;

drop index MEMBRESIA_PK;

drop table MEMBRESIA;

drop index GENERA_FK;

drop index PAGOS_PK;

drop table PAGOS;

drop index REGISTRO_PK;

drop table REGISTRO;

drop index ROL_PK;

drop table ROL;

/*==============================================================*/
/* Table: ASISTENCIA                                            */
/*==============================================================*/
create table ASISTENCIA (
   ID_ASISTENCIAS       SERIAL               not null,
   CED_CLIENTE          CHAR(20)             not null,
   COD_EMPLEADO         INT4                 not null,
   ID_HORARIO           INT4                 not null,
   ASISTENCIA           CHAR(15)             not null,
   DESCRIP_RUTINA       CHAR(200)            not null,
   FECHA_ASISTENCIA     DATE                 not null,
   constraint PK_ASISTENCIA primary key (ID_ASISTENCIAS)
);

/*==============================================================*/
/* Index: ASISTENCIA_PK                                         */
/*==============================================================*/
create unique index ASISTENCIA_PK on ASISTENCIA (
ID_ASISTENCIAS
);

/*==============================================================*/
/* Index: TIENEN_FK                                             */
/*==============================================================*/
create  index TIENEN_FK on ASISTENCIA (
CED_CLIENTE
);

/*==============================================================*/
/* Index: REGISTRA_FK                                           */
/*==============================================================*/
create  index REGISTRA_FK on ASISTENCIA (
COD_EMPLEADO
);

/*==============================================================*/
/* Index: ESTA_ESTABLECIDO_FK                                   */
/*==============================================================*/
create  index ESTA_ESTABLECIDO_FK on ASISTENCIA (
ID_HORARIO
);

/*==============================================================*/
/* Table: CLIENTE                                               */
/*==============================================================*/
create table CLIENTE (
   CED_CLIENTE          CHAR(20)             not null,
   COD_MEMBRESIA        CHAR(50)             not null,
   NOMBRES_CLIENTE      CHAR(200)            not null,
   TELF_CLIENTE         CHAR(15)             not null,
   FECHA_REGISTRO_CLIENTE DATE                 not null,
   constraint PK_CLIENTE primary key (CED_CLIENTE)
);

/*==============================================================*/
/* Index: CLIENTE_PK                                            */
/*==============================================================*/
create unique index CLIENTE_PK on CLIENTE (
CED_CLIENTE
);

/*==============================================================*/
/* Index: CUENTAN_CON_FK                                        */
/*==============================================================*/
create  index CUENTAN_CON_FK on CLIENTE (
COD_MEMBRESIA
);

/*==============================================================*/
/* Table: EMPLEADO                                              */
/*==============================================================*/
create table EMPLEADO (
   COD_EMPLEADO         SERIAL               not null,
   ROL_COD              CHAR(10)             not null,
   CED_EMPLEADO         CHAR(20)             not null,
   NOMBRES_EMPLEADO     CHAR(200)            not null,
   DIRECCION_EMPLEADO   CHAR(150)            not null,
   FECHA_NACIMIENTO_EMP DATE                 not null,
   FECHA_INGRESO_EMP    DATE                 not null,
   constraint PK_EMPLEADO primary key (COD_EMPLEADO)
);

/*==============================================================*/
/* Index: EMPLEADO_PK                                           */
/*==============================================================*/
create unique index EMPLEADO_PK on EMPLEADO (
COD_EMPLEADO
);

/*==============================================================*/
/* Index: CUMPLEN_UN_FK                                         */
/*==============================================================*/
create  index CUMPLEN_UN_FK on EMPLEADO (
ROL_COD
);

/*==============================================================*/
/* Table: FACTURA                                               */
/*==============================================================*/
create table FACTURA (
   ID_FACTURA           SERIAL               not null,
   ID_PAGO              INT4                 not null,
   FECHA_COBRO          DATE                 not null,
   MONTO_PAGADO         INT4                 not null,
   constraint PK_FACTURA primary key (ID_FACTURA)
);

/*==============================================================*/
/* Index: FACTURA_PK                                            */
/*==============================================================*/
create unique index FACTURA_PK on FACTURA (
ID_FACTURA
);

/*==============================================================*/
/* Index: PAGA_FK                                               */
/*==============================================================*/
create  index PAGA_FK on FACTURA (
ID_PAGO
);

/*==============================================================*/
/* Table: HORARIO_EMP                                           */
/*==============================================================*/
create table HORARIO_EMP (
   ID_HORARIO           SERIAL               not null,
   COD_EMPLEADO         INT4                 not null,
   DIA                  CHAR(10)             not null,
   HORA_INICIO          TIME                 not null,
   HORA_FIN             TIME                 not null,
   constraint PK_HORARIO_EMP primary key (ID_HORARIO)
);

/*==============================================================*/
/* Index: HORARIO_EMP_PK                                        */
/*==============================================================*/
create unique index HORARIO_EMP_PK on HORARIO_EMP (
ID_HORARIO
);

/*==============================================================*/
/* Index: TIENE_FK                                              */
/*==============================================================*/
create  index TIENE_FK on HORARIO_EMP (
COD_EMPLEADO
);

/*==============================================================*/
/* Table: MEMBRESIA                                             */
/*==============================================================*/
create table MEMBRESIA (
   COD_MEMBRESIA        CHAR(50)             not null,
   TIPO_MEMBRESIA       CHAR(10)             not null,
   constraint PK_MEMBRESIA primary key (COD_MEMBRESIA)
);

/*==============================================================*/
/* Index: MEMBRESIA_PK                                          */
/*==============================================================*/
create unique index MEMBRESIA_PK on MEMBRESIA (
COD_MEMBRESIA
);

/*==============================================================*/
/* Table: PAGOS                                                 */
/*==============================================================*/
create table PAGOS (
   ID_PAGO              SERIAL               not null,
   CED_CLIENTE          CHAR(20)             not null,
   DEBE                 INT4                 not null,
   MEMB_INICIO          DATE                 not null,
   MEMB_FIN             DATE                 not null,
   ESTADO               CHAR(15)             null,
   constraint PK_PAGOS primary key (ID_PAGO)
);

/*==============================================================*/
/* Index: PAGOS_PK                                              */
/*==============================================================*/
create unique index PAGOS_PK on PAGOS (
ID_PAGO
);

/*==============================================================*/
/* Index: GENERA_FK                                             */
/*==============================================================*/
create  index GENERA_FK on PAGOS (
CED_CLIENTE
);

/*==============================================================*/
/* Table: REGISTRO                                              */
/*==============================================================*/
create table REGISTRO (
   ID_REGISTRO          SERIAL               not null,
   TIPO_REGISTRO        CHAR(50)             not null,
   COMENTARIO_REGISTRO  CHAR(200)            not null,
   constraint PK_REGISTRO primary key (ID_REGISTRO)
);

/*==============================================================*/
/* Index: REGISTRO_PK                                           */
/*==============================================================*/
create unique index REGISTRO_PK on REGISTRO (
ID_REGISTRO
);

/*==============================================================*/
/* Table: ROL                                                   */
/*==============================================================*/
create table ROL (
   ROL_COD              CHAR(10)             not null,
   ROL                  CHAR(50)             not null,
   constraint PK_ROL primary key (ROL_COD)
);

/*==============================================================*/
/* Index: ROL_PK                                                */
/*==============================================================*/
create unique index ROL_PK on ROL (
ROL_COD
);

alter table ASISTENCIA
   add constraint FK_ASISTENC_ESTA_ESTA_HORARIO_ foreign key (ID_HORARIO)
      references HORARIO_EMP (ID_HORARIO)
      on delete restrict on update restrict;

alter table ASISTENCIA
   add constraint FK_ASISTENC_REGISTRA_EMPLEADO foreign key (COD_EMPLEADO)
      references EMPLEADO (COD_EMPLEADO)
      on delete restrict on update restrict;

alter table ASISTENCIA
   add constraint FK_ASISTENC_TIENEN_CLIENTE foreign key (CED_CLIENTE)
      references CLIENTE (CED_CLIENTE)
      on delete restrict on update restrict;

alter table CLIENTE
   add constraint FK_CLIENTE_CUENTAN_C_MEMBRESI foreign key (COD_MEMBRESIA)
      references MEMBRESIA (COD_MEMBRESIA)
      on delete restrict on update restrict;

alter table EMPLEADO
   add constraint FK_EMPLEADO_CUMPLEN_U_ROL foreign key (ROL_COD)
      references ROL (ROL_COD)
      on delete restrict on update restrict;

alter table FACTURA
   add constraint FK_FACTURA_PAGA_PAGOS foreign key (ID_PAGO)
      references PAGOS (ID_PAGO)
      on delete restrict on update restrict;

alter table HORARIO_EMP
   add constraint FK_HORARIO__TIENE_EMPLEADO foreign key (COD_EMPLEADO)
      references EMPLEADO (COD_EMPLEADO)
      on delete restrict on update restrict;

alter table PAGOS
   add constraint FK_PAGOS_GENERA_CLIENTE foreign key (CED_CLIENTE)
      references CLIENTE (CED_CLIENTE)
      on delete restrict on update restrict;

alter table pagos add check(debe>='0');

--alter table empleado add check(cod_empleado<='8'); (Check para posible transacción 2)
