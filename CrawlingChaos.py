
p = [70, 152, 195, 284, 475, 612, 791, 896, 810, 850, 737, 1332,1469, 1120, 1470, 832, 1785, 2196, 1520, 1480, 1449]
for i in range(21):
    tmp = 0
    if(i == 0):
        print('F',end='')
        continue
    tmp = int(p[i] / (i+1)) 
    print(chr(tmp),end='')
print('\n')

