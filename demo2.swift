let nickName: String? = nil
let fullName: String = "John Appleseed"
let informalGreeting = "Hi \(nickName ?? fullName)"
print(informalGreeting)

if let nickName {
	print("Hey, \(nickName)")
}