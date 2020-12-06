#!/usr/bin/python


import sys

def main():
    print("# of arguments: ", len(sys.argv))
    print("Arguments list: ", str(sys.argv))
    print("Python version: ", sys.version_info[0])

    sys.exit(1)

if __name__ == "__main__":
    main()
