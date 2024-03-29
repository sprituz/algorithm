import sys

input = sys.stdin.readline

n = int(input())
d = []
for i in range(n):
    d.append(list(map(int, input().split())))
for i in range(1, len(d)):
    d[i][0] = min(d[i - 1][1], d[i - 1][2]) + d[i][0]
    d[i][1] = min(d[i - 1][0], d[i - 1][2]) + d[i][1]
    d[i][2] = min(d[i - 1][0], d[i - 1][1]) + d[i][2]

print(min(d[n - 1][0], d[n - 1][1], d[n - 1][2]))