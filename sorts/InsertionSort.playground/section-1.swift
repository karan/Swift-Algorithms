// Insertion Sort
// Karan Goel

var randomNumbers = [42, 12, 88, 62, 63, 56, 1, 77, 88, 97, 97, 20, 45, 91, 62, 2, 15, 31, 59, 5]

func insertionSort(var nums: [Int]) {
    
    for i in 1..<nums.count {
        
        let x = nums[i]
        
        var j = i
        
        while j > 0 && nums[j-1] > x {
            
            nums[j] = nums[j-1]
            
            j--
            
        }
        
        nums[j] = x
        
    }
    
}

// pass by reference
insertionSort(randomNumbers)

print(randomNumbers)
