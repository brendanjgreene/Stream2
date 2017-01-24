class Fraction:
    def __init__(self, numerator, denominator):
        self.num = int(numerator / gcd(abs(numerator), abs(denominator)))
        self.den = int(denominator / gcd(abs(numerator), abs(denominator)))
        if self.den < 0:
            self.den = abs(self.den)
            self.num = -1 * self.num
        elif self.den == 0:
            raise ZeroDivisionError

    def __add__(self, other):
        num = self.num * other.den + self.den * other.num
        den = self.den * other.den
        return Fraction(num, den)

    def __sub__(self, other):
        num = self.num * other.den - self.den * other.num
        den = self.den * other.den
        return Fraction(num, den)

    def __mul__(self, other):
        return Fraction(self.num * other.num, self.den * other.den)

    def __div__(self, other):
        return Fraction(self.num * other.den, self.den * other.num)

    def __repr__(self):
        return '%s/%s' % (self.num, self.den)