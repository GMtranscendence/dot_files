#!/usr/bin/env python

results = {'11.12.2022':['35-60', '2-.'], '12.12.2022':['60-.', '60-.']}
KEY_LEN = len('00.00.0000')

for key, values in results.items():
    print('-' * (KEY_LEN+2))
    print(key, '|')
    print('-' * (KEY_LEN+2))
    sum_ = 0
    for value in values:
        sum_ += int(value.split('-')[0])
        print(value, ' ' * (len(key)-len(value)-1), '|')
    print('-' * (KEY_LEN+2))

    output = 'hours of work'
    print('\n###################')
    print(f'{round(sum_/60, 1)} hours of work #')
    print('###################\n')
