// Sieve of Eratosthenes implementation
// Joseph Liccini

import Cocoa

func isPrime(var target: Int) -> Bool
{
    if target == 0 || target == 1
    {
        return false
    }
    var sieve = [Bool](count: target+1, repeatedValue: true)
    
    // prepare the sieve
    sieve[0] = false
    sieve[1] = false
    
    for var i = 2; i < sieve.count; ++i
    {
        if sieve[i]
        {
            for var j = i*i; j < sieve.count; j += i
            {
                sieve[j] = false
            }
        }
    }
    
    return sieve[target]
}

var randomNumbers = [3, 10, 22, 33, 9, 10, 7, 1, 0, 123, 71, 5, 13]

for i in randomNumbers
{
    println("\(i) is prime?: \(isPrime(i))")
}
