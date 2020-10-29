import os
import subprocess
subprocess.call("psql -h pgteach -c \"\\i db.sql\"",shell=True)
print(subprocess.check_output("cd",shell=True))
subprocess.call("psql -h pgteach -c \"\\copy courses(code, name, credits) from './courses.csv' with (format csv)\"",shell=True)
print(subprocess.check_output("cd",shell=True))
subprocess.call("psql -h pgteach -c \"\\copy degrees(code, name, type) from './degrees.csv' with (format csv)\"",shell=True)
print(subprocess.check_output("cd",shell=True))
subprocess.call("psql -h pgteach -c \"\\copy students(uun, name, degree) from './students.csv' with (format csv)\"",shell=True)
print(subprocess.check_output("cd",shell=True))
subprocess.call("psql -h pgteach -c \"\\copy exams(student, course, date, grade) from './exams.csv' with (format csv)\"",shell=True)
print(subprocess.check_output("cd",shell=True))
subprocess.call("psql -h pgteach -c \"\\copy programmes(degree,course) from './programmes.csv' with (format csv)\"",shell=True)
subprocess.check_output("cd",shell=True)


