DROP DATABASE IF EXISTS baza;

CREATE DATABASE baza;

CREATE TABLE ryby(
    id int UNSIGNED AUTO_INCREMENT NOT NULL PRIMARY KEY,
    nazwa TEXT,
    wystepowanie TEXT,
    styl_zycia INTEGER
);

CREATE TABLE okres_ochronny(
    id int UNSIGNED AUTO_INCREMENT NOT NULL PRIMARY KEY,
    od_miesiaca INTEGER,
    do_miesiaca INTEGER,
    wymiar_ochronny INTEGER,
    Ryby_id int UNSIGNED NOT NULL,
    FOREIGN KEY (Ryby_id) REFERENCES Ryby(id)
);

CREATE TABLE lowisko(
    id int UNSIGNED AUTO_INCREMENT NOT NULL PRIMARY KEY,
    akwen TEXT,
    wojewodztwo TEXT,
    rodzaj INTEGER,
    Ryby_id int UNSIGNED NOT NULL,
    FOREIGN KEY (Ryby_id) REFERENCES Ryby(id)
);