enum Rank: Int {
    case ace = 1
    case two, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king
    func simpleDescription() -> String {
        switch self {
        case .ace:
            return "ace"
        case .jack:
            return "jack"
        case .queen:
            return "queen"
        case .king:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
}
let ace = Rank.ace
let aceRawValue = ace.rawValue
print(ace, aceRawValue)
let aceDescription = ace.simpleDescription()
print(aceDescription)

let two = Rank.two
let twoRawValue = two.rawValue
print(two, twoRawValue)

var threeDescription:String
if let convertedRank = Rank(rawValue: 11) {
    threeDescription = convertedRank.simpleDescription()
    print(threeDescription)
}