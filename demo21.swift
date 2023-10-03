// 泛型

func makeArray<Item>(repeating item: Item, numberOfTimes: Int) -> [Item] {
    var result: [Item] = []
    for _ in 0..<numberOfTimes {
        result.append(item)
    }
    return result
}
print(makeArray(repeating: "knock", numberOfTimes: 4))

enum OptionalValue<Wrapped> {
    case none
    case some(Wrapped)
}
var possibleInteger: OptionalValue<Int> = .none
switch possibleInteger {
case .none:
    print("No value")
case .some(let wrappedValue):
    print(wrappedValue)  // Prints "100"
}
possibleInteger = .some(100)
switch possibleInteger {
case .none:
    print("No value")
case .some(let wrappedValue):
    print(wrappedValue)  // Prints "100"
}
