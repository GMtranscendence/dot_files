#!/usr/bin/env python

from sys import exit
from os import popen, system, path
import os
import shelve
import time

db_path = path.dirname(path.realpath(__file__)) + '/work_time.txt'

def print_help(modes, mode_description, current_mode=None):
    if current_mode:
        print('Current mode: ', current_mode)
    print('-'*50)
    print('\nAvailable operating modes:', end='\n\n')
    print('-'*50)
    group_mode= ''
    unique_desc = ''
    current_mode_code = 0
    for mode in modes:
        if modes[mode] == current_mode_code:
            group_mode += mode + ', '
            unique_desc = mode_description[modes[mode]]
        else:
            print(group_mode, ':\t\t', unique_desc)
            current_mode_code = modes[mode]
            group_mode = mode + ', '

    print(group_mode, ':\t\t', unique_desc)
    print('-'*50, end='\n\n')


def timer():
    minutes = float(input('How much time do you want to study (in minutes): '))
    seconds = minutes * 60

    # start the timer
    start_time = time.time()
    end_time = start_time + seconds

    # loop until the timer ends
    while time.time() < end_time:
        try:
            time_left_seconds = end_time - time.time()
            time_left_minutes, time_left_seconds = divmod(time_left_seconds, 60)
            time_left_hours, time_left_minutes = divmod(time_left_minutes, 60)
            print(f'Time left: {int(time_left_hours):02d}:' +
                               f'{int(time_left_minutes):02d}:' +
                               f'{int(time_left_seconds):02d}\r', end='')
            time.sleep(1)
        except KeyboardInterrupt:
            print(f'\nStudied for {(time.time() - start_time)/60:.2f} minutes. Stopping...')
            return


    print("\nTimer finished!")
    system('mpv --no-video --really-quiet ' + os.path.dirname(os.path.realpath(__file__)) + '/test.mp3 &')


def info():
    system('clear')
    mode = 'informational'
    KEY_LEN = len('00.00.0000')
    # "-" length output of a start of an entry and the finish
    START_FINISH_LEN = 100
    options = {
        'help': 0, 'h': 0,
        'results': 1, 'r': 1,
        'exit': 2, 'e': 2,
        'clear': 3, 'c': 3,
        'cleardb': 4, 'cdb': 4,
        'input': 5, 'i': 5,
        'all': 6, 'a': 6
    }
    option_desc = ['print this help menu', 'print results', 'exit', 'clear the screen', 'clear all the previous session results', 'input the time you worked for today', 'show all the stats']
    print_help(options, option_desc, mode)

    print('-'*START_FINISH_LEN)
    while True:
        try:
            user_input = input('\nOption: ').lower()

            if options[user_input] == 0:
                print_help(options, option_desc, mode)
            elif options[user_input] == 1:
                time_sum = 0
                with shelve.open(db_path) as my_shelve:
                    current_date = popen('date +%d-%m-%y').read()
                    for session_time in my_shelve[current_date]:
                        time_sum += int(session_time)
                print(f'\nToday you studied for: {time_sum/60} hours')

#                    if current_date in my_shelve:
#                        my_shelve[current_date].append(study_time)
#                    else:
#                        print('No statistics for today')

            elif options[user_input] == 2:
                print('\n[*] EXITING THE INFORMATIONAL MODE\n')
                break

            elif options[user_input] == 3:
                system('clear')

            elif options[user_input] == 4:
                delete = input('Are you sure you want to delete all the previous results? (y/N)').lower()
                if delete == 'y' or delete == 'yes':
                     system(f'rm -rf {db_path}')
#                    myShelve = shelve.open(db_path)
#                    myShelve.clear()

            elif options[user_input] == 5:
                study_time = input('How much time in minutes did you study? (cancel to go back): ')
                if study_time == 'cancel':
                    continue
                with shelve.open(db_path, writeback=True) as my_shelve:
                    current_date = popen('date +%d-%m-%y').read()
                    if current_date in my_shelve:
                        my_shelve[current_date].append(study_time)
                    else:
                        my_shelve[current_date] = [study_time]

            elif options[user_input] == 6:
                with shelve.open(db_path, 'r') as shelf:
                    date_sum = 0
                    for date in shelf:
                        for time in shelf[date]:
                            date_sum += int(time)
                        print(f'In {date} you studied for {date_sum/60} hours')
                        date_sum = 0


            else:
                print('Unknown option')

            print('-'*START_FINISH_LEN)

        # quit if ^C is pressed
        except KeyboardInterrupt:
            print('\n[*] EXITING\n')
            exit()
        # be verbose about unpredictable errors
        except Exception as e:
            print('Unhandled exception occured: ' + str(e))

def main():
    system('clear')
    modes = {
        'timer': 0, 't': 0,
        'info': 1, 'i': 1,
        'help': 2, 'h': 2,
        'exit': 3, 'e': 3,
        'clear': 4, 'c': 4
    }
    mode_desc = ['for measuring productivity time', 'display information about your study sessions', 'display this message', 'exit the program', 'clear the terminal']
    print_help(modes, mode_desc)
    while True:
        try:
            mode = input('Enter the operating mode: ').lower()
            mode = modes[mode]
            if mode == 0:
                timer()
            elif mode == 1:
                info()
            elif mode == 2:
                print_help(modes, mode_desc)
            elif mode == 3:
                print('\n[*] EXITING\n')
                exit()
            elif mode == 4:
                system('clear')
            else:
                print('[*] Unknown option')

        except KeyboardInterrupt:
            print('\n[*] EXITING\n')
            exit()
        except Exception as e:
            print('[*] Unhandled exception occured: ' + str(e))


if __name__ == '__main__':
    main()
