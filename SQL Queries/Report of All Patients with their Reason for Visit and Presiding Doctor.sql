SELECT CONCAT(patients.first_name, ' ', patients.last_name) AS Patient, 
appointments.reason_for_visit AS Visit_Reason, 
CONCAT(doctors.first_name, ' ', doctors.last_name) AS Doctor 
FROM appointments 
INNER JOIN patients ON patients.patient_id = appointments.patient_id
INNER JOIN doctors ON doctors.doctor_id = appointments.doctor_id
ORDER BY patients.first_name, patients.last_name ASC; 