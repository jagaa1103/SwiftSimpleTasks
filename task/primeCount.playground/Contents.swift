//Write a function named primeCount with signature int primeCount(int start, int end);
//The function returns the number of primes between start and end inclusive.
//Recall that a prime is a positive integer greater than 1 whose only integer factors are 1 and itself.

//Examples
//  ---------------------------------------------------------------------------------------------------------------------
//  | If start is   | and end is    | retur n   |  reason                                                               |
//  ---------------------------------------------------------------------------------------------------------------------
//  |   10          | 30            |   6       | The primes between 10 and 30 inclusive are 11, 13, 17, 19, 23 and 29  |
//  |   11          | 29            |   6       | The primes between 11 and 29 inclusive are 11, 13, 17, 19, 23 and 29  |
//  |   20          | 22            |   0       | 20, 21, and 22 are all non-prime                                      |
//  |   1           | 1             |   0       | By definition, 1 is not a prime number                                |
//  |   5           | 5             |   1       | 5 is a prime number                                                   |
//  |   6           | 2             |   0       | start must be less than or equal to end                               |
//  |   -10         | 6             |   3       | primes are greater than 1 and 2, 3, 5 are prime                       |
//  ---------------------------------------------------------------------------------------------------------------------


import Foundation

func primeCount(start: Int, end: Int) -> Int {
    var count = 0
    if(start > end) { return 0 }
    for i in start...end {
        if(i > 1 && isPrime(number: i)) {
            count += 1
        }
    }
    return count
}

func isPrime(number: Int) -> Bool {
    var flag = true
    for i in 2..<number {
        if((number % i) == 0) {
            flag = false
            break
        }
    }
    return flag
}

let list = [
    [10, 30],
    [11, 29],
    [20, 22],
    [1, 1],
    [5, 5],
    [6, 2],
    [-10, 6]
]
list.map{
    let result = primeCount(start: $0[0], end: $0[1])
    print("\($0[0]), \($0[1]) | count: \(result)")
}

