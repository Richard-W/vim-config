import os

flags = [
    '-Wall',
    '-Wextra',
    '-x',
    'c++',
    '-std=c++14',
]

include_dirs = [
    'include'
]

for dir in include_dirs:
    flags.append('-I')
    if not os.path.basename(__file__).startswith('ycm_conf'):
        flags.append(os.path.join(os.path.dirname(__file__), dir))
    else:
        flags.append(os.path.abspath(dir))

def FlagsForFile(filename):
  return {
    'flags': flags,
    'do_cache': True
  }
