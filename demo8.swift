var y = 10

func returnFifteen() -> Int {
    func add() {
        y += 5
    }
    add()
    return y
}

let fun = returnFifteen
fun()
let num = fun()
print(num)