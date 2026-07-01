SELECT hospital_branch AS Location, 
COUNT(DISTINCT doctor_id) AS Total_Doctors 
FROM doctors
WHERE years_experience >= 20
GROUP BY hospital_branch; 