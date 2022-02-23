CREATE TABLE PASO (
	ID numeric(19,0) NOT NULL PRIMARY KEY,
	ID_RECETA numeric (19,0) NOT NULL REFERENCES RECETA,
	DESCRIPCION character varying(255) NOT NULL,
	ORDEN numeric(2,0)
);
CREATE SEQUENCE PASO_ID_SEQ;
ALTER TABLE PASO ALTER ID SET DEFAULT NEXTVAL('PASO_ID_SEQ');