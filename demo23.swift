struct Point {
    var x: Int
    var y: Int

    func distance(to point: Point) -> Double {
        let dx = Double(x - point.x)
        let dy = Double(y - point.y)
        return (dx * dx + dy * dy).squareRoot()
    }
}

var p1 = Point(x: 0, y: 0)
let p2 = Point(x: 3, y: 4)
let distance = p1.distance(to: p2)
print(distance)  // 输出 5.0

p1.x = 10  // 可以修改 p1 的属性
// p2.x = 10  // 编译错误，因为 p2 是常量