// Stack
// Karan Goel

struct Stack<T> {
    
    var elems = [T]()
    
    mutating func push(elem: T) {
        elems.append(elem)
    }
    
    mutating func pop() -> T {
        return elems.removeLast()
    }
    
    func peek() -> T {
        return elems[elems.endIndex-1]
    }
    
    var count: Int {
        return elems.count
    }
    
}

var int_stack = Stack<Int>()

int_stack.push(1)
int_stack.push(4)
int_stack.push(5)
int_stack.push(-11)

int_stack

print(int_stack.peek())

int_stack

int_stack.pop()
int_stack.pop()
int_stack.pop()
int_stack.pop()

int_stack
