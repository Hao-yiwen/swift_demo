var numbers = [1,2,3,4,5]

print(numbers.map({
    (number: Int) -> Int in
    let result = 3 * number
    return result
}))

func triple(_ number: Int) -> Int {
    return 3 * number
}
print(numbers.map(triple))
