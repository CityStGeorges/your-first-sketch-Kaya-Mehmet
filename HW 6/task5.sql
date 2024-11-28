-- Question 1
SELECT S.first_name, S.surname, B.bill_date, COUNT(B.bill_no) AS num_bills
FROM restBill B
JOIN restStaff S ON B.waiter_no = S.staff_no
GROUP BY S.first_name, S.surname, B.bill_date
HAVING COUNT(B.bill_no) >= 2;

-- Question 2
SELECT room_name, COUNT(table_no) AS num_tables
FROM restRest_table
WHERE no_of_seats > 6
GROUP BY room_name;

-- Question 3 (could be 'SUM' as opposed to 'COUNT' but wording was hard to understand)
SELECT T.room_name, COUNT(B.bill_no)
FROM restBill b
JOIN restRest_table T ON B.table_no = T.table_no
GROUP BY T.room_name;

-- Question 4
SELECT S.first_name, S.surname, SUM(B.bill_total) AS total_bill_amount
FROM restStaff S
JOIN restStaff W ON W.headwaiter = S.staff_no
JOIN restBill B ON B.waiter_no = W.staff_no
GROUP BY S.staff_no, S.first_name, S.surname
ORDER BY total_bill_amount DESC;

-- Question 5
SELECT cust_name
FROM restBill
GROUP BY cust_name
HAVING AVG(bill_total) > 400;

-- Question 6
SELECT S.first_name, S.surname, COUNT(B.bill_no) AS num_bills
FROM restBill B
JOIN restStaff S ON B.waiter_no = S.staff_no
GROUP BY S.first_name, S.surname, B.bill_date
HAVING COUNT(B.bill_no) >= 3;