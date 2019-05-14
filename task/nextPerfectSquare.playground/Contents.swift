// Write a function named nextPerfectSquare that returns the first perfect square that is greater than its integer argument.
// A perfect square is an integer that is equal to some integer squared. For example 16 is a perfect square because 16 = 4 * 4.
// However 15 is not a perfect square because there is no integer n such that 15 = n * n.

// The signature of the function is
//    int nextPerfectSquare(int n)

// Example:
// |  n  | next perfect square  |
// |  6  | 9                    |
// | 36  | 49                   |
// | 0   | 1                    |
// |-5   | 0                    |

import Foundation

func nextPerfectSquare(n: Int) -> Int {
    var nextSquare = 0;
    if(n >= 0){
        var baseInt = Int(sqrt(Double(n)))
        baseInt += 1
        nextSquare = Int(pow(Double(baseInt), 2.0))
    }
    return nextSquare
}


print(nextPerfectSquare(n: 6))
print(nextPerfectSquare(n: 36))
print(nextPerfectSquare(n: 0))
print(nextPerfectSquare(n: -5))

