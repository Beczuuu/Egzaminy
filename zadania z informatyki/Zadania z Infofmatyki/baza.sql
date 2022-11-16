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

-- wyświetlić wszystkie i rezerwacje jeśli istnieją
select * from reservation_table as rt
join restaurant as r on r.id = rt.restaurant_id
left join reservation as rsv on rsv.reservation_table_id = rt.id;
-- wyświetlić wszystkie stoliki, które nie mają rezerwacji
select * from reservation_table as rt
join restaurant as r on r.id = rt.restaurant_id
left join reservation as rsv on rsv.reservation_table_id = rt.id
where rsv.reservation_table_id is null;
-- wyświetlić stoliki, które mają rezerwację w danej restauracji
select * from reservation_table as rt
join restaurant as r on r.id = rt.restaurant_id
left join reservation as rsv on rsv.reservation_table_id = rt.id
where r.id = 1;
-- wyświetlić wszystkich pracowników oraz ich dane dot. stanowiska i zatrudnienia w restauracjach
select * from employee as e
join restaurant_employee as re on re.employee_id = e.id 
join roles as r on r.id = re.role_id
join restaurant as rs on rs.id = re.restaurant_id;
-- wyświetlić pracowników nigdzie nie zatrudnionych
select * from employee as e
left join restaurant_employee as re on e.id = re.employee_id
left join roles as r on r.id = re.role_id
left join restaurant as rs on rs.id = re.restaurant_id
where re.employee_id is null;
-- wyświetlić pracowników, którzy pracują w conajmniej 2 restauracjach
select * from employee as e
join restaurant_employee as re on re.employee_id = e.id
group by e.id
having count(re.restaurant_id) > 1;
-- cross join restauracji i pracowników
select * from restaurant as res
cross join employee as e;
