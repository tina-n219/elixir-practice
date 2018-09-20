defmodule Practice.Factor do
    def factor(x) do
        i = 2
        factor(x, i, [])
    end

    def factor(x, i, list) when x >= i do
        if (isPrime(i) && (rem(x, i) == 0)) do
            factor(div(x, i), i, [i | list])
        else 
            factor(x, i + 1, list)
        end
    end

    def factor(x, i, list) when x <= 1 do
    # when we have reduced the initial value down to one, 
    # return the list of prime factors
        Enum.reverse(list)
    end
#---------------------------------------------------------------------------------------------
    def isPrime(x) do
        # where i will try and create a for loop type function
       isPrime(2,:math.sqrt(x), true, x)
    end

    def isPrime(i, limit, youPrimeHuh, val) when i <= limit do
        # recurse???
        # recurse to a new i value, update if the value is still prime
        # to be prime, val must always have a remainder when divided by i
        isPrime(i + 1, limit, ((rem(val, i) != 0) && youPrimeHuh) , val)
    end

    # Break case:
    # when you have finished with the for loop, return whether or not val was not 
    # evenly divisable by any i
    def isPrime(i, limit, youPrimeHuh, val) when i > limit do
        youPrimeHuh
    end
end