-- Question 1
SELECT DISTINCT S.first_name, S.surname
FROM restStaff S
JOIN restBill B ON S.staff_no = B.waiter_no
WHERE B.cust_name = 'Tanya Singh';

-- Question 2
SELECT RM.room_date
FROM restRoom_management RM
JOIN restStaff S ON RM.headwaiter = S.staff_no
WHERE RM.room_name = 'Green'
  AND S.first_name = 'Charles'
  AND RM.room_date BETWEEN 160201 AND 160229;

-- Question 3
SELECT S.first_name, S.surname
FROM restStaff S
JOIN restStaff Z ON S.headwaiter = Z.headwaiter
WHERE Z.first_name = 'Zoe' AND Z.surname = 'Ball'
  AND S.staff_no != Z.staff_no;

-- Question 4
SELECT B.cust_name, B.bill_total, S.first_name, S.surname
FROM restBill B
JOIN restStaff S ON B.waiter_no = S.staff_no
ORDER BY B.bill_total DESC;

-- Question 5
SELECT DISTINCT S.first_name, S.surname
FROM restStaff S
JOIN restBill B ON S.staff_no = B.waiter_no
WHERE B.table_no IN (
    SELECT table_no
    FROM restBill
    WHERE bill_no IN (00014, 00017)
);

-- Question 6
SELECT DISTINCT S.first_name, S.surname
FROM restStaff S
JOIN restRoom_management RM ON S.staff_no = RM.headwaiter
WHERE RM.room_name = 'Blue' AND RM.room_date = 160312
UNION
SELECT DISTINCT S.first_name, S.surname
FROM restStaff S
WHERE S.headwaiter IN (
    SELECT headwaiter
    FROM restRoom_management
    WHERE room_name = 'Blue' AND room_date = 160312
);