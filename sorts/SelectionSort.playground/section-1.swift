// Selection Sort
// Karan Goel

var randomNumbers = [42, 12, 88, 62, 63, 56, 1, 77, 88, 97, 97, 20, 45, 91, 62, 2, 15, 31, 59, 5]

func selectionSort(nums: Int[]) {
    
    var i:Int, j:Int, first:Int, temp:Int
    
    for i = nums.count - 1; i > 0; i-- {
        
        first = 0
        
        for j = 1; j <= i; j++ {
            
            if nums[j] > nums[first] {
                first = j
            }
            
        }
        
        temp = nums[first]
        nums[first] = nums[i]
        nums[i] = temp
        
    }
    
}

selectionSort(randomNumbers)

println(randomNumbers)
