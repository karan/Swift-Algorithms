// QuickSelect Algorithm
// AKA nth_element (comparable to std::nth_element from cpp stl)
// n is zero-indexed, i.e. you can search of the 0th element

import UIKit

func swap(inout number1: Int, inout number2: Int) {
    let temp = number1
    number1 = number2
    number2 = temp
}

func quickSelect(n: Int, inout arr: [Int], low: Int, high: Int) -> Int {
    
    let pivot = arr[low]
    
    // Move Pivot to the end of the array
    swap(&arr[low], &arr[high])
    var selector = low
    
    for var i = low; i < high; ++i {
        if arr[i] < pivot {
            swap(&arr[i], &arr[selector])
            ++selector
        }
    }
    // Move the Pivot back into place
    swap(&arr[high], &arr[selector])
    
    if selector == n {
        return arr[selector]
    }
    else if selector < n {
        return quickSelect(n, arr: &arr, low: selector+1, high: high)
    }
    else {
        return quickSelect(n, arr: &arr, low: low, high: selector-1)
    }
}

/* Begin Program */
var n: Int
var element: Int
var randomNumbers = [9, -1, 8, 2, 4, 100, -9, 0, 2, 5, 55, 13,74, 3]

n = 3
element = quickSelect(n, arr: &randomNumbers, low: 0, high: randomNumbers.count - 1)
print("The nth element, (n = \(n)) is: \(element)")

randomNumbers = [9, -1, 8, 2, 4, 100, -9, 0, 2, 5, 55, 13,74, 3]
n = 0
element = quickSelect(n, arr: &randomNumbers, low: 0, high: randomNumbers.count - 1)
print("The nth element, (n = \(n)) is: \(element)")

randomNumbers = [9, -1, 8, 2, 4, 100, -9, 0, 2, 5, 55, 13,74, 3]
n = 5
element = quickSelect(n, arr: &randomNumbers, low: 0, high: randomNumbers.count - 1)
print("The nth element, (n = \(n)) is: \(element)")

randomNumbers = [9, -1, 8, 2, 4, 100, -9, 0, 2, 5, 55, 13,74, 3]
n = randomNumbers.count - 1
element = quickSelect(n, arr: &randomNumbers, low: 0, high: randomNumbers.count - 1)
print("The nth element, (n = \(n)) is: \(element)")
