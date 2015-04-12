c = get_config()

c.InteractiveShellApp.exec_lines = [
    'from __future__ import division',
    'import io',
    'import os',
    'import time',
    'import sys',
    'import re',
    'from datetime import datetime, date, timedelta',
]

c.TerminalInteractiveShell.confirm_exit = False
