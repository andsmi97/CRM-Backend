/*==============================================================*/
/* DBMS name:      PostgreSQL 8                                 */
/* Created on:     10.03.2019 17:09:44                          */
/*==============================================================*/


/*==============================================================*/
/* Table: Contacts                                              */
/*==============================================================*/
create table Contacts (
   UserID               INT4                 not null,
   ContactID            SERIAL               not null,
   ContactName          VARCHAR(255)         not null,
   ContactCompanyName   VARCHAR(255)         null,
   ContactPhone         VARCHAR(20)          null,
   ContactEmail         VARCHAR(100)         null,
   ContactSite          VARCHAR(255)         null,
   ContactPosition      VARCHAR(255)         null,
   ContactAdress        TEXT                 null,
   constraint PK_CONTACTS primary key (UserID, ContactID)
);

/*==============================================================*/
/* Index: Contacts_PK                                           */
/*==============================================================*/
create unique index Contacts_PK on Contacts (
UserID,
ContactID
);

/*==============================================================*/
/* Index: UsersContacts_FK                                      */
/*==============================================================*/
create  index UsersContacts_FK on Contacts (
UserID
);

/*==============================================================*/
/* Table: Deals                                                 */
/*==============================================================*/
create table Deals (
   PipelineID           INT4                 not null,
   StageID              INT4                 not null,
   StageName            VARCHAR(255)         not null,
   UserID               INT4                 not null,
   DealID               SERIAL               not null,
   Con_UserID           INT4                 null,
   ContactID            INT4                 null,
   DealName             VARCHAR(255)         not null,
   DealPrice            FLOAT8               null,
   DealDate             DATE                 null,
   DealMovedDate        DATE                 null,
   constraint PK_DEALS primary key (StageID, UserID, DealID)
);

/*==============================================================*/
/* Index: Deals_PK                                              */
/*==============================================================*/
create unique index Deals_PK on Deals (
StageID,
UserID,
DealID
);

/*==============================================================*/
/* Index: StagesDeals_FK                                        */
/*==============================================================*/
create  index StagesDeals_FK on Deals (
PipelineID,
StageID,
StageName
);

/*==============================================================*/
/* Index: UsersDeals_FK                                         */
/*==============================================================*/
create  index UsersDeals_FK on Deals (
UserID
);

/*==============================================================*/
/* Index: ContactsDeals_FK                                      */
/*==============================================================*/
create  index ContactsDeals_FK on Deals (
Con_UserID,
ContactID
);

/*==============================================================*/
/* Table: Goals                                                 */
/*==============================================================*/
create table Goals (
   UsersCompaniesID     INT4                 not null,
   GoalID               SERIAL               not null,
   GoalValue            FLOAT8               not null,
   GoalDate             DATE                 not null,
   GoalType             VARCHAR(150)         null,
   constraint PK_GOALS primary key (UsersCompaniesID, GoalID)
);

/*==============================================================*/
/* Index: Goals_PK                                              */
/*==============================================================*/
create unique index Goals_PK on Goals (
UsersCompaniesID,
GoalID
);

/*==============================================================*/
/* Index: CompanyGoals_FK                                       */
/*==============================================================*/
create  index CompanyGoals_FK on Goals (
UsersCompaniesID
);

/*==============================================================*/
/* Table: Pipelines                                             */
/*==============================================================*/
create table Pipelines (
   UsersCompaniesID     INT4                 not null,
   PipelineID           SERIAL               not null,
   PipelineName         VARCHAR(255)         not null,
   PipelineCreationDate DATE                 null,
   constraint PK_PIPELINES primary key (UsersCompaniesID, PipelineID)
);

/*==============================================================*/
/* Index: Pipelines_PK                                          */
/*==============================================================*/
create unique index Pipelines_PK on Pipelines (
UsersCompaniesID,
PipelineID
);

/*==============================================================*/
/* Index: UsersCompaniesPipelines_FK                            */
/*==============================================================*/
create  index UsersCompaniesPipelines_FK on Pipelines (
UsersCompaniesID
);

/*==============================================================*/
/* Table: Stages                                                */
/*==============================================================*/
create table Stages (
   PipelineID           INT4                 not null,
   StageID              SERIAL               not null,
   StageName            VARCHAR(255)         not null,
   UsersCompaniesID     INT4                 null,
   constraint PK_STAGES primary key (PipelineID, StageID, StageName)
);

/*==============================================================*/
/* Index: Stages_PK                                             */
/*==============================================================*/
create unique index Stages_PK on Stages (
PipelineID,
StageID,
StageName
);

/*==============================================================*/
/* Index: UsersStages_FK                                        */
/*==============================================================*/
create  index UsersStages_FK on Stages (
PipelineID
);

/*==============================================================*/
/* Table: Tasks                                                 */
/*==============================================================*/
create table Tasks (
   DealID               INT4                 not null,
   UserID               INT4                 not null,
   TaskID               SERIAL               not null,
   StageID              INT4                 null,
   Dea_UserID           INT4                 null,
   TaskName             VARCHAR(255)         not null,
   TaskDescription      TEXT                 null,
   TaskDate             DATE                 not null,
   TaskStatus           BOOL                 null,
   constraint PK_TASKS primary key (DealID, UserID, TaskID)
);

/*==============================================================*/
/* Index: Tasks_PK                                              */
/*==============================================================*/
create unique index Tasks_PK on Tasks (
DealID,
UserID,
TaskID
);

/*==============================================================*/
/* Index: DealsTasks_FK                                         */
/*==============================================================*/
create  index DealsTasks_FK on Tasks (
DealID
);

/*==============================================================*/
/* Index: UsersTasks_FK                                         */
/*==============================================================*/
create  index UsersTasks_FK on Tasks (
UserID
);

/*==============================================================*/
/* Table: Users                                                 */
/*==============================================================*/
create table Users (
   UserID               SERIAL               not null,
   UsersCompaniesID     INT4                 null,
   UserName             VARCHAR(150)         not null,
   UserCompanyName      VARCHAR(150)         not null,
   UserPhone            VARCHAR(150)         not null,
   UserEmail            VARCHAR(150)         not null
      constraint CKC_USEREMAIL_USERS check (CHECK(UserEmail LIKE '%_@__%.__%')),
   UserPassword         VARCHAR(255)         not null,
   UserType             VARCHAR(30)          null default 'Manager',
   UserActivated        BOOL                 null default false,
   UserActivationDueDate DATE                 null,
   constraint PK_USERS primary key (UserID)
);

/*==============================================================*/
/* Index: Users_PK                                              */
/*==============================================================*/
create unique index Users_PK on Users (
UserID
);

/*==============================================================*/
/* Index: UsersCompaniesUsers_FK                                */
/*==============================================================*/
create  index UsersCompaniesUsers_FK on Users (
UsersCompaniesID
);

/*==============================================================*/
/* Index: UserName_Index                                        */
/*==============================================================*/
create  index UserName_Index on Users (
UserName
);

/*==============================================================*/
/* Index: UserEmail_Index                                       */
/*==============================================================*/
create  index UserEmail_Index on Users (
UserEmail
);

/*==============================================================*/
/* Table: UsersCompanies                                        */
/*==============================================================*/
create table UsersCompanies (
   UsersCompaniesID     SERIAL               not null,
   UsersCompanyName     VARCHAR(100)         null,
   constraint PK_USERSCOMPANIES primary key (UsersCompaniesID)
);

/*==============================================================*/
/* Index: UsersCompanies_PK                                     */
/*==============================================================*/
create unique index UsersCompanies_PK on UsersCompanies (
UsersCompaniesID
);

alter table Contacts
   add constraint FK_CONTACTS_USERSCONT_USERS foreign key (UserID)
      references Users (UserID)
      on delete restrict on update restrict;

alter table Deals
   add constraint FK_DEALS_CONTACTSD_CONTACTS foreign key (Con_UserID, ContactID)
      references Contacts (UserID, ContactID)
      on delete restrict on update restrict;

alter table Deals
   add constraint FK_DEALS_STAGESDEA_STAGES foreign key (PipelineID, StageID, StageName)
      references Stages (PipelineID, StageID, StageName)
      on delete restrict on update restrict;

alter table Deals
   add constraint FK_DEALS_USERSDEAL_USERS foreign key (UserID)
      references Users (UserID)
      on delete restrict on update restrict;

alter table Goals
   add constraint FK_GOALS_COMPANYGO_USERSCOM foreign key (UsersCompaniesID)
      references UsersCompanies (UsersCompaniesID)
      on delete restrict on update restrict;

alter table Pipelines
   add constraint FK_PIPELINE_USERSCOMP_USERSCOM foreign key (UsersCompaniesID)
      references UsersCompanies (UsersCompaniesID)
      on delete restrict on update restrict;

alter table Stages
   add constraint FK_STAGES_PIPELINES_PIPELINE foreign key (UsersCompaniesID, PipelineID)
      references Pipelines (UsersCompaniesID, PipelineID)
      on delete restrict on update restrict;

alter table Tasks
   add constraint FK_TASKS_TASKSDEAL_DEALS foreign key (StageID, Dea_UserID, DealID)
      references Deals (StageID, UserID, DealID)
      on delete restrict on update restrict;

alter table Tasks
   add constraint FK_TASKS_USERSTASK_USERS foreign key (UserID)
      references Users (UserID)
      on delete restrict on update restrict;

alter table Users
   add constraint FK_USERS_USERSCOMP_USERSCOM foreign key (UsersCompaniesID)
      references UsersCompanies (UsersCompaniesID)
      on delete restrict on update restrict;

