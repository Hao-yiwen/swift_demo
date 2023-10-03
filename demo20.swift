// defer

var fridgeIsOpen = false
let fridgeContent = ["milk", "eggs", "leftovers"]

func fridgeContains(_ food: String) -> Void {
	fridgeIsOpen = true
	defer {
		fridgeIsOpen = false
	}
	
	fridgeContent.contains(food)
	
}
fridgeContains("banana")
print(fridgeIsOpen)