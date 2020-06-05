# Extended Euclidean Algorithm
# Setup
a = []
b = []
r = []
q = []
s = []
t = []
a_space = []
b_space = []
r_space = []
q_space = []
s_space = []
space = [" ", "  ", "   ", "    ", "     ", "      ", "       ", "        ", "         "]

a.append(-1)
a.append(-1)
a_space.append(space[8])
a_space.append(space[8])
b.append(-1)
b.append(-1)
b_space.append(space[8])
b_space.append(space[8])
r.append(-1)
r.append(-1)
r_space.append(space[8])
r_space.append(space[8])
q.append(-1)
q.append(-1)
q_space.append(space[8])
q_space.append(space[8])
s.append(1)
s.append(0)
s_space.append(space[6])
s_space.append(space[6])
t.append(0)
t.append(1)

def space_size(number):
       digits = len(str(number))
       return 7 - digits


#Algorithm
num1 = 51459
num2 = 510357
row = 2

if(num2 > num1):
       temp = num1
       num1 = num2
       num2 = temp

a.append(num1)
a_space.append(space[space_size(num1)])
b.append(num2)
b_space.append(space[space_size(num2)])

while 1 == 1:
       if a[row] == 0 or b[row] == 0:
              break
       r.append(a[row]%b[row])
       r_space.append(space[space_size(r[row])])
       q.append((a[row] - r[row])/b[row])
       q_space.append(space[space_size(q[row])])
       s.append(s[row-2] - (q[row]*s[row-1]))
       s_space.append(space[space_size(s[row])])
       t.append(t[row-2] - (q[row]*t[row-1]))
       a.append(b[row])
       a_space.append(space[space_size(a[row + 1])])
       b.append(r[row])
       b_space.append(space[space_size(b[row + 1])])
       row = row + 1

print("a", space[6], "b", space[6], "r", space[6], "q", space[6], "s", space[6], "t")
print(a_space[0], b_space[0], r_space[0], q_space[0], s[0], s_space[0], t[0])
print(a_space[1], b_space[1], r_space[1], q_space[1], s[1], s_space[1], t[1])
for i in range(2, row):
       print(a[i], a_space[i], b[i], b_space[i], r[i], r_space[i], q[i], q_space[i], s[i], s_space[i], t[i])
