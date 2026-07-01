SELECT doctors.hospital_branch AS Branch_Location,
ROUND(SUM(billing.amount)) AS Total_Revenue
FROM appointments 
INNER JOIN doctors ON doctors.doctor_id = appointments.doctor_id
INNER JOIN treatments ON treatments.appointment_id = appointments.appointment_id
INNER JOIN billing ON billing.treatment_id = treatments.treatment_id
WHERE billing.payment_status = 'Paid' 
AND (billing.bill_date LIKE '2023-06%' 
	OR billing.bill_date LIKE '2023-07%' 
	OR billing.bill_date LIKE '2023-08%')
GROUP BY doctors.hospital_branch; 