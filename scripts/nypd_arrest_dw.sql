CREATE SCHEMA IF NOT EXISTS "nypd_arrest";

CREATE  TABLE "nypd_arrest".dim_arrest ( 
	arrestid             BIGINT    ,
	offensecategory      VARCHAR    ,
	offensedetail        VARCHAR    ,
	offenselevel         CHAR(1)    ,
	arrestprecinct       INT    ,
	perpagegroup         VARCHAR    ,
	perpsex              CHAR(1)    ,
	perprace             VARCHAR    ,
	CONSTRAINT pk_arrestid UNIQUE ( arrestid ) ,
	CONSTRAINT pk_arrestid_001 UNIQUE ( arrestid ) 
 );

CREATE  TABLE "nypd_arrest".dim_date ( 
	dateid               BIGINT  NOT NULL  ,
	"year"               INT    ,
	quarter              INT    ,
	monthnumber          INT    ,
	monthname            VARCHAR(100)    ,
	weekofmonth          INT    ,
	weekofyear           INT    ,
	dayname              VARCHAR(100)    ,
	daynumber            INT    ,
	dateisoformat        DATETIME    ,
	CONSTRAINT pk_dim_date PRIMARY KEY ( dateid )
 );

CREATE  TABLE "nypd_arrest".dim_location ( 
	locationid           BIGINT  NOT NULL  ,
	arrestborough        CHAR(1)    ,
	latitude             DECIMAL    ,
	longitude            DECIMAL    ,
	CONSTRAINT pk_dim_location PRIMARY KEY ( locationid )
 );

CREATE  TABLE "nypd_arrest".facts_nypd_arrests ( 
	factid               BIGINT  NOT NULL  ,
	locationid           BIGINT    ,
	arrestid             BIGINT    ,
	arrestdate           BIGINT    ,
	CONSTRAINT pk_facts_nypd_arrests PRIMARY KEY ( factid )
 );

CREATE UNIQUE INDEX unq_locationid ON "nypd_arrest".facts_nypd_arrests ( locationid );

CREATE UNIQUE INDEX unq_arrestid ON "nypd_arrest".facts_nypd_arrests ( arrestid );

CREATE UNIQUE INDEX unq_arrestdate ON "nypd_arrest".facts_nypd_arrests ( arrestdate );
