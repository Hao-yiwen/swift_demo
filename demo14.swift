enum Rank: Int {
    case ace = 1, two, three, four, five, six, seven, eight, nine, ten, jack, queen, king
    
    func simpleDescription() -> String {
        switch self {
        case .ace: return "ace"
        case .jack: return "jack"
        case .queen: return "queen"
        case .king: return "king"
        default: return String(self.rawValue)
        }
    }
}

enum Suit: String {
    case spades = "spades"
    case hearts = "hearts"
    case diamonds = "diamonds"
    case clubs = "clubs"
    
    func simpleDescription() -> String {
        return self.rawValue
    }
}

struct Card {
    var rank: Rank
    var suit: Suit
    
    func simpleDescription() -> String {
        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }
    
    static func createDeck() -> [Card] {
        var deck = [Card]()
        for suit in [Suit.spades, Suit.hearts, Suit.diamonds, Suit.clubs] {
            for rankValue in 1...13 {
                if let rank = Rank(rawValue: rankValue) {
                    let card = Card(rank: rank, suit: suit)
                    deck.append(card)
                }
            }
        }
        return deck
    }
}

// 创建一副完整的扑克牌
let fullDeck = Card.createDeck()
// 输出每张牌的描述
for card in fullDeck {
    print(card.simpleDescription())
}
