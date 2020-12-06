#!/usr/bin/python

import sys

def main():
    print("-------------- Python ---------")
    print("# of arguments: ", len(sys.argv))
    print("Arguments list: ", str(sys.argv))
    print("Python version: ", sys.version_info[0])

    # sys.exit(1) // Not clean exit. // This will not add to commit. git status will show no commits
    sys.exit(0)  # Clean exit

if __name__ == "__main__":
    main()
