# This is a sample Python script.

# Press Shift+F10 to execute it or replace it with your code.
# Press Double Shift to search everywhere for classes, files, tool windows, actions, and settings.


def f(n=10):
    output = []
    for i in range(n):
        a = [0 for x in range(n)]
        a[i] = 1
        output.append(a)
    return output


def g():
    n = "91"
    a = [0 for x in range(10)]
    i = n[0]
    j = n[1]
    a[int(i)] = 1
    a[int(j)] = 1
    print(a)



# Press the green button in the gutter to run the script.
if __name__ == '__main__':
    g()

# See PyCharm help at https://www.jetbrains.com/help/pycharm/
