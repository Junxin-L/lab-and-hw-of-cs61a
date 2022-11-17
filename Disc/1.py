def skip_mul(n):
    """Return the product of n * (n - 2) * (n - 4) * ...

    >>> skip_mul(5) # 5 * 3 * 1
    15
    >>> skip_mul(8) # 8 * 6 * 4 * 2
    384
    """
    #if n == 2:
    if n <= 2:
        return n
    else:
        return n * skip_mul(n - 2)

def is_prime(n):
    """Returns True if n is a prime number and False otherwise.

    >>> is_prime(2)
    True
    >>> is_prime(16)
    False
    >>> is_prime(521)
    True
    """
    "*** YOUR CODE HERE ***"
    def check_prime(m):
        if m >= n / 2:
            return 0
        else:
            if n % m:
                return check_prime(m + 1)
            else:
                return 1 + check_prime(m + 1)
    return not check_prime(2)

def merge(n1, n2):
    """ Merges two numbers by digit in decreasing order
    >>> merge(31, 42)
    4321
    >>> merge(21, 0)
    21
    >>> merge (21, 31) 
    3211
    """
    "*** YOUR CODE HERE ***"
    if n1 == 0:
        return n2
    elif n2 == 0:
        return n1
    else:
        res1, res2 = n1 % 10, n2 % 10
        if res1 < res2:
            return res1 + 10 * merge(n1 // 10, n2)
        else:
            return res2 + 10 * merge(n1, n2 // 10)


if __name__ == '__main__':
    import doctest
    doctest.testmod(verbose=True)