-- Question 1
SELECT DISTINCT B.cust_name
FROM restBill B
JOIN restRest_table T ON B.table_no = T.table_no
JOIN restRoom_management RM ON T.room_name = RM.room_name
JOIN restStaff S ON RM.headwaiter = S.staff_no
WHERE B.bill_total > 450.00
  AND S.first_name = 'Charles';

-- Question 2
SELECT DISTINCT s.first_name, S.surname
FROM restRoom_management RM
JOIN restRest_table T ON RM.room_name = T.room_name
JOIN restStaff S ON RM.headwaiter = S.staff_no
JOIN restBill B ON B.table_no = T.table_no
WHERE B.cust_name lIKE 'Nerida %'
  AND B.bill_date = 160111;

-- Question 3
