DROP DATABASE IF EXISTS wedkowanie;
CREATE DATABASE wedkowanie;
USE wedkowanie;

CREATE TABLE Ryby (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nazwa TEXT NOT NULL,
    wystepowanie TEXT NOT NULL,
    styl_zycia INTEGER NOT NULL
);

CREATE TABLE Okres_ochronny (
    id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    Ryby_id INTEGER NOT NULL,
    FOREIGN KEY (Ryby_id) REFERENCES Ryby(id),
    od_miesiaca INTEGER NOT NULL,
    do_miesiaca INTEGER NOT NULL,
    wymiar_ochronny INTEGER NOT NULL
);
CREATE TABLE Lowisko (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Ryby_id INTEGER NOT NULL,
    FOREIGN KEY (Ryby_id) REFERENCES Ryby(id),
    akwen TEXT NOT NULL,
    wojewodztwo TEXT NOT NULL,
    rodzaj INTEGER NOT NULL
);

-- Wyświetlić wszystkie i rezerwacje jeśli istnieją
SELECT * FROM reservation_table AS rt
JOIN restaurant AS r ON r.id = rt.restaurant_id
left JOIN reservation AS rsv ON rsv.reservation_table_id = rt.id;
-- Wyświetlić wszystkie stoliki, które nie mają rezerwacji
SELECT * FROM reservation_table AS rt
JOIN restaurant AS r ON r.id = rt.restaurant_id
left JOIN reservation AS rsv ON rsv.reservation_table_id = rt.id
WHERE rsv.reservation_table_id is null;
-- Wyświetlić stoliki, które mają rezerwację w danej restauracji
SELECT * FROM reservation_table AS rt
JOIN restaurant AS r ON r.id = rt.restaurant_id
left JOIN reservation AS rsv ON rsv.reservation_table_id = rt.id
WHERE r.id = 1;
-- Wyświetlić wszystkich pracowników oraz ich dane dot. stanowiska i zatrudnienia w restauracjach
SELECT * FROM employee AS e
JOIN restaurant_employee AS re ON re.employee_id = e.id 
JOIN roles AS r ON r.id = re.role_id
JOIN restaurant AS rs ON rs.id = re.restaurant_id;
-- Wyświetlić pracowników nigdzie nie zatrudnionych
SELECT * FROM employee AS e
left JOIN restaurant_employee AS re ON e.id = re.employee_id
left JOIN roles AS r ON r.id = re.role_id
left JOIN restaurant AS rs ON rs.id = re.restaurant_id
WHERE re.employee_id IS NULL;
-- Wyświetlić pracowników, którzy pracują w conajmniej 2 restauracjach
SELECT * FROM employee AS e
JOIN restaurant_employee AS re ON re.employee_id = e.id
group by e.id
having count(re.restaurant_id) > 1;
-- Cross join restauracji i pracowników
SELECT * FROM restaurant AS res
CROSS JOIN employee AS e;
