#!/usr/bin/env python
from sys import exit
from os import system
import shelve
import pickle

# should be userinput 
# "-" length output by the amount of characters in a date
results = {
            '11.12.2022':['35-60', '2-.'],
            '12.12.2022':['60-.', '60-.'],
            '13.12.2022':['60-20', '15-36', '60-.'],
            '14-12-2022':['60-.'],
            '15-12-2022':['60-.'],
            '16-12-2022':['120-60', '60-.', '60-.'],
            '21-12-2022':['120-10', '60-.'],
            '25-12-2022':['86-30', '20-20', '50-15', '60-15', '60-.'],
            '26-12-2022':['60-15', '60-.'],
            '27-12-2022':['75-15', '0-'],
            '31-12-2022':['60-15', '60-.']
           }
KEY_LEN = len('00.00.0000')
# "-" length output of a start of an entry and the finish
START_FINISH_LEN = 100

while True:
    try:
        user_input = input('\nOption: ').lower()

        if user_input == 'r' or user_input=='results':
            print('Selected option: print all results\n')
            print('-'*START_FINISH_LEN)

            for key, values in results.items():
                print('-' * (KEY_LEN+2))
                print(f'{key} |')
                print('-' * (KEY_LEN+2))
                sum_ = 0

                for value in values:
                    sum_ += int(value.split('-')[0])
                    spaces = ' ' * (len(key)-len(value)-1)
                    print(f'{value} {spaces} |')

                print('-' * (KEY_LEN+2))
                print('\n###################')
                print(f'{round(sum_/60, 1)} hours of work #')
                print('###################\n')

        elif user_input == 'e' or user_input == 'exit':
            print('\nEXITING\n')
            exit()

        elif user_input == 'c' or user_input == 'clear':
            system('clear')

        elif user_input == 'cdb' or user_input == 'cleardb':
            delete = input('Are you sure you want to delete all the previous results? (y/N)')
            if delete.lower() == 'y' or delete.lower() == 'yes':
                myShelve = shelve.open('work_time.txt')
                myShelve.clear()

        elif user_input == 'i' or user_input == 'input':
            test = {'222':['1','2']}
            myShelve = shelve.open('work_time.txt')
            myShelve.update(test)
            print(myShelve['222'])
            myShelve.close()


        else:
            print('Unknown option')

        print('-'*START_FINISH_LEN)

    # quit if ^C is pressed
    except KeyboardInterrupt:
        print('\n\nEXITING\n')
        exit()
    # be verbose about unpredictable errors
    except Exception as e:
        print('Unhandled exception occured: ' + str(e))
