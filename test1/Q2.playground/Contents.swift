//3. An array is defined to be inertial if the following conditions hold:
//a. it contains at least one odd value
//b. the maximum value in the array is even
//c. every odd value is greater than every even value that is not the maximum value.
//So {11, 4, 20, 9, 2, 8} is inertial because
//a. it contains at least one odd value
//b. the maximum value in the array is 20 which is even c. the two odd values (11 and 9) are greater than all the
//even values that are not equal to 20 (the maximum), i.e., (4, 2, 8}.
//However, {12, 11, 4, 9, 2, 3, 10} is not inertial because it fails condition (c), i.e., 10 (which is even) is greater 9 (which is odd) but 10 is not the maximum value in the array.

import UIKit
import XCTest

func is121Array(a: [Int]) -> Int {
//    print(a)
    let start = false
    let end = false
    let length = a.count / 2 + a.count % 2
    print("======== calculation =========")
    var sum = [Int]()
    var lowCount = 0
    var isTop = false
    var notGoodArray = false
    for i in 0..<length {
        sum.append(a[i] + a[a.count - 1 - i])
        if(sum[i] != 2 && sum[i] != 4) {
            notGoodArray = true
        }
//        if(sum == 2 && !isTop) { lowCount += 1 }
//        if(sum == 4) isTop = true
    }
    print(b)
    print("------------------------------")
    print(c)
    print("------------------------------")
    print(sum)
    print("==============================")
    if(notGoodArray){ return 0 }
    return 1
}


let dataSet = [
    [1,2,1],
    [1,1,2,2,2,1,1],
    [1,1,2,2,2,1,1,1],
    [1,1,2,1,2,1,1],
    [1,1,1,2,2,2,1,1,1,3],
    [1,1,1,1,1,1],
    [2,2,2,1,1,1,2,2,2,1,1],
    [1,1,1,2,2,2,1,1,2,2],
    [2,2,2]
]

dataSet.forEach { (data) in
    let result = is121Array(a: data)
    print("result: \(result)")
}
