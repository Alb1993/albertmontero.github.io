CREATE TABLE ALUMNOS

(DNI VARCHAR(10) NOT NULL,

APENOM VARCHAR(30),

DIREC VARCHAR(30),

POBLA VARCHAR(15),

TELEF VARCHAR(10),

PRIMARY KEY (DNI)

);

CREATE TABLE ASIGNATURAS

(COD INT(2) NOT NULL,

NOMBRE VARCHAR(25),

CURSO INT (1),

PRIMARY KEY (COD)

);

CREATE TABLE NOTAS

(DNI VARCHAR(10) NOT NULL,

COD INT(2) NOT NULL,

NOTA INT(2),

PRIMARY KEY (DNI, COD),

FOREIGN KEY (DNI) REFERENCES ALUMNOS(DNI),

FOREIGN KEY (COD) REFERENCES ASIGNATURAS(COD)

);

INSERT INTO ASIGNATURAS VALUES (1,'Prog. Leng. Estr.', 1);

INSERT INTO ASIGNATURAS VALUES (2,'Sist. Informáticos', 2);

INSERT INTO ASIGNATURAS VALUES (3,'Análisis', 2);

INSERT INTO ASIGNATURAS VALUES (4,'FOL', 1);

INSERT INTO ASIGNATURAS VALUES (5,'RET', 1);

INSERT INTO ASIGNATURAS VALUES (6,'Entornos Gráficos', 2);

INSERT INTO ASIGNATURAS VALUES (7,'Aplic. Entornos 4ªGen', 2);

INSERT INTO ALUMNOS VALUES

('12344345','Alcalde García, Elena', 'C/Las Matas, 24','Madrid','917766545');

INSERT INTO ALUMNOS VALUES

('4448242','Cerrato Vela, Luis', 'C/Mina 28 - 3A', 'Madrid','916566545');

INSERT INTO ALUMNOS VALUES

('56882942','Díaz Fernández, María', 'C/Luis Vives 25', 'Móstoles','915577545');

INSERT INTO NOTAS VALUES('12344345', 1,6);

INSERT INTO NOTAS VALUES('12344345', 2,5);

INSERT INTO NOTAS VALUES('12344345', 3,6);

INSERT INTO NOTAS VALUES('4448242', 4,6);

INSERT INTO NOTAS VALUES('4448242', 5,8);

INSERT INTO NOTAS VALUES('4448242', 6,4);

INSERT INTO NOTAS VALUES('4448242', 7,5);

INSERT INTO NOTAS VALUES('56882942', 5,7);

INSERT INTO NOTAS VALUES('56882942', 6,8);

INSERT INTO NOTAS VALUES('56882942', 7,9);

