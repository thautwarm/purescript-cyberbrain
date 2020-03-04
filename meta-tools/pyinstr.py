import sys
import os
import re
from subprocess import check_call, check_output

cwd0 = os.getcwd()
cwd1 = os.path.abspath(os.path.dirname(__file__))
os.chdir(cwd1)
TMPF = ".instrnames"

find_exe = re.compile("^py\S+\s+(.*)$", re.M)
all_envs = check_output(["conda", "env", "list"]).decode()
all_exe = [
    os.path.join(each.strip(), "python.exe") for each in find_exe.findall(all_envs)
]
for each in all_exe:
    check_call([each, "pyinstr-gen.py", TMPF], cwd=cwd1)

check_call([sys.executable, "pyinstr-collect.py", TMPF], cwd=cwd1)

os.remove(TMPF)
