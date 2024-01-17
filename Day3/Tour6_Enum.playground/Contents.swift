import Foundation

enum Rank: Int { //RawValue
    case ace = 1
    case two, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king
    func desc() -> String {
//        if self == .ace { return "Ace" }
//        if self == .two { return "2" }
        switch self {
        case .ace, .jack, .queen, .king:
            return "\(self)"
        default:
            return "\(self.rawValue)"
        }
    }
}

let r1: Rank = Rank.ace
let r2: Rank = Rank.jack

let r3 = Rank.king
var r4: Rank = .queen
//let r5 = .jack

r4 = .jack

Rank.four.desc()
r4.desc()

class XXX {
    func mem_f() {
        
    }
    static func class_f() -> XXX {
        return XXX()
    }
}

let x = XXX()
x.mem_f()

XXX.class_f()

func kkk(arg: XXX) {
    
}

kkk(arg: x)
kkk(arg: XXX.class_f())
kkk(arg: .class_f())

var a = 10
var b = a

b = 20

var nn = 10
let nn2 = nn.increasedValue(amount: 7)


nn.increase(amount: 5)

let a1 = [ 1,32,432,32]
var a2 = [ 3,32,32,32,4]

a1.sorted()
a2.sorted()
a2.sort()
a1.sort()

Optional<Int>


