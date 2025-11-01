long Q(long x)
{
    long val = x;
    if (x < 0)
        val = x + 10;
    return val;
}   
long P(long x, long y)
{
    long u = Q(y);
    long v = Q(x);
    return u + v;
}