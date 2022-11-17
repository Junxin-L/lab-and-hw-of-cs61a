def two_of_three(x, y, z):
    """Return a*a + b*b, where a and b are the two smallest members of the
    positive numbers x, y, and z.

    >>> two_of_three(1, 2, 3)
    5
    >>> two_of_three(5, 3, 1)
    10
    >>> two_of_three(10, 2, 8)
    68
    >>> two_of_three(5, 5, 5)
    50
    """
    #return min(x,y,z)*min(x,y,z)+(x*y*z//(min(x,y,z)*max(x,y,z)))*(x*y*z//(min(x,y,z)*max(x,y,z)))
    return min(x,y,z)**2+(x*y*z//(min(x,y,z)*max(x,y,z)))**2

if __name__ == '__main__':
    import doctest
    doctest.testmod(verbose=True)