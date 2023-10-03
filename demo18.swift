// 定义一个协议
protocol ExampleProtocol {
    var simpleDescription: String { get }
}

// 定义一个遵守 ExampleProtocol 协议的类
class SimpleClass: ExampleProtocol {
    var simpleDescription: String = "A very simple class."
    var anotherProperty: Int = 69105
}

// 创建 SimpleClass 的一个实例
let a = SimpleClass()

// 使用 ExampleProtocol 协议作为类型创建一个常量，然后将 a 的引用赋给它
let protocolValue: ExampleProtocol = a

// 现在，protocolValue 是一个遵守 ExampleProtocol 协议的引用，它指向 a
// 你可以通过 protocolValue 访问在 ExampleProtocol 协议中定义的属性和方法
print(protocolValue.simpleDescription)  // 输出 "A very simple class."

// 但是，你不能通过 protocolValue 访问在 SimpleClass 中定义但不在 ExampleProtocol 协议中定义的属性和方法
// 下面的代码会导致编译错误
print(a.anotherProperty)
// print(protocolValue.anotherProperty)
