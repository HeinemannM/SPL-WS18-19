slu = "slumdog"
mil = "millionare"

print(slu)
print(mil)

print(paste(slu, mil))
#2
a = c(1,3,5,7,11,13,17,19)
a = t(a)
a
#3
b = 2^(1:8);b
#4
c = (1:8)^2;c
#5
which(c == b)
#6
M.c = cbind(b,c)
dim(M.c)
print(M.c[7])
#7
M.r = rbind(a, t(b))
rownames(M.r) = letters[1:2]
colnames(M.r) = LETTERS[19:26]
M.r
#8
M.r[, -which(colnames(M.r) == "W")]
#9
M.r[ M.r > 12]
#10
x1 = seq(-3,3, by = .5)
exp(-x1)
length(x1)
#11
d = 1:100
e = rep(7,100)
#12
D = matrix(d, nrow = 10, ncol = 10)
v = 1/ (1:100)
E = matrix(v, 10, 10, byrow = TRUE) 
#or:
E = t(D^(-1))
#13
D+E
D-E
D%%E
D*E
#14
P = D%%E
diag(P)
#15
x = rnorm(6) * c(10,0, 1e-15, 10, 1000,100000)
y1 = x^5 + x^4 + x^3 + x^2 + x + 1
y2 = 1 + x*( 1 + x*( 1 + x*( 1 + x*( 1 + x))))
y2
y1
max(abs(y2 - y1))

#share excercise solutions on SPL wise 2018"
