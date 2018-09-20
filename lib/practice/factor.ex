defmodule Practice.Factor do
    def factor(x) do
        isPrime(x)
    end


    def isPrime(x) do
       if x <= 1 do 
        false 
       end

       i = 2
       unless (i >= :math.sqrt(x)) do
            if (rem(x, i) == 0) do
                false  
            else 
                true
            end
            i = i + 1
        end
        
    end
end