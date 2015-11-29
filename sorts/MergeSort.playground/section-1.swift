// MergeSort Implementation
// Joseph Liccini

import Cocoa

func mergeSort(inout arr: [Int], lowIndex: Int, highIndex: Int)
{
    if lowIndex < highIndex
    {
        let midIndex = (lowIndex + highIndex) / 2
        mergeSort(&arr, lowIndex: lowIndex, highIndex: midIndex)
        mergeSort(&arr, lowIndex: midIndex+1, highIndex: highIndex)
        
        var helper: [Int] = [Int](count: arr.count, repeatedValue: 0)
        
        for var i = lowIndex; i <= highIndex; ++i
        {
            helper[i] = arr[i]
        }
        
        var left = lowIndex
        var right = midIndex + 1
        var cur = lowIndex
        
        while left <= midIndex && right <= highIndex
        {
            if helper[left] < helper[right]
            {
                arr[cur] = helper[left]
                ++left
            }
            else
            {
                arr[cur] = helper[right]
                ++right
            }
            ++cur
        }
        
        let remaining = midIndex - left
        for var i = 0; i <= remaining; ++i
        {
            arr[cur + i] = helper[left + i]
        }
    }
}

/* Begin Program */
var randomNumbers: [Int] = [ 4, 11, 3, 5, 63, 3, 2000, 89, 2, 36, 22, 67, 12,1, 13, -5, 0]

print("Before Sort: ")
print(randomNumbers)

mergeSort(&randomNumbers, lowIndex: 0, highIndex: randomNumbers.count-1)

print("After Sort: ")
print(randomNumbers)
