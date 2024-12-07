-- Question 1
CREATE VIEW samsBills AS
SELECT S.first_name, S.surname, B.bill_date, B.cust_name, B.bill_total
FROM restBill B
JOIN restStaff S ON B.waiter_no = S.staff_no
WHERE S.first_name = 'Sam' AND S.surname = 'Pitt';

-- Question 2
SELECT * 
FROM samsBills
WHERE bill_total > 400;

-- Question 3
CREATE VIEW roomTotals AS
SELECT T.room_name, SUM(B.bill_total) AS total_sum
FROM restRest_table T
JOIN restBill B ON B.table_no = T.table_no
GROUP BY T.room_name;

SELECT * FROM roomTotals;

-- Question 4
CREATE VIEW teamTotals AS 
SELECT CONCAT(HW.first_name,' ',HW.surname) AS headwaiter_name, 
       SUM(B.bill_total) AS total_sum
FROM restBill B
JOIN restStaff W ON B.waiter_no = W.staff_no
JOIN restStaff HW ON W.headwaiter = HW.staff_no
GROUP BY headwaiter_name;

SELECT * FROM teamTotals;