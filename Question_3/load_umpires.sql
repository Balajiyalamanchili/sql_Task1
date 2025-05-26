--------------- CREATE TABLE -----------------------

CREATE TABLE umpires (
    umpire VARCHAR(100),
    country VARCHAR(50)
);


--------------IMPORT DATA-----------------------------

\copy umpires From 'path/.csv' CSV HEADER ;
