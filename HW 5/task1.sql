-- Question 1
SELECT bill_date, bill_total
FROM restBill
WHERE cust_name = "Bob Crow";

-- Question 2
SELECT DISTINCT cust_name
FROM restBill
WHERE cust_name LIKE '% Smith'
ORDER BY cust_name DESC;

-- Question 3
SELECT DISTINCT cust_name
FROM restBill
WHERE cust_name LIKE '% C%';

-- Question 4
SELECT DISTINCT rs.first_name, rs.surname
FROM restStaff rs
JOIN restRoom_management rrm
ON rs.staff_no = rrm.headwaiter;

-- Question 5
SELECT *
FROM restBill
WHERE bill_date BETWEEN 160201 AND 160229;

-- Question 6
SELECT DISTINCT bill_date
FROM restBill
WHERE bill_date BETWEEN 150101 AND 151231
ORDER BY bill_date;
