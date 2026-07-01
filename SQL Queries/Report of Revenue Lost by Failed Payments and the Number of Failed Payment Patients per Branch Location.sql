SELECT doctors.hospital_branch AS Branch_Location,
COUNT(DISTINCT patients.patient_id) AS Total_Patients,
ROUND(SUM(billing.amount)) AS Total_Revenue
FROM appointments 
INNER JOIN patients ON patients.patient_id = appointments.patient_id
INNER JOIN doctors ON doctors.doctor_id = appointments.doctor_id
INNER JOIN treatments ON treatments.appointment_id = appointments.appointment_id
INNER JOIN billing ON billing.treatment_id = treatments.treatment_id
WHERE billing.payment_status = 'Failed' 
GROUP BY doctors.hospital_branch; 