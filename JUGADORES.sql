/* ---------------------------------------------------- */
/*  Generated by Enterprise Architect Version 14.0 		*/
/*  Created On : 16-nov.-2022 8:19:07 p. m. 				*/
/*  DBMS       : PostgreSQL 						*/
/* ---------------------------------------------------- */

/* Drop Tables */

DROP TABLE IF EXISTS "JUGADORES" CASCADE
;

/* Create Tables */

CREATE TABLE "JUGADORES"
(
	num_identificacion varchar(50) NOT NULL,
	val_nombre varchar(50) NULL,
	ide_organizacion varchar(50) NULL
)
;

/* Create Primary Keys, Indexes, Uniques, Checks */

ALTER TABLE "JUGADORES" ADD CONSTRAINT "PK_USUARIO"
	PRIMARY KEY (num_identificacion)
;

CREATE INDEX "IXFK_USUARIO_ORGANIZACION" ON "JUGADORES" (ide_organizacion ASC)
;

/* Create Foreign Key Constraints */

ALTER TABLE "JUGADORES" ADD CONSTRAINT "FK_USUARIO_ORGANIZACION"
	FOREIGN KEY (ide_organizacion) REFERENCES "ORGANIZACIONES" (ide_organizacion) ON DELETE No Action ON UPDATE No Action
;

/* Create Table Comments, Sequences for Autonumber Columns */

COMMENT ON TABLE "JUGADORES"
	IS 'HAce referencia a los empleados que van a participar del sorteo'
;
