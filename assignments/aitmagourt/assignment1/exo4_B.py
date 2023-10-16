def roots(a, b, c, discriminant):
    return (-b - (discriminant**0.5)) / 2*a, (-b +(discriminant**0.5)) / 2*a

a, b, c, d = [float(x) for x in input("").split()]

print(roots(a, b, c, d))
