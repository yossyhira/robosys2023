#!/usr/bin/python3
import sys

def find_anniversary(date):
    with open('anniversaries.txt', 'r') as file:
        lines = file.readlines()
        for line in lines:
            if line.startswith(date):
                return line.strip().split(',')[1]
    return "その日付に対応する記念日は見つかりませんでした。"

def main():
    date = sys.argv[1]
    print(find_anniversary(date))

if __name__ == "__main__":
    main()

