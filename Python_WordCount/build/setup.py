from cx_Freeze import setup, Executable

base = None    

executables = [Executable("..//wordcount.py", base=base)]

packages = ["idna"]
options = {
    'build_exe': {    
        'packages':packages,
    },    
}

setup(
    name = "WordCount",
    options = options,
    version = "1.0",
    description = 'Word Count',
    executables = executables
)