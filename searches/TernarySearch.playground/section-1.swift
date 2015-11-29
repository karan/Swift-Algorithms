// Joseph Liccini
// Ternary Search

import UIKit

func ternarySearch(arr: [Int], target: Int, lower: Int, higher: Int) -> Int {
    
    if lower > higher {
        return -1
    }
    
    let mid1 = lower + (higher - lower) / 3
    let mid2 = lower + 2 * (higher - lower) / 3
    
    if target == arr[mid1] {
        return mid1
    }
    else if target < arr[mid1] {
        return ternarySearch(arr, target: target, lower: lower, higher: mid1-1)
    }
    else if target == arr[mid2] {
        return mid2
    }
    else if target > arr[mid2] {
        return ternarySearch(arr, target: target, lower: mid2+1, higher: higher)
    }
    else {
        return ternarySearch(arr, target: target, lower: mid1+1, higher: mid2-1)
    }
}

/* Begin Program */
var randomNumbers = [-30, -1, 0, 9, 10, 11, 12, 17, 20 , 29, 39, 40, 55, 62, 300, 1000]

var targets = [-30, -1, 10, 300, 1000, 55, 8]

for target in targets {
     var index = ternarySearch(randomNumbers, target: target, lower: 0, higher: randomNumbers.count - 1)
  
    if index != -1 {
        print("Value: \(target) was found at index: \(index)")
    }
    else {
        print("Value: \(target) was unable to be found...");
    }
}
