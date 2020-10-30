\copy courses(code, name, credits) from 'courses.csv' with csv
\copy degrees(code, name, type) from 'degrees.csv' with csv
\copy students(uun, name, degree) from 'students.csv' with csv
\copy exams(student, course, date, grade) from 'exams.csv' with csv
\copy programmes(degree,course) from 'programmes.csv' with csv
