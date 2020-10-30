
-- drop tables
DROP TABLE IF EXISTS courses CASCADE;
DROP TABLE IF EXISTS degrees CASCADE;
DROP TABLE IF EXISTS students CASCADE;
DROP TABLE IF EXISTS exams CASCADE;
DROP TABLE IF EXISTS programmes CASCADE;

CREATE TABLE Courses (
    code    char(8)     PRIMARY KEY,
    name    varchar(60) NOT NULL,
    credits smallint    NOT NULL CHECK( credits >= 0 )
);

CREATE TABLE Degrees (
    code char(8)     PRIMARY KEY,
    name varchar(10) NOT NULL,
    type char(2)     NOT NULL CHECK( type IN ('PG','UG') )
);

CREATE TABLE Students (
    uun    char(8)     PRIMARY KEY,
    name   varchar(40) NOT NULL,
    degree char(8)     NOT NULL REFERENCES Degrees(code)
);

CREATE TABLE Exams (
    student char(8)  REFERENCES Students(uun),
    course  char(8)  REFERENCES Courses(code),
    date    date     NOT NULL,
    grade   smallint NOT NULL CHECK( grade >=0 AND grade <= 100 ),
    PRIMARY KEY (student, course)
);

CREATE TABLE Programmes (
    degree char(8) REFERENCES Degrees(code),
    course char(8) REFERENCES Courses(code),
    PRIMARY KEY (degree, course)
);