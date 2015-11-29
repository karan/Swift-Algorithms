// Binary Search
// Piper Chester

func binarySearch(numbers:[Int], target: Int){
    // Initialize clamps
    var left = numbers.startIndex
    var right = numbers.endIndex
    var midpoint = numbers.count / 2
    var iterations = 0

    for _ in left...right {
        iterations += 1
        if midpoint < target {
            print("Low: \(midpoint) < \(target)")
            left = midpoint
            midpoint = (right + left) / 2
        } else if midpoint > target {
            print("High: \(midpoint) > \(target)")
            right = midpoint
            midpoint = (right + left) / 2
        } else {
            print("Target, \(target) acquired after \(iterations) iterations")
            break
        }
    }
}

var numbers:[Int] = []
for i in 0...1000 {
    numbers.insert(i, atIndex: i)
}

binarySearch(numbers, target: 999)
