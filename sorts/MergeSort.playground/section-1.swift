// MergeSort Implementation
// Joseph Liccini

import Cocoa

func mergeSort(inout arr: [Int], var lowIndex: Int, var highIndex: Int)
{
    if lowIndex < highIndex
    {
        var midIndex = (lowIndex + highIndex) / 2
        mergeSort(&arr, lowIndex, midIndex)
        mergeSort(&arr, midIndex+1, highIndex)
        
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
        
        var remaining = midIndex - left
        for var i = 0; i <= remaining; ++i
        {
            arr[cur + i] = helper[left + i]
        }
    }
}

/* Begin Program */
var randomNumbers: [Int] = [ 4, 11, 3, 5, 63, 3, 2000, 89, 2, 36, 22, 67, 12,1, 13, -5, 0]

println("Before Sort: ")
println(randomNumbers)

mergeSort(&randomNumbers, 0, randomNumbers.count-1)

println("After Sort: ")
println(randomNumbers)