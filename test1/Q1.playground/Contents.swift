import UIKit
import XCTest

func getExponent(n: Int, p: Int) -> Int {
    if(p <= 1) { return -1 }
    var count = 0;
    var multi = p;
    while(n % multi == 0){
        multi = multi * p
        count += 1
    }
    return count
}


let dataSet = [
    [27, 3],
    [28, 3],
    [280, 7],
    [-250, 5],
    [18, 1],
    [128, 4]
]

dataSet.forEach { (data) in
    
    let result = getExponent(n: data[0], p: data[1])
    print("n: \(data[0]), p: \(data[1]), return: \(result)")
}
