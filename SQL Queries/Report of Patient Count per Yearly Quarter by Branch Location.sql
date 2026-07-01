SELECT doctors.hospital_branch AS Branch_Location,
COUNT(CASE WHEN appointments.appointment_date BETWEEN '2023-01-%' AND '2023-03-%' THEN 1 END) First_Quarter_Total,
COUNT(CASE WHEN appointments.appointment_date BETWEEN '2023-04-%' AND '2023-06-%' THEN 1 END) Second_Quarter_Total,
COUNT(CASE WHEN appointments.appointment_date BETWEEN '2023-07-%' AND '2023-09-%' THEN 1 END) Third_Quarter_Total,
COUNT(CASE WHEN appointments.appointment_date BETWEEN '2023-010-%' AND '2023-12-%' THEN 1 END) Fourth_Quarter_Total
FROM appointments 
INNER JOIN patients ON patients.patient_id = appointments.patient_id
INNER JOIN doctors ON doctors.doctor_id = appointments.doctor_id
GROUP BY doctors.hospital_branch; 