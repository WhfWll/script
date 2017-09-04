import sys

from management import ManagementUtility


if __name__ == '__main__':
    utility = ManagementUtility(sys.argv)
    utility.execute()



