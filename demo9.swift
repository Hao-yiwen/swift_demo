// 闭包
var number = 7
func makeIncrementer() -> (() -> Int) {
    func addOne() -> Int {
        number += 1
        return number
    }
    return addOne
}

var increament = makeIncrementer()

print(increament())
print(increament())
print(increament())
print(increament())
print(increament())
print(increament())
print("--------")
print(number)

// 函数作为另一个参数传入

func hasAnyMathces(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return  false
}

func lessThanTen(number: Int) -> Bool {
    return number < 10
}
var numbers = [20, 19, 7, 12]
print(hasAnyMathces(list: numbers, condition: lessThanTen))