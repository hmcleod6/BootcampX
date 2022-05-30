SELECT cohorts.name as cohort, count(assignment_submissions) as total_submissions
FROM students JOIN assignment_submissions ON assignment_submissions.student_id = students.id
JOIN cohorts ON cohorts.id = students.cohort_id
GROUP BY cohorts.name
ORDER BY count(assignment_submissions) DESC;