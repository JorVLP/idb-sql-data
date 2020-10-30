import os
import subprocess
subprocess.call("psql -1 -h pgteach -f schema.sql",shell=True)
print(subprocess.check_output("cd",shell=True))
subprocess.call("psql -1 -h pgteach -f copydata.sql",shell=True)
print(subprocess.check_output("cd",shell=True))
