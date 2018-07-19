# Command prompt execution
# python wordcount.py
# python setup.py build
# ------------------------------------
import glob
import os
import sys


# class FileMissingError is derived from super class Exception
class FileMissingError(Exception):
    # Constructor or Initializer
    def __init__(self, value):
        self.value = value
 
    # __str__ is to print() the value
    def __str__(self):
        return(repr(self.value))


def module_path():
    # Return the path where the executable version of this code is residing
    exe_path = os.path.dirname(sys.executable)
    # print(exePath)
    return exe_path


def getdirname():
    directory_names = []
    # curdir = os.path.dirname(os.path.realpath(__file__))
    curdir = module_path()
    try:
      filename = curdir + "\DirToSearch.txt"
      # print(filename)
      with open(filename, "r") as f:
          for line in f:
              if len(line[:-1]) < 1:
                  continue
              directory_names.append(line[:-1])  # Take the NEW LINE character off

      # for indexCnt in range(len(wordList)):
      #    print(wordList[indexCnt])
      return directory_names
    except OSError:
      print("No file " + filename)
      print("Please create that file and mention the directories and file patterns for this program to search")
      return ""

def getwordstosearch():
    wordlist = []
    # curdir = os.path.dirname(os.path.realpath(__file__))
    curdir = module_path()
    try:
      filename = curdir + "\WordsToSearch.txt"
      # print(filename)
      with open(filename, "r") as f:
          for line in f:
              if len(line[:-1]) < 1:
                  continue
              wordlist.append(line[:-1])  # Take the NEW LINE character off

      # for indexCnt in range(len(wordlist)):
      #    print(wordList[indexCnt])
      return wordlist
    except OSError:
      print("No file " + filename)
      print("Please create that file and mention the list of words for this program to search")
      return ""


def searchwords():
    try:
      worlisttosearch = getwordstosearch() # Form the array of words to search
      if worlisttosearch == "":
        raise FileMissingError("")
      filesinarray = getdirname()     # Form the array of file(s) in direcctories to search into
      if filesinarray == "":
        raise FileMissingError("")
      for dirCnt in range(len(filesinarray)): # For each file
          files = glob.glob(filesinarray[dirCnt])
          for fileName in files:
              # Open the file
              # Read the contents
              # Get the number of occurences of the word
              # Close the file
              print("\n")
              with open(fileName) as f:
                file = f.read()
                for indexCnt in range(len(worlisttosearch)):    # For each word
                    term = worlisttosearch[indexCnt]
                    count = file.count(term)
                    print(fileName, "|", term, "|", count)
    except FileMissingError:
        print("Aborting further processing")

def main():
    searchwords()


main()