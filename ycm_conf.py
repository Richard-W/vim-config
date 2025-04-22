import os

common_flags = [
    '-Wall',
    '-Wextra',
]

cxx_flags = [
    '-x',
    'c++',
    '-std=c++20',
]

c_flags = [
    '-x',
    'c',
    '-std=c11',
]

include_dirs = [
    'include',
    'build/include',
]

for dir in include_dirs:
    common_flags.append('-I')
    if not os.path.basename(__file__).startswith('ycm_conf'):
        common_flags.append(os.path.join(os.path.dirname(__file__), dir))
    else:
        common_flags.append(os.path.abspath(dir))

def FlagsForFile(filename):
    flags = []
    flags.extend(common_flags)

    _, extension = os.path.splitext(filename)
    if extension == '.c':
        flags.extend(c_flags)
    else:
        flags.extend(cxx_flags)

    return {
        'flags': flags,
        'do_cache': True
    }
