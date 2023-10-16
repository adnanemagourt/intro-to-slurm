def discriminant(a, b, c):
    return b*b - 4*a*c

a, b, c = [float(x) for x in input("").split()]
print(a, b, c, discriminant(a, b, c))